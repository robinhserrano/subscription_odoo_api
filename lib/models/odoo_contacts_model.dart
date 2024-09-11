// ignore_for_file: invalid_annotation_target, always_put_required_named_parameters_first

import 'package:freezed_annotation/freezed_annotation.dart';
part 'odoo_contacts_model.freezed.dart';
part 'odoo_contacts_model.g.dart';

@freezed
class OdooContact with _$OdooContact {
  const factory OdooContact({
    required int id,
    @JsonKey(name: 'contact_address_complete') required String completeAddress,
    @JsonKey(name: 'display_name') required String name,
    @JsonKey(name: 'parent_id')
    @BoolParentIdConverter()
    required ParentIdModel? parentId,
  }) = _OdooContact;

  factory OdooContact.fromJson(Map<String, dynamic> json) =>
      _$OdooContactFromJson(json);
}

class BoolParentIdConverter extends JsonConverter<ParentIdModel, dynamic> {
  const BoolParentIdConverter();

  @override
  ParentIdModel fromJson(dynamic json) {
    if (json is Map<String, dynamic>) return ParentIdModel.fromJson(json);
    return const ParentIdModel(id: null);
  }

  @override
  dynamic toJson(ParentIdModel object) => object;
}

@freezed
class ParentIdModel with _$ParentIdModel {
  const factory ParentIdModel({
    @JsonKey(name: 'id') required int? id,
  }) = _ParentIdModel;

  factory ParentIdModel.fromJson(Map<String, dynamic> json) =>
      _$ParentIdModelFromJson(json);
}
