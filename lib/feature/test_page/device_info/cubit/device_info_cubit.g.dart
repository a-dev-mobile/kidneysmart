// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_info_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeviceInfoStateImpl _$$DeviceInfoStateImplFromJson(
        Map<String, dynamic> json) =>
    _$DeviceInfoStateImpl(
      isLoad: json['isLoad'] as bool? ?? true,
      sendStatus:
          $enumDecodeNullable(_$EnumPageStatusEnumMap, json['sendStatus']) ??
              EnumPageStatus.init,
      mapInfo: json['mapInfo'] as Map<String, dynamic>? ?? const {},
      deviceInfo: json['deviceInfo'] == null
          ? null
          : DeviceInfo.fromJson(json['deviceInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DeviceInfoStateImplToJson(
        _$DeviceInfoStateImpl instance) =>
    <String, dynamic>{
      'isLoad': instance.isLoad,
      'sendStatus': _$EnumPageStatusEnumMap[instance.sendStatus]!,
      'mapInfo': instance.mapInfo,
      'deviceInfo': instance.deviceInfo,
    };

const _$EnumPageStatusEnumMap = {
  EnumPageStatus.init: 'init',
  EnumPageStatus.load: 'load',
  EnumPageStatus.success: 'success',
  EnumPageStatus.error: 'error',
};

_$DeviceInfoImpl _$$DeviceInfoImplFromJson(Map<String, dynamic> json) =>
    _$DeviceInfoImpl(
      metadata: json['metadata'] == null
          ? null
          : Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
      system_info: json['system_info'] == null
          ? null
          : SystemInfo.fromJson(json['system_info'] as Map<String, dynamic>),
      hardware_info: json['hardware_info'] == null
          ? null
          : HardwareInfo.fromJson(
              json['hardware_info'] as Map<String, dynamic>),
      locale_settings: json['locale_settings'] == null
          ? null
          : LocaleSettings.fromJson(
              json['locale_settings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DeviceInfoImplToJson(_$DeviceInfoImpl instance) =>
    <String, dynamic>{
      'metadata': instance.metadata,
      'system_info': instance.system_info,
      'hardware_info': instance.hardware_info,
      'locale_settings': instance.locale_settings,
    };

_$MetadataImpl _$$MetadataImplFromJson(Map<String, dynamic> json) =>
    _$MetadataImpl(
      user_agent: json['user_agent'] as String?,
      package_name: json['package_name'] as String?,
      visit_time: json['visit_time'] as String?,
      is_debug: json['is_debug'] as bool?,
      build_number: json['build_number'] as String?,
      installer_store: json['installer_store'] as String?,
      build_signature: json['build_signature'] as String?,
      app_name: json['app_name'] as String?,
      version: json['version'] as String?,
    );

Map<String, dynamic> _$$MetadataImplToJson(_$MetadataImpl instance) =>
    <String, dynamic>{
      'user_agent': instance.user_agent,
      'package_name': instance.package_name,
      'visit_time': instance.visit_time,
      'is_debug': instance.is_debug,
      'build_number': instance.build_number,
      'installer_store': instance.installer_store,
      'build_signature': instance.build_signature,
      'app_name': instance.app_name,
      'version': instance.version,
    };

_$SystemInfoImpl _$$SystemInfoImplFromJson(Map<String, dynamic> json) =>
    _$SystemInfoImpl(
      os: json['os'] as String?,
      api: json['api'] as int?,
      timezone: json['timezone'] as String?,
      battery_status: json['battery_status'] as String?,
      battery_percentage: json['battery_percentage'] as int?,
      kernel_version: json['kernel_version'] as String?,
      security_update_date: json['security_update_date'] as String?,
      system_theme: json['system_theme'] as String?,
    );

Map<String, dynamic> _$$SystemInfoImplToJson(_$SystemInfoImpl instance) =>
    <String, dynamic>{
      'os': instance.os,
      'api': instance.api,
      'timezone': instance.timezone,
      'battery_status': instance.battery_status,
      'battery_percentage': instance.battery_percentage,
      'kernel_version': instance.kernel_version,
      'security_update_date': instance.security_update_date,
      'system_theme': instance.system_theme,
    };

_$HardwareInfoImpl _$$HardwareInfoImplFromJson(Map<String, dynamic> json) =>
    _$HardwareInfoImpl(
      phone_id: json['phone_id'] as String?,
      screen_resolution: json['screen_resolution'] as String?,
      device_name: json['device_name'] as String?,
      phone_model: json['phone_model'] as String?,
      model_number: json['model_number'] as String?,
      serial_number: json['serial_number'] as String?,
      assembly_number: json['assembly_number'] as String?,
      ram: json['ram'] as int?,
      processor: json['processor'] as String?,
      screen_height: json['screen_height'] as int?,
      screen_width: json['screen_width'] as int?,
      density_dpi: json['density_dpi'] as int?,
      density: json['density'] as num?,
      scaled_density: json['scaled_density'] as num?,
      xdpi: json['xdpi'] as num?,
      ydpi: json['ydpi'] as num?,
    );

Map<String, dynamic> _$$HardwareInfoImplToJson(_$HardwareInfoImpl instance) =>
    <String, dynamic>{
      'phone_id': instance.phone_id,
      'screen_resolution': instance.screen_resolution,
      'device_name': instance.device_name,
      'phone_model': instance.phone_model,
      'model_number': instance.model_number,
      'serial_number': instance.serial_number,
      'assembly_number': instance.assembly_number,
      'ram': instance.ram,
      'processor': instance.processor,
      'screen_height': instance.screen_height,
      'screen_width': instance.screen_width,
      'density_dpi': instance.density_dpi,
      'density': instance.density,
      'scaled_density': instance.scaled_density,
      'xdpi': instance.xdpi,
      'ydpi': instance.ydpi,
    };

_$LocaleSettingsImpl _$$LocaleSettingsImplFromJson(Map<String, dynamic> json) =>
    _$LocaleSettingsImpl(
      system_locales: (json['system_locales'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      keyboard_locales: (json['keyboard_locales'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      language: json['language'] as String?,
      sim_1_operator: json['sim_1_operator'] as String?,
      network_type: json['network_type'] as String?,
      network_speed: json['network_speed'] as String?,
    );

Map<String, dynamic> _$$LocaleSettingsImplToJson(
        _$LocaleSettingsImpl instance) =>
    <String, dynamic>{
      'system_locales': instance.system_locales,
      'keyboard_locales': instance.keyboard_locales,
      'language': instance.language,
      'sim_1_operator': instance.sim_1_operator,
      'network_type': instance.network_type,
      'network_speed': instance.network_speed,
    };
