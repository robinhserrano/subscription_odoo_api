import 'package:freezed_annotation/freezed_annotation.dart';
part 'aws_filter_subs_model.freezed.dart';
part 'aws_filter_subs_model.g.dart';

@freezed
class AwsFilterSubs with _$AwsFilterSubs {
  const factory AwsFilterSubs(
      {required String? invoiceNumber,
      required String? salesOrderNo,
      required String? customerName,
      required DateTime? invoiceDate,
      required String? paymentStatus,
      required String? address,
      required int? stateId,
      required String? activitySummary,
      required String? phone,
      required String? email,
      required DateTime? dueDate,
      required String? category}) = _AwsFilterSubs;
  factory AwsFilterSubs.fromJson(Map<String, dynamic> json) =>
      _$AwsFilterSubsFromJson(json);
}

List<AwsFilterSubs> checkForDuplicateSalesOrderNo(
    List<AwsFilterSubs> filterSubsList) {
  final salesOrderNoMap = <String, List<AwsFilterSubs>>{};

  for (final filterSubs in filterSubsList) {
    final salesOrderNo = filterSubs.salesOrderNo!;
    if (!salesOrderNoMap.containsKey(salesOrderNo)) {
      salesOrderNoMap[salesOrderNo] = [];
    }
    salesOrderNoMap[salesOrderNo]?.add(filterSubs);
  }

  final duplicateSalesOrderNoItems = <AwsFilterSubs>[];
  for (final entries in salesOrderNoMap.entries) {
    if (entries.value.length > 1) {
      duplicateSalesOrderNoItems.addAll(entries.value);
    }
  }

  return duplicateSalesOrderNoItems;
}
