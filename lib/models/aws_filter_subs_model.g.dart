// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aws_filter_subs_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AwsFilterSubsImpl _$$AwsFilterSubsImplFromJson(Map<String, dynamic> json) =>
    _$AwsFilterSubsImpl(
      invoiceNumber: json['invoiceNumber'] as String?,
      salesOrderNo: json['salesOrderNo'] as String?,
      customerName: json['customerName'] as String?,
      invoiceDate: json['invoiceDate'] == null
          ? null
          : DateTime.parse(json['invoiceDate'] as String),
      paymentStatus: json['paymentStatus'] as String?,
      address: json['address'] as String?,
      stateId: (json['stateId'] as num?)?.toInt(),
      activitySummary: json['activitySummary'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      dueDate: json['dueDate'] == null
          ? null
          : DateTime.parse(json['dueDate'] as String),
      category: json['category'] as String?,
    );

Map<String, dynamic> _$$AwsFilterSubsImplToJson(_$AwsFilterSubsImpl instance) =>
    <String, dynamic>{
      'invoiceNumber': instance.invoiceNumber,
      'salesOrderNo': instance.salesOrderNo,
      'customerName': instance.customerName,
      'invoiceDate': instance.invoiceDate?.toIso8601String(),
      'paymentStatus': instance.paymentStatus,
      'address': instance.address,
      'stateId': instance.stateId,
      'activitySummary': instance.activitySummary,
      'phone': instance.phone,
      'email': instance.email,
      'dueDate': instance.dueDate?.toIso8601String(),
      'category': instance.category,
    };
