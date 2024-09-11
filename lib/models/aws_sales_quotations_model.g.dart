// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aws_sales_quotations_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AwsSalesQuotationsImpl _$$AwsSalesQuotationsImplFromJson(
        Map<String, dynamic> json) =>
    _$AwsSalesQuotationsImpl(
      id: (json['id'] as num?)?.toInt(),
      salesOrderNo: json['salesOrderNo'] as String?,
      customerName: json['customerName'] as String?,
      address: json['address'] as String?,
      orderLine: (json['orderLine'] as List<dynamic>?)
          ?.map((e) => OrderLine.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AwsSalesQuotationsImplToJson(
        _$AwsSalesQuotationsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'salesOrderNo': instance.salesOrderNo,
      'customerName': instance.customerName,
      'address': instance.address,
      'orderLine': instance.orderLine,
    };
