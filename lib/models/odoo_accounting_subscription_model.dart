// ignore_for_file: invalid_annotation_target, always_put_required_named_parameters_first

import 'package:subscription_odoo_api/models/bool_to_string_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'odoo_accounting_subscription_model.freezed.dart';
part 'odoo_accounting_subscription_model.g.dart';

@freezed
class OdooAccountingSubscriptions with _$OdooAccountingSubscriptions {
  const factory OdooAccountingSubscriptions({
    required int? id,
    required String? name,
    @JsonKey(name: 'invoice_origin')
    @BoolStringConverter()
    required String? invoiceOrigin, //B
    @JsonKey(name: 'invoice_date') required DateTime? invoiceDate, //C-E
    @JsonKey(name: 'payment_state')
    @BoolStringConverter()
    required String? paymentState, //F
    @JsonKey(name: 'activity_date_deadline')
    @BoolDateTimeConverter()
    required DateTime? activityDateDeadline, //G
    @JsonKey(name: 'partner_id') required PartnerIdModel partnerId,
    @JsonKey(name: 'activity_summary')
    @BoolStringConverter()
    required String activitySummary, //K
  }) = _OdooAccountingSubscriptions;

  factory OdooAccountingSubscriptions.fromJson(Map<String, dynamic> json) =>
      _$OdooAccountingSubscriptionsFromJson(json);
}

@freezed
class PartnerIdModel with _$PartnerIdModel {
  const factory PartnerIdModel({
    @JsonKey(name: 'display_name') required String? displayName,
    @JsonKey(name: 'contact_address') required dynamic contactAddress,
    @JsonKey(name: 'phone') required dynamic phone,
    @JsonKey(name: 'email') required dynamic email,
    @JsonKey(name: 'state_id') required dynamic stateId,
  }) = _PartnerIdModel;

  factory PartnerIdModel.fromJson(Map<String, dynamic> json) =>
      _$PartnerIdModelFromJson(json);
}
