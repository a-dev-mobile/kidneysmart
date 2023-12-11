// ignore_for_file: non_constant_identifier_names

part of 'device_info_cubit.dart';

@freezed
abstract class DeviceInfoState with _$DeviceInfoState {
  const factory DeviceInfoState({
    @Default(true) bool isLoad,
    @Default(EnumPageStatus.init) EnumPageStatus sendStatus,
    @Default({}) Map<String, dynamic> mapInfo,
    DeviceInfo? deviceInfo,
  }) = _DeviceInfoState;

  factory DeviceInfoState.fromJson(Map<String, dynamic> json) =>
      _$DeviceInfoStateFromJson(json);
}

@freezed
abstract class DeviceInfo with _$DeviceInfo {
  const factory DeviceInfo({
    Metadata? metadata,
    SystemInfo? system_info,
    HardwareInfo? hardware_info,
    LocaleSettings? locale_settings,
  }) = _DeviceInfo;

  factory DeviceInfo.fromJson(Map<String, dynamic> json) =>
      _$DeviceInfoFromJson(json);
}

@freezed
abstract class Metadata with _$Metadata {
  const factory Metadata({
    String? user_agent,
    String? package_name,
    String? visit_time,
    bool? is_debug,
    String? build_number,
    String? installer_store,
    String? build_signature,
    String? app_name,
    String? version,
  }) = _Metadata;

  factory Metadata.fromJson(Map<String, dynamic> json) =>
      _$MetadataFromJson(json);
}

@freezed
abstract class SystemInfo with _$SystemInfo {
  const factory SystemInfo({
    String? os,
    int? api,
    String? timezone,
    String? battery_status,
    int? battery_percentage,
    String? kernel_version,
    String? security_update_date,
    String? system_theme,
  }) = _SystemInfo;

  factory SystemInfo.fromJson(Map<String, dynamic> json) =>
      _$SystemInfoFromJson(json);
}

@freezed
abstract class HardwareInfo with _$HardwareInfo {
  const factory HardwareInfo({
    String? phone_id,
    String? screen_resolution,
    String? device_name,
    String? phone_model,
    String? model_number,
    String? serial_number,
    String? assembly_number,
    int? ram,
    String? processor,
    int? screen_height,
    int? screen_width,
    int? density_dpi,
    num? density,
    num? scaled_density,
    num? xdpi,
    num? ydpi,
  }) = _HardwareInfo;

  factory HardwareInfo.fromJson(Map<String, dynamic> json) =>
      _$HardwareInfoFromJson(json);
}

@freezed
abstract class LocaleSettings with _$LocaleSettings {
  const factory LocaleSettings({
    List<String>? system_locales,
    List<String>? keyboard_locales,
    String? language,
    String? sim_1_operator,
    String? network_type,
    String? network_speed,
  }) = _LocaleSettings;

  factory LocaleSettings.fromJson(Map<String, dynamic> json) =>
      _$LocaleSettingsFromJson(json);
}
