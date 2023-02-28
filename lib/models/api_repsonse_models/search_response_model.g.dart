// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchResponseModel _$SearchResponseModelFromJson(Map<String, dynamic> json) =>
    SearchResponseModel(
      version: json['version'] as String?,
      locations: (json['locations'] as List<dynamic>?)
              ?.map((e) => LocationModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      systemMessages: (json['systemMessages'] as List<dynamic>?)
          ?.map((e) => SystemMessageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SearchResponseModelToJson(
        SearchResponseModel instance) =>
    <String, dynamic>{
      'version': instance.version,
      'locations': instance.locations,
      'systemMessages': instance.systemMessages,
    };
