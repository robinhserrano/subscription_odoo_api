import 'package:subscription_odoo_api/models/aws_filter_subs_model.dart';
import 'package:subscription_odoo_api/models/aws_sales_quotations_model.dart';
import 'package:subscription_odoo_api/models/odoo_contacts_model.dart';
import 'package:subscription_odoo_api/models/odoo_state_id_model.dart';
import 'package:dio/dio.dart';
import 'package:subscription_odoo_api/env.dart';
import 'package:subscription_odoo_api/models/sales_record_model.dart';
import 'package:subscription_odoo_api/repo/odoo_repository.dart';
import 'package:subscription_odoo_api/repo/repository.dart';
import 'package:odoo_rpc/odoo_rpc.dart';
import 'package:intl/intl.dart';

Future<void> main() async {
  OdooRepository odooRepo = OdooRepository(client: OdooClient(DB_URL));

  try {
    //Auth login odoo
    var totalStart = DateTime.now();
    var loginStart = DateTime.now();
    print('logging in...');
    await odooRepo.login(
      DB_NAME,
      USERNAME,
      PASSWORD,
    );
    var loginEnd = DateTime.now();
    print(
        '_ Login Success! : ${loginEnd.difference(loginStart).inMilliseconds}');

    //Contacts
    var contactsStart = DateTime.now();
    print('fetching contacts...');
    var contacts = await odooRepo.fetchContacts();

    var allContactsWithParent = [];

    for (var contact in contacts) {
      if (contact.parentId?.id != null) {
        allContactsWithParent.add(contact);
      }
    }

    var contactsEnd = DateTime.now();
    if ((contacts).isNotEmpty) {
      await saveAwsContacts(contacts);
    }

    print(
        '_ Fetch contacts Success! : ${contactsEnd.difference(contactsStart).inMilliseconds}');
    //Contacts

    var stateIdStart = DateTime.now();
    print('fetching stateIds...');
    var stateIds = await odooRepo.getStateIds();
    var stateIdEnd = DateTime.now();
    if ((stateIds ?? []).isNotEmpty) {
      await saveAwsStateIds(stateIds ?? []);
    }

    print(
        '_ Fetch stateIds Success! : ${stateIdEnd.difference(stateIdStart).inMilliseconds}');

    var accSubsStart = DateTime.now();
    print('fetching accSubs...');
    var accSubs = await odooRepo.getAccounting();
    var accSubsEnd = DateTime.now();

    print(
        '_ Fetch accSubs Success! : ${accSubsEnd.difference(accSubsStart).inMilliseconds}');

    var subsStart = DateTime.now();
    print('fetching subs...');
    var subs = await odooRepo.getSubscriptions();
    var subsEnd = DateTime.now();
    print(
        '_ Fetch subs Success! : ${subsEnd.difference(subsStart).inMilliseconds}');

    List<AwsFilterSubs> parsedAccSubs = [];
    List<AwsFilterSubs> parsedSubs = [];

    List<AwsFilterSubs> nullAccSubs = [];
    List<AwsSalesQuotations> salesQuotations = [];
    var lele;
    try {
      var lele = accSubs
          .firstWhere((e) => e.partnerId.displayName == 'Josh Cumberland');
    } catch (e) {
      print(e);
    }

    List<String> activitySummary = [];

    for (var subs in accSubs) {
      final accSub = AwsFilterSubs(
        invoiceNumber: subs.name,
        salesOrderNo: subs.invoiceOrigin,
        customerName: subs.partnerId.displayName,
        invoiceDate: subs.invoiceDate,
        paymentStatus: subs.paymentState,
        address: (subs.partnerId.contactAddress ?? '').toString(),
        stateId: int.tryParse((subs.partnerId.stateId ?? '').toString()),
        activitySummary: subs.activitySummary,
        phone: (subs.partnerId.phone ?? '').toString(),
        email: (subs.partnerId.email ?? '').toString(),
        dueDate: subs.activityDateDeadline,
        category: null,
      );

      if (subs.activityDateDeadline != null) {
        parsedAccSubs.add(accSub);
      }

      activitySummary.add(subs.activitySummary);
    }

    for (var subs in subs) {
      parsedSubs.add(AwsFilterSubs(
          invoiceNumber: subs.invoiceId?.name,
          salesOrderNo: subs.name,
          customerName: subs.partnerId.displayName,
          invoiceDate: subs.invoiceId?.date,
          paymentStatus: subs.invoiceId?.paymentState,
          address: (subs.partnerId.contactAddress ?? '').toString(),
          stateId: int.tryParse((subs.partnerId.stateId ?? '').toString()),
          activitySummary: subs.activitySummary,
          phone: (subs.partnerId.phone ?? '').toString(),
          email: (subs.partnerId.email ?? '').toString(),
          dueDate: subs.nextInvoiceDate,
          category: 'Subscription'));
    }

    await saveAwsFilterSubs([...parsedAccSubs, ...parsedSubs]);

    // Sales Fetch from Odoo
    var allSalesStart = DateTime.now();
    print('fetching sales...');
    var allSales = await odooRepo.fetchAllSales();
    for (var quotation in allSales) {
      salesQuotations.add(AwsSalesQuotations(
          id: quotation.id,
          salesOrderNo: quotation.name,
          customerName: quotation.partnerId?.displayName,
          address: quotation.partnerId?.contactAddress,
          orderLine: quotation.orderLine));
    }

    await saveAwsBulkStoreOrderLine([...salesQuotations]);

    await saveAwsBulkStoreSalesOrder([...salesQuotations]);

    var allSalesEnd = DateTime.now();
    print(
        '_ Fetch Sales Success! : ${allSalesEnd.difference(allSalesStart).inMilliseconds}');

    // var setActivitySummary = activitySummary.toSet().toList();
    // var tempActivitySummary = [];
    // List<String> activitySummaries = [];

    // for (var item in setActivitySummary) {
    //   String trimmedText = item.replaceAll(RegExp(r"\s+"), "");
    //   if (!tempActivitySummary.contains(trimmedText)) {
    //     activitySummaries.add(item);
    //   }
    // }

    // saveActivitySummary(activitySummaries);

    var totalEnd = DateTime.now();
    print('_ Total Time: ${totalEnd.difference(totalStart).inMilliseconds}');
  } catch (e) {
    print(e);
  }
}

Future<bool> saveAwsFilterSubs(
  List<AwsFilterSubs> filterSubs,
  // void Function(double) onProgress,
) async {
  Repository repo = Repository(client: Dio());
  final totalSubs = filterSubs.length;

  try {
    final DateFormat dateFormat = DateFormat('MM/dd/yyyy HH:mm:ss');

    final dataList = <Map<String, dynamic>>[];

    for (final subs in filterSubs) {
      dataList.add({
        'invoice_number': subs.invoiceNumber,
        'sales_order_no': subs.salesOrderNo,
        'customer_name': subs.customerName,
        'invoice_date': subs.invoiceDate?.toIso8601String(),
        'payment_status': subs.paymentStatus,
        'address': subs.address,
        'state_id': subs.stateId,
        'activity_summary': subs.activitySummary,
        'phone': subs.phone,
        'email': subs.email,
        'due_date': subs.dueDate?.toIso8601String(),
        'category': subs.category,
        // subs.dueDate != null ? dateFormat.format(subs.dueDate!).toString() : null,
      });
    }

    const chunkSize = 500;
    var currentChunk = <Map<String, dynamic>>[];

    for (final subs in dataList) {
      currentChunk.add(subs);
      if (currentChunk.length == chunkSize) {
        await repo.saveAwsBulkFilterSubs(currentChunk);
        final progress = (currentChunk.length / totalSubs) * 100;
        print(progress);
        print("500 ZXY");
        // onProgress(progress);
        currentChunk = [];
      }
    }

    if (currentChunk.isNotEmpty) {
      await repo.saveAwsBulkFilterSubs(currentChunk);
      final progress = (totalSubs / totalSubs) * 100;
      print(progress);
      print("Remaining ZXY");
      // onProgress(progress);
    }

    return true;
  } catch (e) {
    return false;
  }
}

Future<bool> saveAwsBulkStoreOrderLine(
  //ORDER LINE
  List<AwsSalesQuotations> sales,
  // void Function(double) onProgress,
) async {
  Repository repo = Repository(client: Dio());
  final totalSubs = sales.length;

  try {
    final dataList = <Map<String, dynamic>>[];
    for (final salesOrder in sales) {
      dataList.add({
        'sales_order_no': salesOrder.salesOrderNo,
        'order_line': salesOrder.orderLine != null
            ? salesOrder.orderLine!
                .map(
                  (e) => {
                    'product': e.productTemplateId?.displayName ?? '',
                    'description': e.name,
                    'quantity': e.productUomQty,
                  },
                )
                .toList()
            : [],
      });
    }

    const chunkSize = 500;
    var currentChunk = <Map<String, dynamic>>[];

    for (final salesOrder in dataList) {
      currentChunk.add(salesOrder);
      if (currentChunk.length == chunkSize) {
        await repo.saveAwsBulkStoreOrderLine(currentChunk);
        final progress = (currentChunk.length / totalSubs) * 100;
        // onProgress(progress);
        currentChunk = [];
      }
    }

    if (currentChunk.isNotEmpty) {
      await repo.saveAwsBulkStoreOrderLine(currentChunk);
      final progress = (totalSubs / totalSubs) * 100;
      // onProgress(progress);
    }

    return true;
  } catch (e) {
    return false;
  }
}

Future<bool> saveAwsBulkStoreSalesOrder(
  //SALES ORDER
  List<AwsSalesQuotations> sales,
  // void Function(double) onProgress,
) async {
  Repository repo = Repository(client: Dio());
  final totalSubs = sales.length;

  try {
    final dataList = <Map<String, dynamic>>[];
    for (final salesOrder in sales) {
      dataList.add({
        'sales_order_no': salesOrder.salesOrderNo,
        'customer_name': salesOrder.customerName,
        'address': salesOrder.address,
      });
    }

    const chunkSize = 500;
    var currentChunk = <Map<String, dynamic>>[];

    for (final salesOrder in dataList) {
      currentChunk.add(salesOrder);
      if (currentChunk.length == chunkSize) {
        await repo.saveAwsBulkStoreSalesOrder(currentChunk);
        final progress = (currentChunk.length / totalSubs) * 100;
        // onProgress(progress);
        currentChunk = [];
      }
    }

    if (currentChunk.isNotEmpty) {
      await repo.saveAwsBulkStoreSalesOrder(currentChunk);
      final progress = (totalSubs / totalSubs) * 100;
      // onProgress(progress);
    }

    return true;
  } catch (e) {
    return false;
  }
}

Future<bool> saveAwsSalesBulk(
  List<SalesOrder> sales,
  void Function(double) onProgress,
) async {
  Repository repo = Repository(client: Dio());
  final totalSubs = sales.length;

  try {
    final dataList = <Map<String, dynamic>>[];
    for (final salesOrder in sales) {
      dataList.add({
        'amount_to_invoice': salesOrder.amountToInvoice,
        'amount_total': salesOrder.amountTotal,
        'amount_untaxed': salesOrder.taxTotals?.amountUntaxed,
        'create_date': salesOrder.createDate?.toIso8601String(),
        'delivery_status': salesOrder.deliveryStatus,
        'internal_note_display': salesOrder.internalNoteDisplay,
        'name': salesOrder.name,
        'partner_id_contact_address': salesOrder.partnerId?.contactAddress,
        'partner_id_display_name': salesOrder.partnerId?.displayName,
        'partner_id_phone': salesOrder.partnerId?.phone,
        'state': salesOrder.state,
        'x_studio_commission_paid': salesOrder.xStudioCommissionPaid ? 1 : 0,
        'x_studio_invoice_payment_status':
            salesOrder.xStudioInvoicePaymentStatus,
        'x_studio_payment_type': salesOrder.xStudioPaymentType,
        'x_studio_referrer_processed':
            salesOrder.xStudioReferrerProcessed ? 1 : 0,
        'x_studio_sales_rep_1': salesOrder.xStudioSalesRep1,
        'x_studio_sales_source': salesOrder.xStudioSalesSource,
        'order_line': salesOrder.orderLine != null
            ? salesOrder.orderLine!
                .map(
                  (e) => {
                    'product': e.productTemplateId?.displayName ?? '',
                    'description': e.name,
                    'quantity': e.productUomQty,
                    'delivered': e.qtyDelivered,
                    'invoiced': e.qtyInvoiced,
                    'unit_price': e.priceUnit,
                    'taxes': e.taxId?.isNotEmpty ?? false
                        ? e.taxId![0].displayName
                        : '',
                    'disc': e.discount,
                    'tax_excl': e.priceSubtotal,
                  },
                )
                .toList()
            : [],
      });
    }

    const chunkSize = 500;
    var currentChunk = <Map<String, dynamic>>[];

    for (final salesOrder in dataList) {
      currentChunk.add(salesOrder);
      if (currentChunk.length == chunkSize) {
        await repo.saveAwsSalesBulk(currentChunk);
        final progress = (currentChunk.length / totalSubs) * 100;
        onProgress(progress);
        currentChunk = [];
      }
    }

    if (currentChunk.isNotEmpty) {
      await repo.saveAwsSalesBulk(currentChunk);
      final progress = (totalSubs / totalSubs) * 100;
      onProgress(progress);
    }

    return true;
  } catch (e) {
    return false;
  }
}

Future<bool> updateSalesOrderUserIds(
  List<Map<String, dynamic>> salesOrderUserIds,
  void Function(double) onProgress,
) async {
  Repository repo = Repository(client: Dio());
  final totalSubs = salesOrderUserIds.length;

  try {
    await repo.updateSalesOrderUserIds(salesOrderUserIds);
    final progress = (totalSubs / totalSubs) * 100;
    onProgress(progress);
    return true;
  } catch (e) {
    return false;
  }
}

Future<bool> updateDeadlinesBulk(
  List<Map<String, dynamic>> dateDeadlines,
  void Function(double) onProgress,
) async {
  Repository repo = Repository(client: Dio());
  final totalSubs = dateDeadlines.length;

  try {
    await repo.updateDeadlinesBulk(dateDeadlines);
    final progress = (totalSubs / totalSubs) * 100;
    onProgress(progress);
    return true;
  } catch (e) {
    return false;
  }
}

Future<bool> saveAwsStateIds(
  List<OdooStateId> stateIds,
) async {
  Repository repo = Repository(client: Dio());

  try {
    final dataList = <Map<String, dynamic>>[];

    for (final stateId in stateIds[0].stateIds!) {
      dataList.add({
        'state_id': stateId.id,
        'name': stateId.name,
        'code': stateId.code,
      });
    }

    // dataList.add({
    //   'state_id': dataList.length + 1,
    //   'name': 'All States',
    //   'code': 'ALL',
    // });

    await repo.saveAwsStateIds(dataList);
    // onProgress(progress);

    return true;
  } catch (e) {
    return false;
  }
}

// Future<bool> saveAwsContacts(
//   List<OdooContact> contacts,
// ) async {
//   Repository repo = Repository(client: Dio());

//   try {
//     final dataList = <Map<String, dynamic>>[];

//     for (final contact in contacts) {
//       dataList.add({
//         'contact_id': contact.id,
//         'parent_contact_id': contact.parentId?.id,
//         'name': contact.name,
//         'complete_address': contact.completeAddress
//       });
//     }

//     await repo.saveAwsContacts(dataList);

//     print("Remaining ZXY");
//     // onProgress(progress);

//     return true;
//   } catch (e) {
//     return false;
//   }
// }

Future<bool> saveAwsContacts(
  List<OdooContact> contacts,
  // void Function(double) onProgress,
) async {
  Repository repo = Repository(client: Dio());
  final totalSubs = contacts.length;

  try {
    final dataList = <Map<String, dynamic>>[];
    for (final contact in contacts) {
      String originalCustomerName = contact.name;

      if (contact.parentId?.id != null) {
        // for (var contact in contacts) {
        //   if(contc){}
        // }
        originalCustomerName =
            contacts.firstWhere((e) => e.id == contact.parentId?.id).name;
      }

      dataList.add({
        'contact_id': contact.id,
        'parent_contact_id': contact.parentId?.id,
        'name': contact.name,
        'complete_address': contact.completeAddress,
        'parent_customer_name': originalCustomerName,
      });
    }

    const chunkSize = 500;
    var currentChunk = <Map<String, dynamic>>[];

    for (final contact in dataList) {
      currentChunk.add(contact);
      if (currentChunk.length == chunkSize) {
        await repo.saveAwsContacts(currentChunk);
        final progress = (currentChunk.length / totalSubs) * 100;
        // onProgress(progress);
        currentChunk = [];
      }
    }

    if (currentChunk.isNotEmpty) {
      await repo.saveAwsContacts(currentChunk);
      final progress = (totalSubs / totalSubs) * 100;
      // onProgress(progress);
    }

    return true;
  } catch (e) {
    return false;
  }
}

Future<bool> saveActivitySummary(
  List<String> activitySummaries,
  // void Function(double) onProgress,
) async {
  Repository repo = Repository(client: Dio());
  final totalSubs = activitySummaries.length;

  try {
    final dataList = <Map<String, dynamic>>[];
    for (final activity in activitySummaries) {
      dataList.add({'activity_summary': activity});
    }

    const chunkSize = 500;
    var currentChunk = <Map<String, dynamic>>[];

    for (final contact in dataList) {
      currentChunk.add(contact);
      if (currentChunk.length == chunkSize) {
        await repo.bulkActivitySummaryStore(currentChunk);
        // final progress = (currentChunk.length / totalSubs) * 100;
        // onProgress(progress);
        currentChunk = [];
      }
    }

    if (currentChunk.isNotEmpty) {
      await repo.bulkActivitySummaryStore(currentChunk);
      // final progress = (totalSubs / totalSubs) * 100;
      // onProgress(progress);
    }

    return true;
  } catch (e) {
    return false;
  }
}


// Future<bool> saveAwsCurrentaccSubs(
//   List<CurrentaccSubs> currentaccSubss,
//   void Function(double) onProgress,
// ) async {
//   Repository repo = Repository(client: Dio());
//   final totalSubs = currentaccSubss.length;

//   try {
//     final dataList = <Map<String, dynamic>>[];
//     for (final accSubs in currentaccSubss) {
//       dataList.add({
//         'accSubs_id': accSubs.id,
//         'name': accSubs.name,
//         'code': accSubs.code,
//       });
//     }

//     const chunkSize = 500;
//     var currentChunk = <Map<String, dynamic>>[];

//     for (final salesOrder in dataList) {
//       currentChunk.add(salesOrder);
//       if (currentChunk.length == chunkSize) {
//         await repo.saveBulkaccSubs(currentChunk);
//         final progress = (currentChunk.length / totalSubs) * 100;
//         onProgress(progress);
//         currentChunk = [];
//       }
//     }

//     if (currentChunk.isNotEmpty) {
//       await repo.saveBulkaccSubs(currentChunk);
//       final progress = (totalSubs / totalSubs) * 100;
//       onProgress(progress);
//     }

//     return true;
//   } catch (e) {
//     return false;
//   }
// }

// Future<bool> saveAwsProductStocks(
//   List<AwsProductStocks> productStocks,
//   void Function(double) onProgress,
// ) async {
//   Repository repo = Repository(client: Dio());
//   final totalProductStocks = productStocks.length;

//   try {
//     final dataList = <Map<String, dynamic>>[];
//     for (final stocks in productStocks) {
//       dataList.add({
//         'display_name': stocks.displayName,
//         'categ_name': stocks.categId?.displayName,
//         'avg_cost': stocks.avgCost,
//         'total_value': stocks.totalValue,
//         'qty_available': stocks.qtyAvailable,
//         'free_qty': stocks.freeQty,
//         'incoming_qty': stocks.incomingQty,
//         'outgoing_qty': stocks.outgoingQty,
//         'virtual_available': stocks.virtualAvailable,
//         'accSubs_id': stocks.accSubsId,
//       });
//     }

//     const chunkSize = 500;
//     var currentChunk = <Map<String, dynamic>>[];

//     for (final stock in dataList) {
//       currentChunk.add(stock);
//       if (currentChunk.length == chunkSize) {
//         await repo.saveBulkProductStocks(currentChunk);
//         final progress = (currentChunk.length / totalProductStocks) * 100;
//         onProgress(progress);
//         currentChunk = [];
//       }
//     }

//     if (currentChunk.isNotEmpty) {
//       await repo.saveBulkProductStocks(currentChunk);
//       final progress = (totalProductStocks / totalProductStocks) * 100;
//       onProgress(progress);
//     }

//     return true;
//   } catch (e) {
//     return false;
//   }
// }
