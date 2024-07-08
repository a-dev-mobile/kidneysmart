// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiTokenErrorImpl _$$ApiTokenErrorImplFromJson(Map<String, dynamic> json) =>
    _$ApiTokenErrorImpl(
      TokenError.fromJson(json['tokenError'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ApiTokenErrorImplToJson(_$ApiTokenErrorImpl instance) =>
    <String, dynamic>{
      'tokenError': instance.tokenError,
      'runtimeType': instance.$type,
    };

_$ApiTokenSuccessImpl _$$ApiTokenSuccessImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiTokenSuccessImpl(
      TokenSuccess.fromJson(json['tokenSuccess'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ApiTokenSuccessImplToJson(
        _$ApiTokenSuccessImpl instance) =>
    <String, dynamic>{
      'tokenSuccess': instance.tokenSuccess,
      'runtimeType': instance.$type,
    };

_$TokenSuccessImpl _$$TokenSuccessImplFromJson(Map<String, dynamic> json) =>
    _$TokenSuccessImpl(
      id: json['id'] as int?,
      enumAuthStatus:
          authorizationStatusFromJson(json['authorization_status'] as int?),
      step: json['step'] as String?,
      ttl: json['ttl'] as int?,
      ttlDate: json['ttl_date'] as String?,
      token: json['token'] as String?,
      refreshToken: json['refresh_token'] as String?,
    );

Map<String, dynamic> _$$TokenSuccessImplToJson(_$TokenSuccessImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'authorization_status':
          authorizationStatusToJson(instance.enumAuthStatus),
      'step': instance.step,
      'ttl': instance.ttl,
      'ttl_date': instance.ttlDate,
      'token': instance.token,
      'refresh_token': instance.refreshToken,
    };

_$TokenErrorImpl _$$TokenErrorImplFromJson(Map<String, dynamic> json) =>
    _$TokenErrorImpl(
      message: json['message'] as String? ?? '',
      error: json['error'] as String? ?? '',
      label: json['label'] as String? ?? '',
    );

Map<String, dynamic> _$$TokenErrorImplToJson(_$TokenErrorImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'error': instance.error,
      'label': instance.label,
    };
