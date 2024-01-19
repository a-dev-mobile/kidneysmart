// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kidneysmart/core/utils/json_serializable_util.dart';

import 'package:kidneysmart/feature/verification_code/enum/enum_backend_status_verification_code.dart';

part 'req_res_verification_code.freezed.dart';
part 'req_res_verification_code.g.dart';

@freezed
class RequestVerificationCode with _$RequestVerificationCode {
  const factory RequestVerificationCode({
    required String email,
    required String code,
  }) = _RequestVerificationCode;

  factory RequestVerificationCode.fromJson(Map<String, Object?> json) =>
      _$RequestVerificationCodeFromJson(json);
}

@freezed
class ResponseVerificationCode with _$ResponseVerificationCode {
  const factory ResponseVerificationCode({
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
    EnumBackendStatusVerificationCode? enumBackendStatusVerificationCode,
  }) = _ResponseVerificationCode;

  factory ResponseVerificationCode.fromJson(Map<String, Object?> json) =>
      _$ResponseVerificationCodeFromJson(json);
}

String? _verificationCodeStatusToJson(
  EnumBackendStatusVerificationCode? status,
) =>
    status?.name;

EnumBackendStatusVerificationCode? _statusFromJson(
  String? value,
) {
  return EnumBackendStatusVerificationCode.fromNameOrNull(value);
}
