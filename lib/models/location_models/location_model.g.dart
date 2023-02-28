// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocationModel _$LocationModelFromJson(Map<String, dynamic> json) =>
    LocationModel(
      id: json['id'] as String?,
      isGlobalId: json['isGlobalId'] as bool?,
      name: json['name'] as String?,
      disassembledName: json['disassembledName'] as String?,
      coord: (json['coord'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      type: json['type'] as String?,
      matchQuality: json['matchQuality'] as int?,
      isBest: json['isBest'] as bool?,
      productClasses: (json['productClasses'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      parent: json['parent'] == null
          ? null
          : LocationParentModel.fromJson(
              json['parent'] as Map<String, dynamic>),
      properties: json['properties'] == null
          ? null
          : LocationPropertiesModel.fromJson(
              json['properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LocationModelToJson(LocationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isGlobalId': instance.isGlobalId,
      'name': instance.name,
      'disassembledName': instance.disassembledName,
      'coord': instance.coord,
      'type': instance.type,
      'matchQuality': instance.matchQuality,
      'isBest': instance.isBest,
      'productClasses': instance.productClasses,
      'parent': instance.parent,
      'properties': instance.properties,
    };
