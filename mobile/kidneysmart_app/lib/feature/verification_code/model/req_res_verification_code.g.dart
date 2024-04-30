// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'req_res_verification_code.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestVerificationCodeImpl _$$RequestVerificationCodeImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestVerificationCodeImpl(
      email: json['email'] as String,
      code: json['code'] as String,
    );

Map<String, dynamic> _$$RequestVerificationCodeImplToJson(
        _$RequestVerificationCodeImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'code': instance.code,
    };

_$ResponseVerificationCodeImpl _$$ResponseVerificationCodeImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseVerificationCodeImpl(
      message: json['message'] as String?,
      accessToken: json['accessToken'] as String?,
      refreshToken: json['refreshToken'] as String?,
      expiresIn: dateTimeFromJson(json['expiresIn'] as String?),
      enumBackendStatusVerificationCode:
          _statusFromJson(json['status'] as String?),
    );

Map<String, dynamic> _$$ResponseVerificationCodeImplToJson(
        _$ResponseVerificationCodeImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'expiresIn': dateTimeToJson(instance.expiresIn),
      'status': _verificationCodeStatusToJson(
          instance.enumBackendStatusVerificationCode),
    };
