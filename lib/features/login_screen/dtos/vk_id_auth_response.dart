import 'package:json_annotation/json_annotation.dart';
import 'package:pilotiv_id/features/login_screen/dtos/vk_id_auth_response_payload.dart';

part 'vk_id_auth_response.g.dart';

/// Модель ответа авторизации VK ID.
@JsonSerializable()
class VkIdAuthResponse {
  final VkIdAuthResponsePayload payload;
  final String state;

  VkIdAuthResponse({required this.payload, required this.state});

  factory VkIdAuthResponse.fromJson(Map<String, dynamic> json) => _$VkIdAuthResponseFromJson(json);

  Map<String, dynamic> toJson() => _$VkIdAuthResponseToJson(this);

}