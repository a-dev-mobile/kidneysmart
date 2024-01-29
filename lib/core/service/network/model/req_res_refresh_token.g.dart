// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'req_res_refresh_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestRefreshTokenImpl _$$RequestRefreshTokenImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestRefreshTokenImpl(
      refreshToken: json['refreshToken'] as String,
    );

Map<String, dynamic> _$$RequestRefreshTokenImplToJson(
        _$RequestRefreshTokenImpl instance) =>
    <String, dynamic>{
      'refreshToken': instance.refreshToken,
    };

_$ResponseRefreshTokenImpl _$$ResponseRefreshTokenImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseRefreshTokenImpl(
      message: json['message'] as String?,
      accessToken: json['accessToken'] as String?,
      refreshToken: json['refreshToken'] as String?,
      expiresIn: dateTimeFromJson(json['expiresIn'] as String?),
      enumBackendRefreshToken: _statusFromJson(json['status'] as String?),
    );

Map<String, dynamic> _$$ResponseRefreshTokenImplToJson(
        _$ResponseRefreshTokenImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'expiresIn': dateTimeToJson(instance.expiresIn),
      'status': _verificationCodeStatusToJson(instance.enumBackendRefreshToken),
    };
