// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kidneysmart/core/service/network/enum/enum_backend_status_refresh_token.dart';
import 'package:kidneysmart/core/utils/json_serializable_util.dart';

import 'package:kidneysmart/feature/verification_code/enum/enum_backend_status_verification_code.dart';

part 'req_res_refresh_token.freezed.dart';
part 'req_res_refresh_token.g.dart';

@freezed
class RequestRefreshToken with _$RequestRefreshToken {
  const factory RequestRefreshToken({
    required String refreshToken,
  }) = _RequestRefreshToken;

  factory RequestRefreshToken.fromJson(Map<String, Object?> json) =>
      _$RequestRefreshTokenFromJson(json);
}

@freezed
class ResponseRefreshToken with _$ResponseRefreshToken {
  const factory ResponseRefreshToken({
    String? message,
    String? accessToken,
    String? refreshToken,
    @JsonKey(
      name: 'expiresIn',
      toJson: dateTimeToJson,
      fromJson: dateTimeFromJson,
    )
    DateTime? expiresIn,
    @JsonKey(
      name: 'status',
      toJson: _verificationCodeStatusToJson,
      fromJson: _statusFromJson,
    )
    EnumBackendStatusRefreshToken? enumBackendRefreshToken,
  }) = _ResponseRefreshToken;

  factory ResponseRefreshToken.fromJson(Map<String, Object?> json) =>
      _$ResponseRefreshTokenFromJson(json);
}

String? _verificationCodeStatusToJson(
  EnumBackendStatusRefreshToken? status,
) =>
    status?.name;

EnumBackendStatusRefreshToken? _statusFromJson(
  String? value,
) {
  return EnumBackendStatusRefreshToken.fromNameOrNull(value);
}
