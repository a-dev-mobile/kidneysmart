// ignore_for_file: non_constant_identifier_names, invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kidneysmart/api/utils/helper_for_json.dart';
import 'package:kidneysmart/core/enum/enum_auth_status.dart';

part 'api_token.freezed.dart';
part 'api_token.g.dart';

@freezed
class ApiToken with _$ApiToken {
  factory ApiToken.error(
    TokenError tokenError,
  ) = ApiTokenError;

  factory ApiToken.success(
    TokenSuccess tokenSuccess,
  ) = ApiTokenSuccess;

  factory ApiToken.fromJson(Map<String, dynamic> json) =>
      _$ApiTokenFromJson(json);
}

@freezed
class TokenSuccess with _$TokenSuccess {
  const factory TokenSuccess({
    @JsonKey(name: 'id') int? id,
    @JsonKey(
      name: 'authorization_status',
      toJson: authorizationStatusToJson,
      fromJson: authorizationStatusFromJson,
    )
    EnumAuthStatus? enumAuthStatus,
    @JsonKey(name: 'step') String? step,
    @JsonKey(name: 'ttl') int? ttl,
    @JsonKey(name: 'ttl_date') String? ttlDate,
    @JsonKey(name: 'token') String? token,
    @JsonKey(name: 'refresh_token') String? refreshToken,
  }) = _TokenSuccess;

  factory TokenSuccess.fromJson(Map<String, dynamic> json) =>
      _$TokenSuccessFromJson(json);
}

@freezed
class TokenError with _$TokenError {
  factory TokenError({
    @Default('') String message,
    @Default('') String error,
    @Default('') String label,
  }) = _TokenError;

  factory TokenError.fromJson(Map<String, dynamic> json) =>
      _$TokenErrorFromJson(json);
}
