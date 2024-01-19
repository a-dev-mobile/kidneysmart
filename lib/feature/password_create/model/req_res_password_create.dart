// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kidneysmart/core/utils/json_serializable_util.dart';
import 'package:kidneysmart/feature/password_create/enum/enum_backend_status_password_create.dart';

import 'package:kidneysmart/feature/verification_code/enum/enum_backend_status_verification_code.dart';

part 'req_res_password_create.freezed.dart';
part 'req_res_password_create.g.dart';

@freezed
class RequestPasswordCreate with _$RequestPasswordCreate {
  const factory RequestPasswordCreate({
    required String email,
    required String password,
  }) = _RequestPasswordCreate;

  factory RequestPasswordCreate.fromJson(Map<String, Object?> json) =>
      _$RequestPasswordCreateFromJson(json);
}

@freezed
class ResponsePasswordCreate with _$ResponsePasswordCreate {
  const factory ResponsePasswordCreate({
    String? message,

    @JsonKey(
      name: 'status',
      toJson: _statusToJson,
      fromJson: _statusFromJson,
    )
    EnumBackendStatusPasswordCreate? enumBackendStatus,
  }) = _ResponsePasswordCreate;

  factory ResponsePasswordCreate.fromJson(Map<String, Object?> json) =>
      _$ResponsePasswordCreateFromJson(json);
}

String? _statusToJson(
  EnumBackendStatusPasswordCreate? status,
) =>
    status?.name;

EnumBackendStatusPasswordCreate? _statusFromJson(
  String? value,
) {
  return EnumBackendStatusPasswordCreate.fromNameOrNull(value);
}
