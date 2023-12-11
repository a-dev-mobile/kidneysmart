// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppShutdownImpl _$$AppShutdownImplFromJson(Map<String, dynamic> json) =>
    _$AppShutdownImpl(
      app_id: json['app_id'] as String?,
      user_id: json['user_id'] as String?,
      screen: json['screen'] as String?,
    );

Map<String, dynamic> _$$AppShutdownImplToJson(_$AppShutdownImpl instance) =>
    <String, dynamic>{
      'app_id': instance.app_id,
      'user_id': instance.user_id,
      'screen': instance.screen,
    };

_$AppStartupImpl _$$AppStartupImplFromJson(Map<String, dynamic> json) =>
    _$AppStartupImpl(
      app_id: json['app_id'] as String?,
      user_id: json['user_id'] as String?,
      last_step: json['last_step'] as String?,
    );

Map<String, dynamic> _$$AppStartupImplToJson(_$AppStartupImpl instance) =>
    <String, dynamic>{
      'app_id': instance.app_id,
      'user_id': instance.user_id,
      'last_step': instance.last_step,
    };
