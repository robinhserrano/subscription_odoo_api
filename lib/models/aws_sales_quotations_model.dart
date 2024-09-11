import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:subscription_odoo_api/models/sales_record_model.dart';
part 'aws_sales_quotations_model.freezed.dart';
part 'aws_sales_quotations_model.g.dart';

@freezed
class AwsSalesQuotations with _$AwsSalesQuotations {
  const factory AwsSalesQuotations({
    required int? id,
    required String? salesOrderNo,
    required String? customerName,
    required String? address,
    required List<OrderLine>? orderLine,
  }) = _AwsSalesQuotations;
  factory AwsSalesQuotations.fromJson(Map<String, dynamic> json) =>
      _$AwsSalesQuotationsFromJson(json);
}
