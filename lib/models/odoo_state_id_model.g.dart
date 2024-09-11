// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'odoo_state_id_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OdooStateIdImpl _$$OdooStateIdImplFromJson(Map<String, dynamic> json) =>
    _$OdooStateIdImpl(
      stateIds: (json['state_ids'] as List<dynamic>?)
          ?.map((e) => StateIds.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OdooStateIdImplToJson(_$OdooStateIdImpl instance) =>
    <String, dynamic>{
      'state_ids': instance.stateIds,
    };

_$StateIdsImpl _$$StateIdsImplFromJson(Map<String, dynamic> json) =>
    _$StateIdsImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      code: json['code'] as String,
    );

Map<String, dynamic> _$$StateIdsImplToJson(_$StateIdsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
    };
