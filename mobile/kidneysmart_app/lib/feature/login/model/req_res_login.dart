// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kidneysmart/feature/login/enum/enum_backend_status_login.dart';

part 'req_res_login.freezed.dart';
part 'req_res_login.g.dart';

@freezed
class RequestLogin with _$RequestLogin {
  const factory RequestLogin({
    required String email,
  }) = _RequestLogin;

  factory RequestLogin.fromJson(Map<String, Object?> json) =>
      _$RequestLoginFromJson(json);
}

@freezed
class ResponseLogin with _$ResponseLogin {
  const factory ResponseLogin({
    String? message,
    @JsonKey(
      name: 'status',
      toJson: _loginStatusToJson,
      fromJson: _loginStatusFromJson,
    )
    EnumBackendStatusLogin? enumBackendStatusLogin,
  }) = _ResponseLogin;

  factory ResponseLogin.fromJson(Map<String, Object?> json) =>
      _$ResponseLoginFromJson(json);
}

String? _loginStatusToJson(EnumBackendStatusLogin? status) => status?.name;

EnumBackendStatusLogin? _loginStatusFromJson(String? value) {
  return EnumBackendStatusLogin.fromNameOrNull(value);
}
