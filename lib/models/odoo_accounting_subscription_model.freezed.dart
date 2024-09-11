// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'odoo_accounting_subscription_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OdooAccountingSubscriptions _$OdooAccountingSubscriptionsFromJson(
    Map<String, dynamic> json) {
  return _OdooAccountingSubscriptions.fromJson(json);
}

/// @nodoc
mixin _$OdooAccountingSubscriptions {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'invoice_origin')
  @BoolStringConverter()
  String? get invoiceOrigin => throw _privateConstructorUsedError; //B
  @JsonKey(name: 'invoice_date')
  DateTime? get invoiceDate => throw _privateConstructorUsedError; //C-E
  @JsonKey(name: 'payment_state')
  @BoolStringConverter()
  String? get paymentState => throw _privateConstructorUsedError; //F
  @JsonKey(name: 'activity_date_deadline')
  @BoolDateTimeConverter()
  DateTime? get activityDateDeadline => throw _privateConstructorUsedError; //G
  @JsonKey(name: 'partner_id')
  PartnerIdModel get partnerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'activity_summary')
  @BoolStringConverter()
  String get activitySummary => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OdooAccountingSubscriptionsCopyWith<OdooAccountingSubscriptions>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OdooAccountingSubscriptionsCopyWith<$Res> {
  factory $OdooAccountingSubscriptionsCopyWith(
          OdooAccountingSubscriptions value,
          $Res Function(OdooAccountingSubscriptions) then) =
      _$OdooAccountingSubscriptionsCopyWithImpl<$Res,
          OdooAccountingSubscriptions>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: 'invoice_origin')
      @BoolStringConverter()
      String? invoiceOrigin,
      @JsonKey(name: 'invoice_date') DateTime? invoiceDate,
      @JsonKey(name: 'payment_state')
      @BoolStringConverter()
      String? paymentState,
      @JsonKey(name: 'activity_date_deadline')
      @BoolDateTimeConverter()
      DateTime? activityDateDeadline,
      @JsonKey(name: 'partner_id') PartnerIdModel partnerId,
      @JsonKey(name: 'activity_summary')
      @BoolStringConverter()
      String activitySummary});

  $PartnerIdModelCopyWith<$Res> get partnerId;
}

/// @nodoc
class _$OdooAccountingSubscriptionsCopyWithImpl<$Res,
        $Val extends OdooAccountingSubscriptions>
    implements $OdooAccountingSubscriptionsCopyWith<$Res> {
  _$OdooAccountingSubscriptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? invoiceOrigin = freezed,
    Object? invoiceDate = freezed,
    Object? paymentState = freezed,
    Object? activityDateDeadline = freezed,
    Object? partnerId = null,
    Object? activitySummary = null,
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
      invoiceOrigin: freezed == invoiceOrigin
          ? _value.invoiceOrigin
          : invoiceOrigin // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceDate: freezed == invoiceDate
          ? _value.invoiceDate
          : invoiceDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      paymentState: freezed == paymentState
          ? _value.paymentState
          : paymentState // ignore: cast_nullable_to_non_nullable
              as String?,
      activityDateDeadline: freezed == activityDateDeadline
          ? _value.activityDateDeadline
          : activityDateDeadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      partnerId: null == partnerId
          ? _value.partnerId
          : partnerId // ignore: cast_nullable_to_non_nullable
              as PartnerIdModel,
      activitySummary: null == activitySummary
          ? _value.activitySummary
          : activitySummary // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PartnerIdModelCopyWith<$Res> get partnerId {
    return $PartnerIdModelCopyWith<$Res>(_value.partnerId, (value) {
      return _then(_value.copyWith(partnerId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OdooAccountingSubscriptionsImplCopyWith<$Res>
    implements $OdooAccountingSubscriptionsCopyWith<$Res> {
  factory _$$OdooAccountingSubscriptionsImplCopyWith(
          _$OdooAccountingSubscriptionsImpl value,
          $Res Function(_$OdooAccountingSubscriptionsImpl) then) =
      __$$OdooAccountingSubscriptionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: 'invoice_origin')
      @BoolStringConverter()
      String? invoiceOrigin,
      @JsonKey(name: 'invoice_date') DateTime? invoiceDate,
      @JsonKey(name: 'payment_state')
      @BoolStringConverter()
      String? paymentState,
      @JsonKey(name: 'activity_date_deadline')
      @BoolDateTimeConverter()
      DateTime? activityDateDeadline,
      @JsonKey(name: 'partner_id') PartnerIdModel partnerId,
      @JsonKey(name: 'activity_summary')
      @BoolStringConverter()
      String activitySummary});

  @override
  $PartnerIdModelCopyWith<$Res> get partnerId;
}

/// @nodoc
class __$$OdooAccountingSubscriptionsImplCopyWithImpl<$Res>
    extends _$OdooAccountingSubscriptionsCopyWithImpl<$Res,
        _$OdooAccountingSubscriptionsImpl>
    implements _$$OdooAccountingSubscriptionsImplCopyWith<$Res> {
  __$$OdooAccountingSubscriptionsImplCopyWithImpl(
      _$OdooAccountingSubscriptionsImpl _value,
      $Res Function(_$OdooAccountingSubscriptionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? invoiceOrigin = freezed,
    Object? invoiceDate = freezed,
    Object? paymentState = freezed,
    Object? activityDateDeadline = freezed,
    Object? partnerId = null,
    Object? activitySummary = null,
  }) {
    return _then(_$OdooAccountingSubscriptionsImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceOrigin: freezed == invoiceOrigin
          ? _value.invoiceOrigin
          : invoiceOrigin // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceDate: freezed == invoiceDate
          ? _value.invoiceDate
          : invoiceDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      paymentState: freezed == paymentState
          ? _value.paymentState
          : paymentState // ignore: cast_nullable_to_non_nullable
              as String?,
      activityDateDeadline: freezed == activityDateDeadline
          ? _value.activityDateDeadline
          : activityDateDeadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      partnerId: null == partnerId
          ? _value.partnerId
          : partnerId // ignore: cast_nullable_to_non_nullable
              as PartnerIdModel,
      activitySummary: null == activitySummary
          ? _value.activitySummary
          : activitySummary // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OdooAccountingSubscriptionsImpl
    implements _OdooAccountingSubscriptions {
  const _$OdooAccountingSubscriptionsImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: 'invoice_origin')
      @BoolStringConverter()
      required this.invoiceOrigin,
      @JsonKey(name: 'invoice_date') required this.invoiceDate,
      @JsonKey(name: 'payment_state')
      @BoolStringConverter()
      required this.paymentState,
      @JsonKey(name: 'activity_date_deadline')
      @BoolDateTimeConverter()
      required this.activityDateDeadline,
      @JsonKey(name: 'partner_id') required this.partnerId,
      @JsonKey(name: 'activity_summary')
      @BoolStringConverter()
      required this.activitySummary});

  factory _$OdooAccountingSubscriptionsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$OdooAccountingSubscriptionsImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  @JsonKey(name: 'invoice_origin')
  @BoolStringConverter()
  final String? invoiceOrigin;
//B
  @override
  @JsonKey(name: 'invoice_date')
  final DateTime? invoiceDate;
//C-E
  @override
  @JsonKey(name: 'payment_state')
  @BoolStringConverter()
  final String? paymentState;
//F
  @override
  @JsonKey(name: 'activity_date_deadline')
  @BoolDateTimeConverter()
  final DateTime? activityDateDeadline;
//G
  @override
  @JsonKey(name: 'partner_id')
  final PartnerIdModel partnerId;
  @override
  @JsonKey(name: 'activity_summary')
  @BoolStringConverter()
  final String activitySummary;

  @override
  String toString() {
    return 'OdooAccountingSubscriptions(id: $id, name: $name, invoiceOrigin: $invoiceOrigin, invoiceDate: $invoiceDate, paymentState: $paymentState, activityDateDeadline: $activityDateDeadline, partnerId: $partnerId, activitySummary: $activitySummary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OdooAccountingSubscriptionsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.invoiceOrigin, invoiceOrigin) ||
                other.invoiceOrigin == invoiceOrigin) &&
            (identical(other.invoiceDate, invoiceDate) ||
                other.invoiceDate == invoiceDate) &&
            (identical(other.paymentState, paymentState) ||
                other.paymentState == paymentState) &&
            (identical(other.activityDateDeadline, activityDateDeadline) ||
                other.activityDateDeadline == activityDateDeadline) &&
            (identical(other.partnerId, partnerId) ||
                other.partnerId == partnerId) &&
            (identical(other.activitySummary, activitySummary) ||
                other.activitySummary == activitySummary));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      invoiceOrigin,
      invoiceDate,
      paymentState,
      activityDateDeadline,
      partnerId,
      activitySummary);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OdooAccountingSubscriptionsImplCopyWith<_$OdooAccountingSubscriptionsImpl>
      get copyWith => __$$OdooAccountingSubscriptionsImplCopyWithImpl<
          _$OdooAccountingSubscriptionsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OdooAccountingSubscriptionsImplToJson(
      this,
    );
  }
}

abstract class _OdooAccountingSubscriptions
    implements OdooAccountingSubscriptions {
  const factory _OdooAccountingSubscriptions(
          {required final int? id,
          required final String? name,
          @JsonKey(name: 'invoice_origin')
          @BoolStringConverter()
          required final String? invoiceOrigin,
          @JsonKey(name: 'invoice_date') required final DateTime? invoiceDate,
          @JsonKey(name: 'payment_state')
          @BoolStringConverter()
          required final String? paymentState,
          @JsonKey(name: 'activity_date_deadline')
          @BoolDateTimeConverter()
          required final DateTime? activityDateDeadline,
          @JsonKey(name: 'partner_id') required final PartnerIdModel partnerId,
          @JsonKey(name: 'activity_summary')
          @BoolStringConverter()
          required final String activitySummary}) =
      _$OdooAccountingSubscriptionsImpl;

  factory _OdooAccountingSubscriptions.fromJson(Map<String, dynamic> json) =
      _$OdooAccountingSubscriptionsImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(name: 'invoice_origin')
  @BoolStringConverter()
  String? get invoiceOrigin;
  @override //B
  @JsonKey(name: 'invoice_date')
  DateTime? get invoiceDate;
  @override //C-E
  @JsonKey(name: 'payment_state')
  @BoolStringConverter()
  String? get paymentState;
  @override //F
  @JsonKey(name: 'activity_date_deadline')
  @BoolDateTimeConverter()
  DateTime? get activityDateDeadline;
  @override //G
  @JsonKey(name: 'partner_id')
  PartnerIdModel get partnerId;
  @override
  @JsonKey(name: 'activity_summary')
  @BoolStringConverter()
  String get activitySummary;
  @override
  @JsonKey(ignore: true)
  _$$OdooAccountingSubscriptionsImplCopyWith<_$OdooAccountingSubscriptionsImpl>
      get copyWith => throw _privateConstructorUsedError;
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
