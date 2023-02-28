import 'package:json_annotation/json_annotation.dart';

part 'location_properties_model.g.dart';

@JsonSerializable()
class LocationPropertiesModel {
  String? stopId;

  LocationPropertiesModel({
    required this.stopId,
  });

  factory LocationPropertiesModel.fromJson(Map<String, dynamic> json) =>
      _$LocationPropertiesModelFromJson(json);

  Map<String, dynamic> toJson() => _$LocationPropertiesModelToJson(this);
}
