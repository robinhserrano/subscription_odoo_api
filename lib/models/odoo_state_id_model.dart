// ignore_for_file: invalid_annotation_target, always_put_required_named_parameters_first

import 'package:freezed_annotation/freezed_annotation.dart';
part 'odoo_state_id_model.freezed.dart';
part 'odoo_state_id_model.g.dart';

@freezed
class OdooStateId with _$OdooStateId {
  const factory OdooStateId({
    @JsonKey(name: 'state_ids') required List<StateIds>? stateIds,
  }) = _OdooStateId;

  factory OdooStateId.fromJson(Map<String, dynamic> json) =>
      _$OdooStateIdFromJson(json);
}

@freezed
class StateIds with _$StateIds {
  const factory StateIds({
    required int id,
    required String name,
    required String code, //B
  }) = _StateIds;

  factory StateIds.fromJson(Map<String, dynamic> json) =>
      _$StateIdsFromJson(json);
}

