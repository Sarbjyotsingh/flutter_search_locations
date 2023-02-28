// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response_system_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SystemMessageModel _$SystemMessageModelFromJson(Map<String, dynamic> json) =>
    SystemMessageModel(
      type: json['type'] as String?,
      module: json['module'] as String?,
      code: json['code'] as int?,
      text: json['text'] as String?,
    );

Map<String, dynamic> _$SystemMessageModelToJson(SystemMessageModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'module': instance.module,
      'code': instance.code,
      'text': instance.text,
    };
