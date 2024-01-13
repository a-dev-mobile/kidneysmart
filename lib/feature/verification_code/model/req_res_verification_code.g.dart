// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'req_res_verification_code.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestVerificationCodeImpl _$$RequestVerificationCodeImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestVerificationCodeImpl(
      email: json['email'] as String,
    );

Map<String, dynamic> _$$RequestVerificationCodeImplToJson(
        _$RequestVerificationCodeImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
    };

_$ResponseVerificationCodeImpl _$$ResponseVerificationCodeImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseVerificationCodeImpl(
      message: json['message'] as String?,
      enumResponseVerificationCodeStatus:
          _verificationCodeStatusFromJson(json['status'] as String?),
    );

Map<String, dynamic> _$$ResponseVerificationCodeImplToJson(
        _$ResponseVerificationCodeImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status': _verificationCodeStatusToJson(
          instance.enumResponseVerificationCodeStatus),
    };
