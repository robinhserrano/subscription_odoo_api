// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'odoo_subscriptions_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OdooSubscriptionsImpl _$$OdooSubscriptionsImplFromJson(
        Map<String, dynamic> json) =>
    _$OdooSubscriptionsImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      partnerId:
          PartnerIdModel.fromJson(json['partner_id'] as Map<String, dynamic>),
      invoiceId: json['invoice_id'] == null
          ? null
          : InvoiceIdModel.fromJson(json['invoice_id'] as Map<String, dynamic>),
      activitySummary:
          const BoolStringConverter().fromJson(json['activity_summary']),
      nextInvoiceDate: json['next_invoice_date'] == null
          ? null
          : DateTime.parse(json['next_invoice_date'] as String),
    );

Map<String, dynamic> _$$OdooSubscriptionsImplToJson(
        _$OdooSubscriptionsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'partner_id': instance.partnerId,
      'invoice_id': instance.invoiceId,
      'activity_summary': _$JsonConverterToJson<dynamic, String>(
          instance.activitySummary, const BoolStringConverter().toJson),
      'next_invoice_date': instance.nextInvoiceDate?.toIso8601String(),
    };

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);

_$PartnerIdModelImpl _$$PartnerIdModelImplFromJson(Map<String, dynamic> json) =>
    _$PartnerIdModelImpl(
      displayName: json['display_name'] as String?,
      contactAddress: json['contact_address'],
      phone: json['phone'],
      email: json['email'],
      stateId: json['state_id'],
    );

Map<String, dynamic> _$$PartnerIdModelImplToJson(
        _$PartnerIdModelImpl instance) =>
    <String, dynamic>{
      'display_name': instance.displayName,
      'contact_address': instance.contactAddress,
      'phone': instance.phone,
      'email': instance.email,
      'state_id': instance.stateId,
    };

_$InvoiceIdModelImpl _$$InvoiceIdModelImplFromJson(Map<String, dynamic> json) =>
    _$InvoiceIdModelImpl(
      name: const BoolStringConverter().fromJson(json['name']),
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      paymentState: const BoolStringConverter().fromJson(json['payment_state']),
    );

Map<String, dynamic> _$$InvoiceIdModelImplToJson(
        _$InvoiceIdModelImpl instance) =>
    <String, dynamic>{
      'name': _$JsonConverterToJson<dynamic, String>(
          instance.name, const BoolStringConverter().toJson),
      'date': instance.date?.toIso8601String(),
      'payment_state': _$JsonConverterToJson<dynamic, String>(
          instance.paymentState, const BoolStringConverter().toJson),
    };
