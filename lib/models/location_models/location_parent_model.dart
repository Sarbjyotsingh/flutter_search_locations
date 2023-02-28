import 'package:json_annotation/json_annotation.dart';

part 'location_parent_model.g.dart';

@JsonSerializable()
class LocationParentModel {
  String? id;
  String? name;
  String? type;

  LocationParentModel({
    required this.id,
    required this.name,
    required this.type,
  });
  factory LocationParentModel.fromJson(Map<String, dynamic> json) =>
      _$LocationParentModelFromJson(json);

  Map<String, dynamic> toJson() => _$LocationParentModelToJson(this);
}
