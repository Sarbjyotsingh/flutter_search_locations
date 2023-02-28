import 'package:flutter_search_locations/models/api_repsonse_models/api_response_system_message.dart';
import 'package:flutter_search_locations/models/location_models/location_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'search_response_model.g.dart';

@JsonSerializable()
class SearchResponseModel {
  String? version;
  List<LocationModel> locations;
  List<SystemMessageModel>? systemMessages;

  SearchResponseModel({
    this.version,
    this.locations = const [],
    this.systemMessages,
  });
  factory SearchResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SearchResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$SearchResponseModelToJson(this);
}
