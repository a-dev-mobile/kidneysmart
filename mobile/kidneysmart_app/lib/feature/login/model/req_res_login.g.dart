// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'req_res_login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestLoginImpl _$$RequestLoginImplFromJson(Map<String, dynamic> json) =>
    _$RequestLoginImpl(
      email: json['email'] as String,
    );

Map<String, dynamic> _$$RequestLoginImplToJson(_$RequestLoginImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
    };

_$ResponseLoginImpl _$$ResponseLoginImplFromJson(Map<String, dynamic> json) =>
    _$ResponseLoginImpl(
      message: json['message'] as String?,
      enumBackendStatusLogin: _loginStatusFromJson(json['status'] as String?),
    );

Map<String, dynamic> _$$ResponseLoginImplToJson(_$ResponseLoginImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status': _loginStatusToJson(instance.enumBackendStatusLogin),
    };
