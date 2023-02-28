import 'package:flutter_search_locations/models/location_models/location_parent_model.dart';
import 'package:flutter_search_locations/models/location_models/location_properties_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'location_model.g.dart';

@JsonSerializable()
class LocationModel {
  String? id;
  bool? isGlobalId;
  String? name;
  String? disassembledName;
  List<double>? coord;
  String? type;
  int? matchQuality;
  bool? isBest;
  List<int>? productClasses;
  LocationParentModel? parent;
  LocationPropertiesModel? properties;

  LocationModel({
    required this.id,
    required this.isGlobalId,
    required this.name,
    required this.disassembledName,
    required this.coord,
    required this.type,
    required this.matchQuality,
    required this.isBest,
    required this.productClasses,
    required this.parent,
    required this.properties,
  });
  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);

  Map<String, dynamic> toJson() => _$LocationModelToJson(this);
}
