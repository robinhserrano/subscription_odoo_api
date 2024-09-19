// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'odoo_contacts_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OdooContactImpl _$$OdooContactImplFromJson(Map<String, dynamic> json) =>
    _$OdooContactImpl(
      id: (json['id'] as num).toInt(),
      completeAddress: json['contact_address_complete'] as String,
      name: json['display_name'] as String,
      parentId: const BoolParentIdConverter().fromJson(json['parent_id']),
      street: const BoolStringNullableConverter().fromJson(json['street']),
      street2: const BoolStringNullableConverter().fromJson(json['street2']),
      zip: const BoolStringNullableConverter().fromJson(json['zip']),
      city: const BoolStringNullableConverter().fromJson(json['city']),
    );

Map<String, dynamic> _$$OdooContactImplToJson(_$OdooContactImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'contact_address_complete': instance.completeAddress,
      'display_name': instance.name,
      'parent_id': _$JsonConverterToJson<dynamic, ParentIdModel>(
          instance.parentId, const BoolParentIdConverter().toJson),
      'street': const BoolStringNullableConverter().toJson(instance.street),
      'street2': const BoolStringNullableConverter().toJson(instance.street2),
      'zip': const BoolStringNullableConverter().toJson(instance.zip),
      'city': const BoolStringNullableConverter().toJson(instance.city),
    };

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);

_$ParentIdModelImpl _$$ParentIdModelImplFromJson(Map<String, dynamic> json) =>
    _$ParentIdModelImpl(
      id: (json['id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ParentIdModelImplToJson(_$ParentIdModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
