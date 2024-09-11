// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'odoo_subscriptions_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OdooSubscriptions _$OdooSubscriptionsFromJson(Map<String, dynamic> json) {
  return _OdooSubscriptions.fromJson(json);
}

/// @nodoc
mixin _$OdooSubscriptions {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'partner_id')
  PartnerIdModel get partnerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'invoice_id')
  InvoiceIdModel? get invoiceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'activity_summary')
  @BoolStringConverter()
  String? get activitySummary => throw _privateConstructorUsedError; //K
  @JsonKey(name: 'next_invoice_date')
  DateTime? get nextInvoiceDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OdooSubscriptionsCopyWith<OdooSubscriptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OdooSubscriptionsCopyWith<$Res> {
  factory $OdooSubscriptionsCopyWith(
          OdooSubscriptions value, $Res Function(OdooSubscriptions) then) =
      _$OdooSubscriptionsCopyWithImpl<$Res, OdooSubscriptions>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: 'partner_id') PartnerIdModel partnerId,
      @JsonKey(name: 'invoice_id') InvoiceIdModel? invoiceId,
      @JsonKey(name: 'activity_summary')
      @BoolStringConverter()
      String? activitySummary,
      @JsonKey(name: 'next_invoice_date') DateTime? nextInvoiceDate});

  $PartnerIdModelCopyWith<$Res> get partnerId;
  $InvoiceIdModelCopyWith<$Res>? get invoiceId;
}

/// @nodoc
class _$OdooSubscriptionsCopyWithImpl<$Res, $Val extends OdooSubscriptions>
    implements $OdooSubscriptionsCopyWith<$Res> {
  _$OdooSubscriptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? partnerId = null,
    Object? invoiceId = freezed,
    Object? activitySummary = freezed,
    Object? nextInvoiceDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      partnerId: null == partnerId
          ? _value.partnerId
          : partnerId // ignore: cast_nullable_to_non_nullable
              as PartnerIdModel,
      invoiceId: freezed == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as InvoiceIdModel?,
      activitySummary: freezed == activitySummary
          ? _value.activitySummary
          : activitySummary // ignore: cast_nullable_to_non_nullable
              as String?,
      nextInvoiceDate: freezed == nextInvoiceDate
          ? _value.nextInvoiceDate
          : nextInvoiceDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PartnerIdModelCopyWith<$Res> get partnerId {
    return $PartnerIdModelCopyWith<$Res>(_value.partnerId, (value) {
      return _then(_value.copyWith(partnerId: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $InvoiceIdModelCopyWith<$Res>? get invoiceId {
    if (_value.invoiceId == null) {
      return null;
    }

    return $InvoiceIdModelCopyWith<$Res>(_value.invoiceId!, (value) {
      return _then(_value.copyWith(invoiceId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OdooSubscriptionsImplCopyWith<$Res>
    implements $OdooSubscriptionsCopyWith<$Res> {
  factory _$$OdooSubscriptionsImplCopyWith(_$OdooSubscriptionsImpl value,
          $Res Function(_$OdooSubscriptionsImpl) then) =
      __$$OdooSubscriptionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: 'partner_id') PartnerIdModel partnerId,
      @JsonKey(name: 'invoice_id') InvoiceIdModel? invoiceId,
      @JsonKey(name: 'activity_summary')
      @BoolStringConverter()
      String? activitySummary,
      @JsonKey(name: 'next_invoice_date') DateTime? nextInvoiceDate});

  @override
  $PartnerIdModelCopyWith<$Res> get partnerId;
  @override
  $InvoiceIdModelCopyWith<$Res>? get invoiceId;
}

/// @nodoc
class __$$OdooSubscriptionsImplCopyWithImpl<$Res>
    extends _$OdooSubscriptionsCopyWithImpl<$Res, _$OdooSubscriptionsImpl>
    implements _$$OdooSubscriptionsImplCopyWith<$Res> {
  __$$OdooSubscriptionsImplCopyWithImpl(_$OdooSubscriptionsImpl _value,
      $Res Function(_$OdooSubscriptionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? partnerId = null,
    Object? invoiceId = freezed,
    Object? activitySummary = freezed,
    Object? nextInvoiceDate = freezed,
  }) {
    return _then(_$OdooSubscriptionsImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      partnerId: null == partnerId
          ? _value.partnerId
          : partnerId // ignore: cast_nullable_to_non_nullable
              as PartnerIdModel,
      invoiceId: freezed == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as InvoiceIdModel?,
      activitySummary: freezed == activitySummary
          ? _value.activitySummary
          : activitySummary // ignore: cast_nullable_to_non_nullable
              as String?,
      nextInvoiceDate: freezed == nextInvoiceDate
          ? _value.nextInvoiceDate
          : nextInvoiceDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OdooSubscriptionsImpl implements _OdooSubscriptions {
  const _$OdooSubscriptionsImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: 'partner_id') required this.partnerId,
      @JsonKey(name: 'invoice_id') required this.invoiceId,
      @JsonKey(name: 'activity_summary')
      @BoolStringConverter()
      required this.activitySummary,
      @JsonKey(name: 'next_invoice_date') required this.nextInvoiceDate});

  factory _$OdooSubscriptionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$OdooSubscriptionsImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  @JsonKey(name: 'partner_id')
  final PartnerIdModel partnerId;
  @override
  @JsonKey(name: 'invoice_id')
  final InvoiceIdModel? invoiceId;
  @override
  @JsonKey(name: 'activity_summary')
  @BoolStringConverter()
  final String? activitySummary;
//K
  @override
  @JsonKey(name: 'next_invoice_date')
  final DateTime? nextInvoiceDate;

  @override
  String toString() {
    return 'OdooSubscriptions(id: $id, name: $name, partnerId: $partnerId, invoiceId: $invoiceId, activitySummary: $activitySummary, nextInvoiceDate: $nextInvoiceDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OdooSubscriptionsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.partnerId, partnerId) ||
                other.partnerId == partnerId) &&
            (identical(other.invoiceId, invoiceId) ||
                other.invoiceId == invoiceId) &&
            (identical(other.activitySummary, activitySummary) ||
                other.activitySummary == activitySummary) &&
            (identical(other.nextInvoiceDate, nextInvoiceDate) ||
                other.nextInvoiceDate == nextInvoiceDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, partnerId, invoiceId,
      activitySummary, nextInvoiceDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OdooSubscriptionsImplCopyWith<_$OdooSubscriptionsImpl> get copyWith =>
      __$$OdooSubscriptionsImplCopyWithImpl<_$OdooSubscriptionsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OdooSubscriptionsImplToJson(
      this,
    );
  }
}

abstract class _OdooSubscriptions implements OdooSubscriptions {
  const factory _OdooSubscriptions(
      {required final int? id,
      required final String? name,
      @JsonKey(name: 'partner_id') required final PartnerIdModel partnerId,
      @JsonKey(name: 'invoice_id') required final InvoiceIdModel? invoiceId,
      @JsonKey(name: 'activity_summary')
      @BoolStringConverter()
      required final String? activitySummary,
      @JsonKey(name: 'next_invoice_date')
      required final DateTime? nextInvoiceDate}) = _$OdooSubscriptionsImpl;

  factory _OdooSubscriptions.fromJson(Map<String, dynamic> json) =
      _$OdooSubscriptionsImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(name: 'partner_id')
  PartnerIdModel get partnerId;
  @override
  @JsonKey(name: 'invoice_id')
  InvoiceIdModel? get invoiceId;
  @override
  @JsonKey(name: 'activity_summary')
  @BoolStringConverter()
  String? get activitySummary;
  @override //K
  @JsonKey(name: 'next_invoice_date')
  DateTime? get nextInvoiceDate;
  @override
  @JsonKey(ignore: true)
  _$$OdooSubscriptionsImplCopyWith<_$OdooSubscriptionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PartnerIdModel _$PartnerIdModelFromJson(Map<String, dynamic> json) {
  return _PartnerIdModel.fromJson(json);
}

/// @nodoc
mixin _$PartnerIdModel {
  @JsonKey(name: 'display_name')
  String? get displayName => throw _privateConstructorUsedError;
  @JsonKey(name: 'contact_address')
  dynamic get contactAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  dynamic get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  dynamic get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'state_id')
  dynamic get stateId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PartnerIdModelCopyWith<PartnerIdModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartnerIdModelCopyWith<$Res> {
  factory $PartnerIdModelCopyWith(
          PartnerIdModel value, $Res Function(PartnerIdModel) then) =
      _$PartnerIdModelCopyWithImpl<$Res, PartnerIdModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'display_name') String? displayName,
      @JsonKey(name: 'contact_address') dynamic contactAddress,
      @JsonKey(name: 'phone') dynamic phone,
      @JsonKey(name: 'email') dynamic email,
      @JsonKey(name: 'state_id') dynamic stateId});
}

/// @nodoc
class _$PartnerIdModelCopyWithImpl<$Res, $Val extends PartnerIdModel>
    implements $PartnerIdModelCopyWith<$Res> {
  _$PartnerIdModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = freezed,
    Object? contactAddress = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? stateId = freezed,
  }) {
    return _then(_value.copyWith(
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      contactAddress: freezed == contactAddress
          ? _value.contactAddress
          : contactAddress // ignore: cast_nullable_to_non_nullable
              as dynamic,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as dynamic,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as dynamic,
      stateId: freezed == stateId
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PartnerIdModelImplCopyWith<$Res>
    implements $PartnerIdModelCopyWith<$Res> {
  factory _$$PartnerIdModelImplCopyWith(_$PartnerIdModelImpl value,
          $Res Function(_$PartnerIdModelImpl) then) =
      __$$PartnerIdModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'display_name') String? displayName,
      @JsonKey(name: 'contact_address') dynamic contactAddress,
      @JsonKey(name: 'phone') dynamic phone,
      @JsonKey(name: 'email') dynamic email,
      @JsonKey(name: 'state_id') dynamic stateId});
}

/// @nodoc
class __$$PartnerIdModelImplCopyWithImpl<$Res>
    extends _$PartnerIdModelCopyWithImpl<$Res, _$PartnerIdModelImpl>
    implements _$$PartnerIdModelImplCopyWith<$Res> {
  __$$PartnerIdModelImplCopyWithImpl(
      _$PartnerIdModelImpl _value, $Res Function(_$PartnerIdModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = freezed,
    Object? contactAddress = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? stateId = freezed,
  }) {
    return _then(_$PartnerIdModelImpl(
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      contactAddress: freezed == contactAddress
          ? _value.contactAddress
          : contactAddress // ignore: cast_nullable_to_non_nullable
              as dynamic,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as dynamic,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as dynamic,
      stateId: freezed == stateId
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PartnerIdModelImpl implements _PartnerIdModel {
  const _$PartnerIdModelImpl(
      {@JsonKey(name: 'display_name') required this.displayName,
      @JsonKey(name: 'contact_address') required this.contactAddress,
      @JsonKey(name: 'phone') required this.phone,
      @JsonKey(name: 'email') required this.email,
      @JsonKey(name: 'state_id') required this.stateId});

  factory _$PartnerIdModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PartnerIdModelImplFromJson(json);

  @override
  @JsonKey(name: 'display_name')
  final String? displayName;
  @override
  @JsonKey(name: 'contact_address')
  final dynamic contactAddress;
  @override
  @JsonKey(name: 'phone')
  final dynamic phone;
  @override
  @JsonKey(name: 'email')
  final dynamic email;
  @override
  @JsonKey(name: 'state_id')
  final dynamic stateId;

  @override
  String toString() {
    return 'PartnerIdModel(displayName: $displayName, contactAddress: $contactAddress, phone: $phone, email: $email, stateId: $stateId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PartnerIdModelImpl &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            const DeepCollectionEquality()
                .equals(other.contactAddress, contactAddress) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.stateId, stateId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      displayName,
      const DeepCollectionEquality().hash(contactAddress),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(stateId));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PartnerIdModelImplCopyWith<_$PartnerIdModelImpl> get copyWith =>
      __$$PartnerIdModelImplCopyWithImpl<_$PartnerIdModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PartnerIdModelImplToJson(
      this,
    );
  }
}

abstract class _PartnerIdModel implements PartnerIdModel {
  const factory _PartnerIdModel(
      {@JsonKey(name: 'display_name') required final String? displayName,
      @JsonKey(name: 'contact_address') required final dynamic contactAddress,
      @JsonKey(name: 'phone') required final dynamic phone,
      @JsonKey(name: 'email') required final dynamic email,
      @JsonKey(name: 'state_id')
      required final dynamic stateId}) = _$PartnerIdModelImpl;

  factory _PartnerIdModel.fromJson(Map<String, dynamic> json) =
      _$PartnerIdModelImpl.fromJson;

  @override
  @JsonKey(name: 'display_name')
  String? get displayName;
  @override
  @JsonKey(name: 'contact_address')
  dynamic get contactAddress;
  @override
  @JsonKey(name: 'phone')
  dynamic get phone;
  @override
  @JsonKey(name: 'email')
  dynamic get email;
  @override
  @JsonKey(name: 'state_id')
  dynamic get stateId;
  @override
  @JsonKey(ignore: true)
  _$$PartnerIdModelImplCopyWith<_$PartnerIdModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InvoiceIdModel _$InvoiceIdModelFromJson(Map<String, dynamic> json) {
  return _InvoiceIdModel.fromJson(json);
}

/// @nodoc
mixin _$InvoiceIdModel {
  @JsonKey(name: 'name')
  @BoolStringConverter()
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'date')
  DateTime? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_state')
  @BoolStringConverter()
  String? get paymentState => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvoiceIdModelCopyWith<InvoiceIdModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceIdModelCopyWith<$Res> {
  factory $InvoiceIdModelCopyWith(
          InvoiceIdModel value, $Res Function(InvoiceIdModel) then) =
      _$InvoiceIdModelCopyWithImpl<$Res, InvoiceIdModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') @BoolStringConverter() String? name,
      @JsonKey(name: 'date') DateTime? date,
      @JsonKey(name: 'payment_state')
      @BoolStringConverter()
      String? paymentState});
}

/// @nodoc
class _$InvoiceIdModelCopyWithImpl<$Res, $Val extends InvoiceIdModel>
    implements $InvoiceIdModelCopyWith<$Res> {
  _$InvoiceIdModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? date = freezed,
    Object? paymentState = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      paymentState: freezed == paymentState
          ? _value.paymentState
          : paymentState // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvoiceIdModelImplCopyWith<$Res>
    implements $InvoiceIdModelCopyWith<$Res> {
  factory _$$InvoiceIdModelImplCopyWith(_$InvoiceIdModelImpl value,
          $Res Function(_$InvoiceIdModelImpl) then) =
      __$$InvoiceIdModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') @BoolStringConverter() String? name,
      @JsonKey(name: 'date') DateTime? date,
      @JsonKey(name: 'payment_state')
      @BoolStringConverter()
      String? paymentState});
}

/// @nodoc
class __$$InvoiceIdModelImplCopyWithImpl<$Res>
    extends _$InvoiceIdModelCopyWithImpl<$Res, _$InvoiceIdModelImpl>
    implements _$$InvoiceIdModelImplCopyWith<$Res> {
  __$$InvoiceIdModelImplCopyWithImpl(
      _$InvoiceIdModelImpl _value, $Res Function(_$InvoiceIdModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? date = freezed,
    Object? paymentState = freezed,
  }) {
    return _then(_$InvoiceIdModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      paymentState: freezed == paymentState
          ? _value.paymentState
          : paymentState // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvoiceIdModelImpl implements _InvoiceIdModel {
  const _$InvoiceIdModelImpl(
      {@JsonKey(name: 'name') @BoolStringConverter() required this.name,
      @JsonKey(name: 'date') required this.date,
      @JsonKey(name: 'payment_state')
      @BoolStringConverter()
      required this.paymentState});

  factory _$InvoiceIdModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvoiceIdModelImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  @BoolStringConverter()
  final String? name;
  @override
  @JsonKey(name: 'date')
  final DateTime? date;
  @override
  @JsonKey(name: 'payment_state')
  @BoolStringConverter()
  final String? paymentState;

  @override
  String toString() {
    return 'InvoiceIdModel(name: $name, date: $date, paymentState: $paymentState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceIdModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.paymentState, paymentState) ||
                other.paymentState == paymentState));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, date, paymentState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceIdModelImplCopyWith<_$InvoiceIdModelImpl> get copyWith =>
      __$$InvoiceIdModelImplCopyWithImpl<_$InvoiceIdModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvoiceIdModelImplToJson(
      this,
    );
  }
}

abstract class _InvoiceIdModel implements InvoiceIdModel {
  const factory _InvoiceIdModel(
      {@JsonKey(name: 'name')
      @BoolStringConverter()
      required final String? name,
      @JsonKey(name: 'date') required final DateTime? date,
      @JsonKey(name: 'payment_state')
      @BoolStringConverter()
      required final String? paymentState}) = _$InvoiceIdModelImpl;

  factory _InvoiceIdModel.fromJson(Map<String, dynamic> json) =
      _$InvoiceIdModelImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  @BoolStringConverter()
  String? get name;
  @override
  @JsonKey(name: 'date')
  DateTime? get date;
  @override
  @JsonKey(name: 'payment_state')
  @BoolStringConverter()
  String? get paymentState;
  @override
  @JsonKey(ignore: true)
  _$$InvoiceIdModelImplCopyWith<_$InvoiceIdModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
