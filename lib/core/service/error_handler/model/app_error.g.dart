// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GeneralErrorImpl _$$GeneralErrorImplFromJson(Map<String, dynamic> json) =>
    _$GeneralErrorImpl(
      message: json['message'] as String,
      details: json['details'] as Map<String, dynamic>?,
      stackTrace: _stackTraceFromJson(json['stackTrace']),
      level: $enumDecodeNullable(_$EnumLogLevelEnumMap, json['level']) ??
          EnumLogLevel.error,
      isFatal: json['isFatal'] as bool? ?? true,
      type: json['type'] as String? ?? 'GeneralError',
      time: json['time'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$GeneralErrorImplToJson(_$GeneralErrorImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'details': instance.details,
      'stackTrace': _stackTraceToJson(instance.stackTrace),
      'level': _$EnumLogLevelEnumMap[instance.level]!,
      'isFatal': instance.isFatal,
      'type': instance.type,
      'time': instance.time,
      'runtimeType': instance.$type,
    };

const _$EnumLogLevelEnumMap = {
  EnumLogLevel.info: 'info',
  EnumLogLevel.debug: 'debug',
  EnumLogLevel.error: 'error',
  EnumLogLevel.warning: 'warning',
};

_$WidgetLifecycleErrorImpl _$$WidgetLifecycleErrorImplFromJson(
        Map<String, dynamic> json) =>
    _$WidgetLifecycleErrorImpl(
      message: json['message'] as String,
      details: json['details'] as Map<String, dynamic>?,
      stackTrace: _stackTraceFromJson(json['stackTrace']),
      level: $enumDecodeNullable(_$EnumLogLevelEnumMap, json['level']) ??
          EnumLogLevel.error,
      isFatal: json['isFatal'] as bool? ?? true,
      type: json['type'] as String? ?? 'WidgetLifecycleError',
      time: json['time'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WidgetLifecycleErrorImplToJson(
        _$WidgetLifecycleErrorImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'details': instance.details,
      'stackTrace': _stackTraceToJson(instance.stackTrace),
      'level': _$EnumLogLevelEnumMap[instance.level]!,
      'isFatal': instance.isFatal,
      'type': instance.type,
      'time': instance.time,
      'runtimeType': instance.$type,
    };

_$FrameworkErrorImpl _$$FrameworkErrorImplFromJson(Map<String, dynamic> json) =>
    _$FrameworkErrorImpl(
      message: json['message'] as String,
      details: json['details'] as Map<String, dynamic>?,
      stackTrace: _stackTraceFromJson(json['stackTrace']),
      level: $enumDecodeNullable(_$EnumLogLevelEnumMap, json['level']) ??
          EnumLogLevel.error,
      isFatal: json['isFatal'] as bool? ?? false,
      type: json['type'] as String? ?? 'FlutterFrameworkError',
      time: json['time'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$FrameworkErrorImplToJson(
        _$FrameworkErrorImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'details': instance.details,
      'stackTrace': _stackTraceToJson(instance.stackTrace),
      'level': _$EnumLogLevelEnumMap[instance.level]!,
      'isFatal': instance.isFatal,
      'type': instance.type,
      'time': instance.time,
      'runtimeType': instance.$type,
    };

_$UncaughtErrorImpl _$$UncaughtErrorImplFromJson(Map<String, dynamic> json) =>
    _$UncaughtErrorImpl(
      message: json['message'] as String,
      details: json['details'] as Map<String, dynamic>?,
      stackTrace: _stackTraceFromJson(json['stackTrace']),
      level: $enumDecodeNullable(_$EnumLogLevelEnumMap, json['level']) ??
          EnumLogLevel.error,
      isFatal: json['isFatal'] as bool? ?? true,
      type: json['type'] as String? ?? 'UncaughtError',
      time: json['time'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UncaughtErrorImplToJson(_$UncaughtErrorImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'details': instance.details,
      'stackTrace': _stackTraceToJson(instance.stackTrace),
      'level': _$EnumLogLevelEnumMap[instance.level]!,
      'isFatal': instance.isFatal,
      'type': instance.type,
      'time': instance.time,
      'runtimeType': instance.$type,
    };

_$PlatformErrorImpl _$$PlatformErrorImplFromJson(Map<String, dynamic> json) =>
    _$PlatformErrorImpl(
      message: json['message'] as String,
      details: json['details'] as Map<String, dynamic>?,
      stackTrace: _stackTraceFromJson(json['stackTrace']),
      level: $enumDecodeNullable(_$EnumLogLevelEnumMap, json['level']) ??
          EnumLogLevel.warning,
      isFatal: json['isFatal'] as bool? ?? false,
      type: json['type'] as String? ?? 'PlatformError',
      time: json['time'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PlatformErrorImplToJson(_$PlatformErrorImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'details': instance.details,
      'stackTrace': _stackTraceToJson(instance.stackTrace),
      'level': _$EnumLogLevelEnumMap[instance.level]!,
      'isFatal': instance.isFatal,
      'type': instance.type,
      'time': instance.time,
      'runtimeType': instance.$type,
    };

_$ApiErrorImpl _$$ApiErrorImplFromJson(Map<String, dynamic> json) =>
    _$ApiErrorImpl(
      message: json['message'] as String,
      details: json['details'] as Map<String, dynamic>?,
      stackTrace: _stackTraceFromJson(json['stackTrace']),
      level: $enumDecodeNullable(_$EnumLogLevelEnumMap, json['level']) ??
          EnumLogLevel.error,
      isFatal: json['isFatal'] as bool? ?? true,
      type: json['type'] as String? ?? 'ApiError',
      time: json['time'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ApiErrorImplToJson(_$ApiErrorImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'details': instance.details,
      'stackTrace': _stackTraceToJson(instance.stackTrace),
      'level': _$EnumLogLevelEnumMap[instance.level]!,
      'isFatal': instance.isFatal,
      'type': instance.type,
      'time': instance.time,
      'runtimeType': instance.$type,
    };

_$LocalStorageErrorImpl _$$LocalStorageErrorImplFromJson(
        Map<String, dynamic> json) =>
    _$LocalStorageErrorImpl(
      message: json['message'] as String,
      details: json['details'] as Map<String, dynamic>?,
      stackTrace: _stackTraceFromJson(json['stackTrace']),
      level: $enumDecodeNullable(_$EnumLogLevelEnumMap, json['level']) ??
          EnumLogLevel.error,
      isFatal: json['isFatal'] as bool? ?? true,
      type: json['type'] as String? ?? 'LocalStorageError',
      time: json['time'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LocalStorageErrorImplToJson(
        _$LocalStorageErrorImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'details': instance.details,
      'stackTrace': _stackTraceToJson(instance.stackTrace),
      'level': _$EnumLogLevelEnumMap[instance.level]!,
      'isFatal': instance.isFatal,
      'type': instance.type,
      'time': instance.time,
      'runtimeType': instance.$type,
    };

_$AuthenticationErrorImpl _$$AuthenticationErrorImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthenticationErrorImpl(
      message: json['message'] as String,
      details: json['details'] as Map<String, dynamic>?,
      stackTrace: _stackTraceFromJson(json['stackTrace']),
      level: $enumDecodeNullable(_$EnumLogLevelEnumMap, json['level']) ??
          EnumLogLevel.error,
      isFatal: json['isFatal'] as bool? ?? true,
      type: json['type'] as String? ?? 'AuthenticationError',
      time: json['time'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AuthenticationErrorImplToJson(
        _$AuthenticationErrorImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'details': instance.details,
      'stackTrace': _stackTraceToJson(instance.stackTrace),
      'level': _$EnumLogLevelEnumMap[instance.level]!,
      'isFatal': instance.isFatal,
      'type': instance.type,
      'time': instance.time,
      'runtimeType': instance.$type,
    };
