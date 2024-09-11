// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'aws_sales_quotations_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AwsSalesQuotations _$AwsSalesQuotationsFromJson(Map<String, dynamic> json) {
  return _AwsSalesQuotations.fromJson(json);
}

/// @nodoc
mixin _$AwsSalesQuotations {
  int? get id => throw _privateConstructorUsedError;
  String? get salesOrderNo => throw _privateConstructorUsedError;
  String? get customerName => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  List<OrderLine>? get orderLine => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AwsSalesQuotationsCopyWith<AwsSalesQuotations> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AwsSalesQuotationsCopyWith<$Res> {
  factory $AwsSalesQuotationsCopyWith(
          AwsSalesQuotations value, $Res Function(AwsSalesQuotations) then) =
      _$AwsSalesQuotationsCopyWithImpl<$Res, AwsSalesQuotations>;
  @useResult
  $Res call(
      {int? id,
      String? salesOrderNo,
      String? customerName,
      String? address,
      List<OrderLine>? orderLine});
}

/// @nodoc
class _$AwsSalesQuotationsCopyWithImpl<$Res, $Val extends AwsSalesQuotations>
    implements $AwsSalesQuotationsCopyWith<$Res> {
  _$AwsSalesQuotationsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? salesOrderNo = freezed,
    Object? customerName = freezed,
    Object? address = freezed,
    Object? orderLine = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      salesOrderNo: freezed == salesOrderNo
          ? _value.salesOrderNo
          : salesOrderNo // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      orderLine: freezed == orderLine
          ? _value.orderLine
          : orderLine // ignore: cast_nullable_to_non_nullable
              as List<OrderLine>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AwsSalesQuotationsImplCopyWith<$Res>
    implements $AwsSalesQuotationsCopyWith<$Res> {
  factory _$$AwsSalesQuotationsImplCopyWith(_$AwsSalesQuotationsImpl value,
          $Res Function(_$AwsSalesQuotationsImpl) then) =
      __$$AwsSalesQuotationsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? salesOrderNo,
      String? customerName,
      String? address,
      List<OrderLine>? orderLine});
}

/// @nodoc
class __$$AwsSalesQuotationsImplCopyWithImpl<$Res>
    extends _$AwsSalesQuotationsCopyWithImpl<$Res, _$AwsSalesQuotationsImpl>
    implements _$$AwsSalesQuotationsImplCopyWith<$Res> {
  __$$AwsSalesQuotationsImplCopyWithImpl(_$AwsSalesQuotationsImpl _value,
      $Res Function(_$AwsSalesQuotationsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? salesOrderNo = freezed,
    Object? customerName = freezed,
    Object? address = freezed,
    Object? orderLine = freezed,
  }) {
    return _then(_$AwsSalesQuotationsImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      salesOrderNo: freezed == salesOrderNo
          ? _value.salesOrderNo
          : salesOrderNo // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      orderLine: freezed == orderLine
          ? _value._orderLine
          : orderLine // ignore: cast_nullable_to_non_nullable
              as List<OrderLine>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AwsSalesQuotationsImpl implements _AwsSalesQuotations {
  const _$AwsSalesQuotationsImpl(
      {required this.id,
      required this.salesOrderNo,
      required this.customerName,
      required this.address,
      required final List<OrderLine>? orderLine})
      : _orderLine = orderLine;

  factory _$AwsSalesQuotationsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AwsSalesQuotationsImplFromJson(json);

  @override
  final int? id;
  @override
  final String? salesOrderNo;
  @override
  final String? customerName;
  @override
  final String? address;
  final List<OrderLine>? _orderLine;
  @override
  List<OrderLine>? get orderLine {
    final value = _orderLine;
    if (value == null) return null;
    if (_orderLine is EqualUnmodifiableListView) return _orderLine;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AwsSalesQuotations(id: $id, salesOrderNo: $salesOrderNo, customerName: $customerName, address: $address, orderLine: $orderLine)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AwsSalesQuotationsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.salesOrderNo, salesOrderNo) ||
                other.salesOrderNo == salesOrderNo) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.address, address) || other.address == address) &&
            const DeepCollectionEquality()
                .equals(other._orderLine, _orderLine));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, salesOrderNo, customerName,
      address, const DeepCollectionEquality().hash(_orderLine));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AwsSalesQuotationsImplCopyWith<_$AwsSalesQuotationsImpl> get copyWith =>
      __$$AwsSalesQuotationsImplCopyWithImpl<_$AwsSalesQuotationsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AwsSalesQuotationsImplToJson(
      this,
    );
  }
}

abstract class _AwsSalesQuotations implements AwsSalesQuotations {
  const factory _AwsSalesQuotations(
      {required final int? id,
      required final String? salesOrderNo,
      required final String? customerName,
      required final String? address,
      required final List<OrderLine>? orderLine}) = _$AwsSalesQuotationsImpl;

  factory _AwsSalesQuotations.fromJson(Map<String, dynamic> json) =
      _$AwsSalesQuotationsImpl.fromJson;

  @override
  int? get id;
  @override
  String? get salesOrderNo;
  @override
  String? get customerName;
  @override
  String? get address;
  @override
  List<OrderLine>? get orderLine;
  @override
  @JsonKey(ignore: true)
  _$$AwsSalesQuotationsImplCopyWith<_$AwsSalesQuotationsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
