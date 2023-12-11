// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names

import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:device_info/device_info.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kidneysmart/core/enum/enum_page_status.dart';
import 'package:kidneysmart/api/api_client.dart';
import 'package:kidneysmart/core/device/about_device.dart';
import 'package:kidneysmart/core/enum/enum_page_status.dart';
import 'package:kidneysmart/core/storage/app_storage.dart';
import 'package:kidneysmart/navigation/app_router.dart';
import 'package:package_info_plus/package_info_plus.dart';

part 'device_info_cubit.freezed.dart';
part 'device_info_cubit.g.dart';
part 'device_info_state.dart';

class DeviceInfoCubit extends Cubit<DeviceInfoState> {
  DeviceInfoCubit({
    required ApiClient client,
    required AppRouter router,
    required AppStorage storage,
  })  : _client = client,
        _storage = storage,
        _go = router,
        super(const DeviceInfoState());

  final ApiClient _client;
  final AppStorage _storage;
  final AppRouter _go;

  Future<void> sendDataTest() async {
    final debugState = await _storage.getDebugState();

    final isSuccess = await _client.isSuccessSendDataDevice(
      baseUrl: debugState.enumProject.api,
      isDebugEnabled: debugState.isDebugMenuEnabled,
    );

    if (isSuccess) {
      emit(state.copyWith(sendStatus: EnumPageStatus.success));
    } else {
      emit(state.copyWith(sendStatus: EnumPageStatus.error));
    }

    emit(state.copyWith(sendStatus: EnumPageStatus.init));
  }

  // ignore: avoid_positional_boolean_parameters
  Future<void> load([bool isForce = false]) async {
    emit(state.copyWith(isLoad: true));
    final deviceInfoState = await _storage.getDeviceInfoState();
    final metadata = deviceInfoState.deviceInfo?.metadata;
    final packageInfo = await PackageInfo.fromPlatform();
    if (!isForce) {
// I update the data if the application version has changed
      if (packageInfo.buildNumber == metadata?.build_number ||
          packageInfo.version == metadata?.version) return;
    }

    try {
      final device = DeviceData();
      final packageInfo = await PackageInfo.fromPlatform();
      final debugState = await _storage.getDebugState();
      final context = _go.router.routeInformationParser.configuration
          .navigatorKey.currentContext;
      final deviceApi = await device.getInfoForTargetUrl();
      final userAgent = await AboutDevice.getAgent();

      final mapInfo = <String, dynamic>{};
      int? screen_height;
      int? screen_width;
      double? density;
      String? screen_resolution;
      if (context != null && Platform.isIOS) {
        // ignore: use_build_context_synchronously
        final media = MediaQuery.of(context);
        screen_height = media.size.height.toInt();
        screen_width = media.size.width.toInt();
        density = media.devicePixelRatio;
        screen_resolution = '${screen_height}x$screen_width';
      } else {
        screen_resolution = deviceApi.screen_resolution;

        screen_height = _safeStringToInt(
          _safeGetStringFromList(deviceApi.screenInfo, 0),
        );
        screen_width = _safeStringToInt(
          _safeGetStringFromList(deviceApi.screenInfo, 1),
        );
        density = _safeStringToDouble(
          _safeGetStringFromList(deviceApi.screenInfo, 3),
        );
      }
      final density_dpi = _safeStringToInt(
        _safeGetStringFromList(deviceApi.screenInfo, 2),
      );
      final scaled_density = _safeStringToDouble(
        _safeGetStringFromList(deviceApi.screenInfo, 4),
      );
      final xdpi = _safeStringToDouble(
        _safeGetStringFromList(deviceApi.screenInfo, 5),
      );
      final ydpi = _safeStringToDouble(
        _safeGetStringFromList(deviceApi.screenInfo, 6),
      );

      mapInfo['user_agent'] = userAgent;
      mapInfo['package_name'] = packageInfo.packageName;
      mapInfo['os'] = deviceApi.os;
      mapInfo['system_locales'] = deviceApi.system_locales;
      mapInfo['keyboard_locales'] = deviceApi.keyboard_locales;
      mapInfo['api'] = deviceApi.api;
      mapInfo['visit_time'] = deviceApi.visit_time;
      mapInfo['time_zone'] = deviceApi.time_zone;
      mapInfo['battery_status'] = deviceApi.battery_status;
      mapInfo['battery_percentage'] = deviceApi.battery_percentage;
      mapInfo['location_data'] = deviceApi.location_data;
      mapInfo['phone_id'] = deviceApi.phone_id;
      mapInfo['network_speed'] = deviceApi.networkSpeed;
      mapInfo['network_type'] = deviceApi.networkType;
      mapInfo['screen_resolution'] = screen_resolution;

      mapInfo['screen_height'] = screen_height;
      mapInfo['screen_width'] = screen_width;
      mapInfo['density_dpi'] = density_dpi;
      mapInfo['density'] = density;
      mapInfo['scaled_density'] = scaled_density;
      mapInfo['xdpi'] = xdpi;
      mapInfo['ydpi'] = ydpi;

      mapInfo['phone_model'] = deviceApi.phone_model;
      mapInfo['model_number'] = deviceApi.model_number;
      mapInfo['serial_number'] = deviceApi.serial_number;
      mapInfo['device_name'] = deviceApi.device_name;
      mapInfo['assembly_number'] = deviceApi.assembly_number;
      mapInfo['kernel_version'] = deviceApi.kernel_version;
      mapInfo['security_update_date'] = deviceApi.security_update_date;
      mapInfo['ram'] = deviceApi.ram;
      mapInfo['processor'] = deviceApi.processor;
      mapInfo['language'] = deviceApi.language;
      mapInfo['sim_1_operator'] = deviceApi.sim_1_operator;
      emit(
        state.copyWith(
          isLoad: false,
          mapInfo: mapInfo,
          deviceInfo: DeviceInfo(
            metadata: Metadata(
              user_agent: userAgent,
              visit_time: deviceApi.visit_time,
              is_debug: debugState.isDebugMenuEnabled,
              build_number: packageInfo.buildNumber,
              installer_store: packageInfo.installerStore,
              version: packageInfo.version,
              package_name: packageInfo.packageName,
              app_name: packageInfo.appName,
              build_signature: packageInfo.buildSignature,
            ),
            hardware_info: HardwareInfo(
              phone_id: deviceApi.phone_id,
              screen_resolution: screen_resolution,
              screen_height: screen_height,
              screen_width: screen_width,
              density_dpi: density_dpi,
              density: density,
              scaled_density: scaled_density,
              xdpi: xdpi,
              ydpi: ydpi,
              phone_model: deviceApi.phone_model,
              model_number: deviceApi.model_number,
              serial_number: deviceApi.serial_number,
              device_name: deviceApi.device_name,
              assembly_number: deviceApi.assembly_number,
              ram: deviceApi.ram,
              processor: deviceApi.processor,
            ),
            locale_settings: LocaleSettings(
              system_locales: deviceApi.system_locales,
              language: deviceApi.language,
              sim_1_operator: deviceApi.sim_1_operator,
              keyboard_locales: deviceApi.keyboard_locales,
              network_speed: deviceApi.networkSpeed,
              network_type: deviceApi.networkType,
            ),
            system_info: SystemInfo(
              os: deviceApi.os,
              kernel_version: deviceApi.kernel_version,
              api: deviceApi.api,
              security_update_date: deviceApi.security_update_date,
              battery_status: deviceApi.battery_status,
              battery_percentage: deviceApi.battery_percentage,
              timezone: deviceApi.time_zone,
              // ignore: use_build_context_synchronously
              system_theme: getSystemTheme(context),
            ),
          ),
        ),
      );
      await _storage.setDeviceInfoState(state);
    } on Object catch (e, stackTrace) {
      Error.throwWithStackTrace(e, stackTrace);
    }
    // mapInfo['fonts'] = deviceApi.fonts;
  }

  String? _safeGetStringFromList(List<String?>? list, int index) {
    if (list == null || index < 0 || index >= list.length) {
      return null;
    }
    return list[index];
  }

  int? _safeStringToInt(String? input) {
    if (input == null) return null;
    try {
      return int.parse(input);
    } catch (e) {
      return null;
    }
  }

  double? _safeStringToDouble(String? input) {
    if (input == null) return null;
    try {
      return double.parse(input);
    } catch (e) {
      return null;
    }
  }

  String? getSystemTheme(BuildContext? context) {
    if (context == null) return null;
    final theme = MediaQuery.of(context).platformBrightness;

    return theme == Brightness.dark ? 'dark' : 'light';
  }
}
