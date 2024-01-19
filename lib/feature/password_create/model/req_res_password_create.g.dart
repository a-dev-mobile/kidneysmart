// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'req_res_password_create.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestPasswordCreateImpl _$$RequestPasswordCreateImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestPasswordCreateImpl(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$RequestPasswordCreateImplToJson(
        _$RequestPasswordCreateImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };

_$ResponsePasswordCreateImpl _$$ResponsePasswordCreateImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponsePasswordCreateImpl(
      message: json['message'] as String?,
      enumBackendStatus: _statusFromJson(json['status'] as String?),
    );

Map<String, dynamic> _$$ResponsePasswordCreateImplToJson(
        _$ResponsePasswordCreateImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status': _statusToJson(instance.enumBackendStatus),
    };
