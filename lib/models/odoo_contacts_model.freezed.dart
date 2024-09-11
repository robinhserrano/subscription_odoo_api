// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'odoo_contacts_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OdooContact _$OdooContactFromJson(Map<String, dynamic> json) {
  return _OdooContact.fromJson(json);
}

/// @nodoc
mixin _$OdooContact {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'contact_address_complete')
  String get completeAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'display_name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_id')
  @BoolParentIdConverter()
  ParentIdModel? get parentId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OdooContactCopyWith<OdooContact> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OdooContactCopyWith<$Res> {
  factory $OdooContactCopyWith(
          OdooContact value, $Res Function(OdooContact) then) =
      _$OdooContactCopyWithImpl<$Res, OdooContact>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'contact_address_complete') String completeAddress,
      @JsonKey(name: 'display_name') String name,
      @JsonKey(name: 'parent_id')
      @BoolParentIdConverter()
      ParentIdModel? parentId});

  $ParentIdModelCopyWith<$Res>? get parentId;
}

/// @nodoc
class _$OdooContactCopyWithImpl<$Res, $Val extends OdooContact>
    implements $OdooContactCopyWith<$Res> {
  _$OdooContactCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? completeAddress = null,
    Object? name = null,
    Object? parentId = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      completeAddress: null == completeAddress
          ? _value.completeAddress
          : completeAddress // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as ParentIdModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ParentIdModelCopyWith<$Res>? get parentId {
    if (_value.parentId == null) {
      return null;
    }

    return $ParentIdModelCopyWith<$Res>(_value.parentId!, (value) {
      return _then(_value.copyWith(parentId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OdooContactImplCopyWith<$Res>
    implements $OdooContactCopyWith<$Res> {
  factory _$$OdooContactImplCopyWith(
          _$OdooContactImpl value, $Res Function(_$OdooContactImpl) then) =
      __$$OdooContactImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'contact_address_complete') String completeAddress,
      @JsonKey(name: 'display_name') String name,
      @JsonKey(name: 'parent_id')
      @BoolParentIdConverter()
      ParentIdModel? parentId});

  @override
  $ParentIdModelCopyWith<$Res>? get parentId;
}

/// @nodoc
class __$$OdooContactImplCopyWithImpl<$Res>
    extends _$OdooContactCopyWithImpl<$Res, _$OdooContactImpl>
    implements _$$OdooContactImplCopyWith<$Res> {
  __$$OdooContactImplCopyWithImpl(
      _$OdooContactImpl _value, $Res Function(_$OdooContactImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? completeAddress = null,
    Object? name = null,
    Object? parentId = freezed,
  }) {
    return _then(_$OdooContactImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      completeAddress: null == completeAddress
          ? _value.completeAddress
          : completeAddress // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as ParentIdModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OdooContactImpl implements _OdooContact {
  const _$OdooContactImpl(
      {required this.id,
      @JsonKey(name: 'contact_address_complete') required this.completeAddress,
      @JsonKey(name: 'display_name') required this.name,
      @JsonKey(name: 'parent_id')
      @BoolParentIdConverter()
      required this.parentId});

  factory _$OdooContactImpl.fromJson(Map<String, dynamic> json) =>
      _$$OdooContactImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'contact_address_complete')
  final String completeAddress;
  @override
  @JsonKey(name: 'display_name')
  final String name;
  @override
  @JsonKey(name: 'parent_id')
  @BoolParentIdConverter()
  final ParentIdModel? parentId;

  @override
  String toString() {
    return 'OdooContact(id: $id, completeAddress: $completeAddress, name: $name, parentId: $parentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OdooContactImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.completeAddress, completeAddress) ||
                other.completeAddress == completeAddress) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, completeAddress, name, parentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OdooContactImplCopyWith<_$OdooContactImpl> get copyWith =>
      __$$OdooContactImplCopyWithImpl<_$OdooContactImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OdooContactImplToJson(
      this,
    );
  }
}

abstract class _OdooContact implements OdooContact {
  const factory _OdooContact(
      {required final int id,
      @JsonKey(name: 'contact_address_complete')
      required final String completeAddress,
      @JsonKey(name: 'display_name') required final String name,
      @JsonKey(name: 'parent_id')
      @BoolParentIdConverter()
      required final ParentIdModel? parentId}) = _$OdooContactImpl;

  factory _OdooContact.fromJson(Map<String, dynamic> json) =
      _$OdooContactImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'contact_address_complete')
  String get completeAddress;
  @override
  @JsonKey(name: 'display_name')
  String get name;
  @override
  @JsonKey(name: 'parent_id')
  @BoolParentIdConverter()
  ParentIdModel? get parentId;
  @override
  @JsonKey(ignore: true)
  _$$OdooContactImplCopyWith<_$OdooContactImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ParentIdModel _$ParentIdModelFromJson(Map<String, dynamic> json) {
  return _ParentIdModel.fromJson(json);
}

/// @nodoc
mixin _$ParentIdModel {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParentIdModelCopyWith<ParentIdModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParentIdModelCopyWith<$Res> {
  factory $ParentIdModelCopyWith(
          ParentIdModel value, $Res Function(ParentIdModel) then) =
      _$ParentIdModelCopyWithImpl<$Res, ParentIdModel>;
  @useResult
  $Res call({@JsonKey(name: 'id') int? id});
}

/// @nodoc
class _$ParentIdModelCopyWithImpl<$Res, $Val extends ParentIdModel>
    implements $ParentIdModelCopyWith<$Res> {
  _$ParentIdModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ParentIdModelImplCopyWith<$Res>
    implements $ParentIdModelCopyWith<$Res> {
  factory _$$ParentIdModelImplCopyWith(
          _$ParentIdModelImpl value, $Res Function(_$ParentIdModelImpl) then) =
      __$$ParentIdModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'id') int? id});
}

/// @nodoc
class __$$ParentIdModelImplCopyWithImpl<$Res>
    extends _$ParentIdModelCopyWithImpl<$Res, _$ParentIdModelImpl>
    implements _$$ParentIdModelImplCopyWith<$Res> {
  __$$ParentIdModelImplCopyWithImpl(
      _$ParentIdModelImpl _value, $Res Function(_$ParentIdModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$ParentIdModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ParentIdModelImpl implements _ParentIdModel {
  const _$ParentIdModelImpl({@JsonKey(name: 'id') required this.id});

  factory _$ParentIdModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParentIdModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;

  @override
  String toString() {
    return 'ParentIdModel(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParentIdModelImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParentIdModelImplCopyWith<_$ParentIdModelImpl> get copyWith =>
      __$$ParentIdModelImplCopyWithImpl<_$ParentIdModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ParentIdModelImplToJson(
      this,
    );
  }
}

abstract class _ParentIdModel implements ParentIdModel {
  const factory _ParentIdModel({@JsonKey(name: 'id') required final int? id}) =
      _$ParentIdModelImpl;

  factory _ParentIdModel.fromJson(Map<String, dynamic> json) =
      _$ParentIdModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$ParentIdModelImplCopyWith<_$ParentIdModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
