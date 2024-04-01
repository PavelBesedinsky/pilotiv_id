import 'package:json_annotation/json_annotation.dart';

part 'vk_id_auth_response_payload.g.dart';

/// Полезная нагрузка ответа авторизации VK ID.
@JsonSerializable()
class VkIdAuthResponsePayload {
  final num auth;
  final String token;
  final num ttl;
  final String type;
  final String uuid;
  final bool? loadExternalUsers;

  VkIdAuthResponsePayload({required this.auth, required this.token, required this.ttl, required this.type, required this.uuid, required this.loadExternalUsers});

  factory VkIdAuthResponsePayload.fromJson(Map<String, dynamic> json) => _$VkIdAuthResponsePayloadFromJson(json);

  Map<String, dynamic> toJson() => _$VkIdAuthResponsePayloadToJson(this);
}
