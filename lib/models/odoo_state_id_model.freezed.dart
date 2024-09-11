// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'odoo_state_id_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OdooStateId _$OdooStateIdFromJson(Map<String, dynamic> json) {
  return _OdooStateId.fromJson(json);
}

/// @nodoc
mixin _$OdooStateId {
  @JsonKey(name: 'state_ids')
  List<StateIds>? get stateIds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OdooStateIdCopyWith<OdooStateId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OdooStateIdCopyWith<$Res> {
  factory $OdooStateIdCopyWith(
          OdooStateId value, $Res Function(OdooStateId) then) =
      _$OdooStateIdCopyWithImpl<$Res, OdooStateId>;
  @useResult
  $Res call({@JsonKey(name: 'state_ids') List<StateIds>? stateIds});
}

/// @nodoc
class _$OdooStateIdCopyWithImpl<$Res, $Val extends OdooStateId>
    implements $OdooStateIdCopyWith<$Res> {
  _$OdooStateIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateIds = freezed,
  }) {
    return _then(_value.copyWith(
      stateIds: freezed == stateIds
          ? _value.stateIds
          : stateIds // ignore: cast_nullable_to_non_nullable
              as List<StateIds>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OdooStateIdImplCopyWith<$Res>
    implements $OdooStateIdCopyWith<$Res> {
  factory _$$OdooStateIdImplCopyWith(
          _$OdooStateIdImpl value, $Res Function(_$OdooStateIdImpl) then) =
      __$$OdooStateIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'state_ids') List<StateIds>? stateIds});
}

/// @nodoc
class __$$OdooStateIdImplCopyWithImpl<$Res>
    extends _$OdooStateIdCopyWithImpl<$Res, _$OdooStateIdImpl>
    implements _$$OdooStateIdImplCopyWith<$Res> {
  __$$OdooStateIdImplCopyWithImpl(
      _$OdooStateIdImpl _value, $Res Function(_$OdooStateIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateIds = freezed,
  }) {
    return _then(_$OdooStateIdImpl(
      stateIds: freezed == stateIds
          ? _value._stateIds
          : stateIds // ignore: cast_nullable_to_non_nullable
              as List<StateIds>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OdooStateIdImpl implements _OdooStateId {
  const _$OdooStateIdImpl(
      {@JsonKey(name: 'state_ids') required final List<StateIds>? stateIds})
      : _stateIds = stateIds;

  factory _$OdooStateIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$OdooStateIdImplFromJson(json);

  final List<StateIds>? _stateIds;
  @override
  @JsonKey(name: 'state_ids')
  List<StateIds>? get stateIds {
    final value = _stateIds;
    if (value == null) return null;
    if (_stateIds is EqualUnmodifiableListView) return _stateIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'OdooStateId(stateIds: $stateIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OdooStateIdImpl &&
            const DeepCollectionEquality().equals(other._stateIds, _stateIds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_stateIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OdooStateIdImplCopyWith<_$OdooStateIdImpl> get copyWith =>
      __$$OdooStateIdImplCopyWithImpl<_$OdooStateIdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OdooStateIdImplToJson(
      this,
    );
  }
}

abstract class _OdooStateId implements OdooStateId {
  const factory _OdooStateId(
      {@JsonKey(name: 'state_ids')
      required final List<StateIds>? stateIds}) = _$OdooStateIdImpl;

  factory _OdooStateId.fromJson(Map<String, dynamic> json) =
      _$OdooStateIdImpl.fromJson;

  @override
  @JsonKey(name: 'state_ids')
  List<StateIds>? get stateIds;
  @override
  @JsonKey(ignore: true)
  _$$OdooStateIdImplCopyWith<_$OdooStateIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StateIds _$StateIdsFromJson(Map<String, dynamic> json) {
  return _StateIds.fromJson(json);
}

/// @nodoc
mixin _$StateIds {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StateIdsCopyWith<StateIds> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateIdsCopyWith<$Res> {
  factory $StateIdsCopyWith(StateIds value, $Res Function(StateIds) then) =
      _$StateIdsCopyWithImpl<$Res, StateIds>;
  @useResult
  $Res call({int id, String name, String code});
}

/// @nodoc
class _$StateIdsCopyWithImpl<$Res, $Val extends StateIds>
    implements $StateIdsCopyWith<$Res> {
  _$StateIdsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StateIdsImplCopyWith<$Res>
    implements $StateIdsCopyWith<$Res> {
  factory _$$StateIdsImplCopyWith(
          _$StateIdsImpl value, $Res Function(_$StateIdsImpl) then) =
      __$$StateIdsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String code});
}

/// @nodoc
class __$$StateIdsImplCopyWithImpl<$Res>
    extends _$StateIdsCopyWithImpl<$Res, _$StateIdsImpl>
    implements _$$StateIdsImplCopyWith<$Res> {
  __$$StateIdsImplCopyWithImpl(
      _$StateIdsImpl _value, $Res Function(_$StateIdsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? code = null,
  }) {
    return _then(_$StateIdsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StateIdsImpl implements _StateIds {
  const _$StateIdsImpl(
      {required this.id, required this.name, required this.code});

  factory _$StateIdsImpl.fromJson(Map<String, dynamic> json) =>
      _$$StateIdsImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String code;

  @override
  String toString() {
    return 'StateIds(id: $id, name: $name, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateIdsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StateIdsImplCopyWith<_$StateIdsImpl> get copyWith =>
      __$$StateIdsImplCopyWithImpl<_$StateIdsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StateIdsImplToJson(
      this,
    );
  }
}

abstract class _StateIds implements StateIds {
  const factory _StateIds(
      {required final int id,
      required final String name,
      required final String code}) = _$StateIdsImpl;

  factory _StateIds.fromJson(Map<String, dynamic> json) =
      _$StateIdsImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get code;
  @override
  @JsonKey(ignore: true)
  _$$StateIdsImplCopyWith<_$StateIdsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
