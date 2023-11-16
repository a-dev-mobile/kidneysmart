part of 'app_setting_notifier.dart';

@freezed
 class AppSettingState with _$AppSettingState {
  // const DebugState._();

  const factory AppSettingState({
    @Default(EnumProject.prod) EnumProject enumProject,
    @Default(EnumStore.unknown) EnumStore enumStore,

    @Default(ApiAppUpdateCheckResSuccess())
    ApiAppUpdateCheckResSuccess apiAppUpdateCheckResSuccess,
    @Default(FeatureToggleSettings())
    FeatureToggleSettings featureToggleSettings,
    @Default(AppInfoSettings()) AppInfoSettings appInfoSettings,
  }) = _DebugState;

  factory AppSettingState.fromJson(Map<String, Object?> json) =>
      _$AppSettingStateFromJson(json);
}

@freezed
class FeatureToggleSettings with _$FeatureToggleSettings {
  const factory FeatureToggleSettings({
    @Default(false) bool isDebugMenuEnabled,
    @Default(false) bool isShowDevicePreview,
    @Default(false) bool isShowBtnHttpLog,
    @Default(false) bool isShowRepaintRainbow,
    @Default(false) bool isShowPaintSizeEnabled,
    @Default(false) bool isShowUrlPdfPage,
  }) = _FeatureToggleSettings;

  factory FeatureToggleSettings.fromJson(Map<String, dynamic> json) =>
      _$FeatureToggleSettingsFromJson(json);
}

@freezed
class AppInfoSettings with _$AppInfoSettings {
  const factory AppInfoSettings({
    String? appPackage, // Пакет приложения
    String? currentVersion, // Текущая версия
    String? previousVersion, // Предыдущая версия
  }) = _AppInfoSettings;

  factory AppInfoSettings.fromJson(Map<String, dynamic> json) =>
      _$AppInfoSettingsFromJson(json);
}
