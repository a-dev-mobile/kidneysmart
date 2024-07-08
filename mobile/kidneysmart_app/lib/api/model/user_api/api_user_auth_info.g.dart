// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_user_auth_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiUserAuthInfoImpl _$$ApiUserAuthInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiUserAuthInfoImpl(
      id: json['id'] as int?,
      enumAuthStatus: json['authorization_status'] == null
          ? EnumAuthStatus.activeOrRequestLoan
          : authorizationStatusFromJson(json['authorization_status'] as int?),
      enumStep: stepFromJson(json['step'] as String?),
    );

Map<String, dynamic> _$$ApiUserAuthInfoImplToJson(
        _$ApiUserAuthInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'authorization_status':
          authorizationStatusToJson(instance.enumAuthStatus),
      'step': stepToJson(instance.enumStep),
    };
