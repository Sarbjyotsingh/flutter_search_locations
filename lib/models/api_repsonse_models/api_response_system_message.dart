import 'package:json_annotation/json_annotation.dart';

part 'api_response_system_message.g.dart';

@JsonSerializable()
class SystemMessageModel {
  final String? type;
  final String? module;
  final int? code;
  final String? text;

  SystemMessageModel({
    required this.type,
    required this.module,
    required this.code,
    required this.text,
  });

  factory SystemMessageModel.fromJson(Map<String, dynamic> json) =>
      _$SystemMessageModelFromJson(json);

  Map<String, dynamic> toJson() => _$SystemMessageModelToJson(this);
}
