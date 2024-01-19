// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_update_notifier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppUpdateStateImpl _$$AppUpdateStateImplFromJson(Map<String, dynamic> json) =>
    _$AppUpdateStateImpl(
      enumStatus:
          $enumDecodeNullable(_$EnumScreenStatusEnumMap, json['enumStatus']) ??
              EnumScreenStatus.init,
      apiAppUpdateCheckRes: json['apiAppUpdateCheckRes'] == null
          ? const ApiAppUpdateCheckRes.init()
          : ApiAppUpdateCheckRes.fromJson(
              json['apiAppUpdateCheckRes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AppUpdateStateImplToJson(
        _$AppUpdateStateImpl instance) =>
    <String, dynamic>{
      'enumStatus': _$EnumScreenStatusEnumMap[instance.enumStatus]!,
      'apiAppUpdateCheckRes': instance.apiAppUpdateCheckRes,
    };

const _$EnumScreenStatusEnumMap = {
  EnumScreenStatus.init: 'init',
  EnumScreenStatus.load: 'load',
  EnumScreenStatus.success: 'success',
  EnumScreenStatus.error: 'error',
};

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$appUpdateNotifierHash() => r'2b756086ca712d10533623c5d3c6e1ceb1d4ec4b';

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
