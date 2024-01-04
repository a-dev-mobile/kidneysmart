// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_update_notifier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppUpdateStateImpl _$$AppUpdateStateImplFromJson(Map<String, dynamic> json) =>
    _$AppUpdateStateImpl(
      enumStatus:
          $enumDecodeNullable(_$EnumStatusEnumMap, json['enumStatus']) ??
              EnumStatus.init,
      apiAppUpdateCheckRes: json['apiAppUpdateCheckRes'] == null
          ? const ApiAppUpdateCheckRes.init()
          : ApiAppUpdateCheckRes.fromJson(
              json['apiAppUpdateCheckRes'] as Map<String, dynamic>),
      updateProgress: json['updateProgress'] == null
          ? const UpdateProgress.init()
          : UpdateProgress.fromJson(
              json['updateProgress'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AppUpdateStateImplToJson(
        _$AppUpdateStateImpl instance) =>
    <String, dynamic>{
      'enumStatus': _$EnumStatusEnumMap[instance.enumStatus]!,
      'apiAppUpdateCheckRes': instance.apiAppUpdateCheckRes,
      'updateProgress': instance.updateProgress,
    };

const _$EnumStatusEnumMap = {
  EnumStatus.init: 'init',
  EnumStatus.load: 'load',
  EnumStatus.success: 'success',
  EnumStatus.error: 'error',
};

_$UpdateProgressInitImpl _$$UpdateProgressInitImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateProgressInitImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UpdateProgressInitImplToJson(
        _$UpdateProgressInitImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$UpdateProgressLoadImpl _$$UpdateProgressLoadImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateProgressLoadImpl(
      received: json['received'] as int? ?? 0,
      total: json['total'] as int? ?? 0,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UpdateProgressLoadImplToJson(
        _$UpdateProgressLoadImpl instance) =>
    <String, dynamic>{
      'received': instance.received,
      'total': instance.total,
      'runtimeType': instance.$type,
    };

_$UpdateProgressSuccessImpl _$$UpdateProgressSuccessImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateProgressSuccessImpl(
      filePath: json['filePath'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UpdateProgressSuccessImplToJson(
        _$UpdateProgressSuccessImpl instance) =>
    <String, dynamic>{
      'filePath': instance.filePath,
      'runtimeType': instance.$type,
    };

_$UpdateProgressErrorImpl _$$UpdateProgressErrorImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateProgressErrorImpl(
      msg: json['msg'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UpdateProgressErrorImplToJson(
        _$UpdateProgressErrorImpl instance) =>
    <String, dynamic>{
      'msg': instance.msg,
      'runtimeType': instance.$type,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$appUpdateNotifierHash() => r'21af2bc78900c5a1a123e4218f5c959e7f2aba54';

/// See also [AppUpdateNotifier].
@ProviderFor(AppUpdateNotifier)
final appUpdateNotifierProvider =
    NotifierProvider<AppUpdateNotifier, AppUpdateState>.internal(
  AppUpdateNotifier.new,
  name: r'appUpdateNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$appUpdateNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AppUpdateNotifier = Notifier<AppUpdateState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
