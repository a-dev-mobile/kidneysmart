// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_setting_notifier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DebugStateImpl _$$DebugStateImplFromJson(Map<String, dynamic> json) =>
    _$DebugStateImpl(
      enumProject:
          $enumDecodeNullable(_$EnumProjectEnumMap, json['enumProject']) ??
              EnumProject.prod,
      enumStore: $enumDecodeNullable(_$EnumStoreEnumMap, json['enumStore']) ??
          EnumStore.unknown,
      apiAppUpdateCheckResSuccess: json['apiAppUpdateCheckResSuccess'] == null
          ? const ApiAppUpdateCheckResSuccess()
          : ApiAppUpdateCheckResSuccess.fromJson(
              json['apiAppUpdateCheckResSuccess'] as Map<String, dynamic>),
      featureToggleSettings: json['featureToggleSettings'] == null
          ? const FeatureToggleSettings()
          : FeatureToggleSettings.fromJson(
              json['featureToggleSettings'] as Map<String, dynamic>),
      appInfoSettings: json['appInfoSettings'] == null
          ? const AppInfoSettings()
          : AppInfoSettings.fromJson(
              json['appInfoSettings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DebugStateImplToJson(_$DebugStateImpl instance) =>
    <String, dynamic>{
      'enumProject': _$EnumProjectEnumMap[instance.enumProject]!,
      'enumStore': _$EnumStoreEnumMap[instance.enumStore]!,
      'apiAppUpdateCheckResSuccess': instance.apiAppUpdateCheckResSuccess,
      'featureToggleSettings': instance.featureToggleSettings,
      'appInfoSettings': instance.appInfoSettings,
    };

const _$EnumProjectEnumMap = {
  EnumProject.prod: 'prod',
  EnumProject.dev: 'dev',
};

const _$EnumStoreEnumMap = {
  EnumStore.appStore: 'appStore',
  EnumStore.googlePlay: 'googlePlay',
  EnumStore.getApps: 'getApps',
  EnumStore.packageInstaller: 'packageInstaller',
  EnumStore.ruStore: 'ruStore',
  EnumStore.appGallery: 'appGallery',
  EnumStore.other: 'other',
  EnumStore.unknown: 'unknown',
};

_$FeatureToggleSettingsImpl _$$FeatureToggleSettingsImplFromJson(
        Map<String, dynamic> json) =>
    _$FeatureToggleSettingsImpl(
      isDebugMenuEnabled: json['isDebugMenuEnabled'] as bool? ?? false,
      isShowDevicePreview: json['isShowDevicePreview'] as bool? ?? false,
      isShowBtnHttpLog: json['isShowBtnHttpLog'] as bool? ?? false,
      isShowRepaintRainbow: json['isShowRepaintRainbow'] as bool? ?? false,
      isShowPaintSizeEnabled: json['isShowPaintSizeEnabled'] as bool? ?? false,
      isShowUrlPdfPage: json['isShowUrlPdfPage'] as bool? ?? false,
    );

Map<String, dynamic> _$$FeatureToggleSettingsImplToJson(
        _$FeatureToggleSettingsImpl instance) =>
    <String, dynamic>{
      'isDebugMenuEnabled': instance.isDebugMenuEnabled,
      'isShowDevicePreview': instance.isShowDevicePreview,
      'isShowBtnHttpLog': instance.isShowBtnHttpLog,
      'isShowRepaintRainbow': instance.isShowRepaintRainbow,
      'isShowPaintSizeEnabled': instance.isShowPaintSizeEnabled,
      'isShowUrlPdfPage': instance.isShowUrlPdfPage,
    };

_$AppInfoSettingsImpl _$$AppInfoSettingsImplFromJson(
        Map<String, dynamic> json) =>
    _$AppInfoSettingsImpl(
      packageName: json['packageName'] as String? ?? '',
      buildNumber: json['buildNumber'] as int? ?? 9999999,
      appVersion: json['appVersion'] as String? ?? '1.0.0',
      installerStore: json['installerStore'] as String? ?? '',
    );

Map<String, dynamic> _$$AppInfoSettingsImplToJson(
        _$AppInfoSettingsImpl instance) =>
    <String, dynamic>{
      'packageName': instance.packageName,
      'buildNumber': instance.buildNumber,
      'appVersion': instance.appVersion,
      'installerStore': instance.installerStore,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$appSettingNotifierHash() =>
    r'0820045ffaa9f75170e0916ee01e448e902c809d';

/// See also [AppSettingNotifier].
@ProviderFor(AppSettingNotifier)
final appSettingNotifierProvider =
    NotifierProvider<AppSettingNotifier, AppSettingState>.internal(
  AppSettingNotifier.new,
  name: r'appSettingNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$appSettingNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AppSettingNotifier = Notifier<AppSettingState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
