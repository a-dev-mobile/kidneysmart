// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_info_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeviceInfoState _$DeviceInfoStateFromJson(Map<String, dynamic> json) {
  return _DeviceInfoState.fromJson(json);
}

/// @nodoc
mixin _$DeviceInfoState {
  bool get isLoad => throw _privateConstructorUsedError;
  EnumPageStatus get sendStatus => throw _privateConstructorUsedError;
  Map<String, dynamic> get mapInfo => throw _privateConstructorUsedError;
  DeviceInfo? get deviceInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceInfoStateCopyWith<DeviceInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceInfoStateCopyWith<$Res> {
  factory $DeviceInfoStateCopyWith(
          DeviceInfoState value, $Res Function(DeviceInfoState) then) =
      _$DeviceInfoStateCopyWithImpl<$Res, DeviceInfoState>;
  @useResult
  $Res call(
      {bool isLoad,
      EnumPageStatus sendStatus,
      Map<String, dynamic> mapInfo,
      DeviceInfo? deviceInfo});

  $DeviceInfoCopyWith<$Res>? get deviceInfo;
}

/// @nodoc
class _$DeviceInfoStateCopyWithImpl<$Res, $Val extends DeviceInfoState>
    implements $DeviceInfoStateCopyWith<$Res> {
  _$DeviceInfoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoad = null,
    Object? sendStatus = null,
    Object? mapInfo = null,
    Object? deviceInfo = freezed,
  }) {
    return _then(_value.copyWith(
      isLoad: null == isLoad
          ? _value.isLoad
          : isLoad // ignore: cast_nullable_to_non_nullable
              as bool,
      sendStatus: null == sendStatus
          ? _value.sendStatus
          : sendStatus // ignore: cast_nullable_to_non_nullable
              as EnumPageStatus,
      mapInfo: null == mapInfo
          ? _value.mapInfo
          : mapInfo // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      deviceInfo: freezed == deviceInfo
          ? _value.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as DeviceInfo?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DeviceInfoCopyWith<$Res>? get deviceInfo {
    if (_value.deviceInfo == null) {
      return null;
    }

    return $DeviceInfoCopyWith<$Res>(_value.deviceInfo!, (value) {
      return _then(_value.copyWith(deviceInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DeviceInfoStateImplCopyWith<$Res>
    implements $DeviceInfoStateCopyWith<$Res> {
  factory _$$DeviceInfoStateImplCopyWith(_$DeviceInfoStateImpl value,
          $Res Function(_$DeviceInfoStateImpl) then) =
      __$$DeviceInfoStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoad,
      EnumPageStatus sendStatus,
      Map<String, dynamic> mapInfo,
      DeviceInfo? deviceInfo});

  @override
  $DeviceInfoCopyWith<$Res>? get deviceInfo;
}

/// @nodoc
class __$$DeviceInfoStateImplCopyWithImpl<$Res>
    extends _$DeviceInfoStateCopyWithImpl<$Res, _$DeviceInfoStateImpl>
    implements _$$DeviceInfoStateImplCopyWith<$Res> {
  __$$DeviceInfoStateImplCopyWithImpl(
      _$DeviceInfoStateImpl _value, $Res Function(_$DeviceInfoStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoad = null,
    Object? sendStatus = null,
    Object? mapInfo = null,
    Object? deviceInfo = freezed,
  }) {
    return _then(_$DeviceInfoStateImpl(
      isLoad: null == isLoad
          ? _value.isLoad
          : isLoad // ignore: cast_nullable_to_non_nullable
              as bool,
      sendStatus: null == sendStatus
          ? _value.sendStatus
          : sendStatus // ignore: cast_nullable_to_non_nullable
              as EnumPageStatus,
      mapInfo: null == mapInfo
          ? _value._mapInfo
          : mapInfo // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      deviceInfo: freezed == deviceInfo
          ? _value.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as DeviceInfo?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceInfoStateImpl implements _DeviceInfoState {
  const _$DeviceInfoStateImpl(
      {this.isLoad = true,
      this.sendStatus = EnumPageStatus.init,
      final Map<String, dynamic> mapInfo = const {},
      this.deviceInfo})
      : _mapInfo = mapInfo;

  factory _$DeviceInfoStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceInfoStateImplFromJson(json);

  @override
  @JsonKey()
  final bool isLoad;
  @override
  @JsonKey()
  final EnumPageStatus sendStatus;
  final Map<String, dynamic> _mapInfo;
  @override
  @JsonKey()
  Map<String, dynamic> get mapInfo {
    if (_mapInfo is EqualUnmodifiableMapView) return _mapInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_mapInfo);
  }

  @override
  final DeviceInfo? deviceInfo;

  @override
  String toString() {
    return 'DeviceInfoState(isLoad: $isLoad, sendStatus: $sendStatus, mapInfo: $mapInfo, deviceInfo: $deviceInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceInfoStateImpl &&
            (identical(other.isLoad, isLoad) || other.isLoad == isLoad) &&
            (identical(other.sendStatus, sendStatus) ||
                other.sendStatus == sendStatus) &&
            const DeepCollectionEquality().equals(other._mapInfo, _mapInfo) &&
            (identical(other.deviceInfo, deviceInfo) ||
                other.deviceInfo == deviceInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isLoad, sendStatus,
      const DeepCollectionEquality().hash(_mapInfo), deviceInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceInfoStateImplCopyWith<_$DeviceInfoStateImpl> get copyWith =>
      __$$DeviceInfoStateImplCopyWithImpl<_$DeviceInfoStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceInfoStateImplToJson(
      this,
    );
  }
}

abstract class _DeviceInfoState implements DeviceInfoState {
  const factory _DeviceInfoState(
      {final bool isLoad,
      final EnumPageStatus sendStatus,
      final Map<String, dynamic> mapInfo,
      final DeviceInfo? deviceInfo}) = _$DeviceInfoStateImpl;

  factory _DeviceInfoState.fromJson(Map<String, dynamic> json) =
      _$DeviceInfoStateImpl.fromJson;

  @override
  bool get isLoad;
  @override
  EnumPageStatus get sendStatus;
  @override
  Map<String, dynamic> get mapInfo;
  @override
  DeviceInfo? get deviceInfo;
  @override
  @JsonKey(ignore: true)
  _$$DeviceInfoStateImplCopyWith<_$DeviceInfoStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DeviceInfo _$DeviceInfoFromJson(Map<String, dynamic> json) {
  return _DeviceInfo.fromJson(json);
}

/// @nodoc
mixin _$DeviceInfo {
  Metadata? get metadata => throw _privateConstructorUsedError;
  SystemInfo? get system_info => throw _privateConstructorUsedError;
  HardwareInfo? get hardware_info => throw _privateConstructorUsedError;
  LocaleSettings? get locale_settings => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceInfoCopyWith<DeviceInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceInfoCopyWith<$Res> {
  factory $DeviceInfoCopyWith(
          DeviceInfo value, $Res Function(DeviceInfo) then) =
      _$DeviceInfoCopyWithImpl<$Res, DeviceInfo>;
  @useResult
  $Res call(
      {Metadata? metadata,
      SystemInfo? system_info,
      HardwareInfo? hardware_info,
      LocaleSettings? locale_settings});

  $MetadataCopyWith<$Res>? get metadata;
  $SystemInfoCopyWith<$Res>? get system_info;
  $HardwareInfoCopyWith<$Res>? get hardware_info;
  $LocaleSettingsCopyWith<$Res>? get locale_settings;
}

/// @nodoc
class _$DeviceInfoCopyWithImpl<$Res, $Val extends DeviceInfo>
    implements $DeviceInfoCopyWith<$Res> {
  _$DeviceInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metadata = freezed,
    Object? system_info = freezed,
    Object? hardware_info = freezed,
    Object? locale_settings = freezed,
  }) {
    return _then(_value.copyWith(
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Metadata?,
      system_info: freezed == system_info
          ? _value.system_info
          : system_info // ignore: cast_nullable_to_non_nullable
              as SystemInfo?,
      hardware_info: freezed == hardware_info
          ? _value.hardware_info
          : hardware_info // ignore: cast_nullable_to_non_nullable
              as HardwareInfo?,
      locale_settings: freezed == locale_settings
          ? _value.locale_settings
          : locale_settings // ignore: cast_nullable_to_non_nullable
              as LocaleSettings?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MetadataCopyWith<$Res>? get metadata {
    if (_value.metadata == null) {
      return null;
    }

    return $MetadataCopyWith<$Res>(_value.metadata!, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SystemInfoCopyWith<$Res>? get system_info {
    if (_value.system_info == null) {
      return null;
    }

    return $SystemInfoCopyWith<$Res>(_value.system_info!, (value) {
      return _then(_value.copyWith(system_info: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $HardwareInfoCopyWith<$Res>? get hardware_info {
    if (_value.hardware_info == null) {
      return null;
    }

    return $HardwareInfoCopyWith<$Res>(_value.hardware_info!, (value) {
      return _then(_value.copyWith(hardware_info: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LocaleSettingsCopyWith<$Res>? get locale_settings {
    if (_value.locale_settings == null) {
      return null;
    }

    return $LocaleSettingsCopyWith<$Res>(_value.locale_settings!, (value) {
      return _then(_value.copyWith(locale_settings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DeviceInfoImplCopyWith<$Res>
    implements $DeviceInfoCopyWith<$Res> {
  factory _$$DeviceInfoImplCopyWith(
          _$DeviceInfoImpl value, $Res Function(_$DeviceInfoImpl) then) =
      __$$DeviceInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Metadata? metadata,
      SystemInfo? system_info,
      HardwareInfo? hardware_info,
      LocaleSettings? locale_settings});

  @override
  $MetadataCopyWith<$Res>? get metadata;
  @override
  $SystemInfoCopyWith<$Res>? get system_info;
  @override
  $HardwareInfoCopyWith<$Res>? get hardware_info;
  @override
  $LocaleSettingsCopyWith<$Res>? get locale_settings;
}

/// @nodoc
class __$$DeviceInfoImplCopyWithImpl<$Res>
    extends _$DeviceInfoCopyWithImpl<$Res, _$DeviceInfoImpl>
    implements _$$DeviceInfoImplCopyWith<$Res> {
  __$$DeviceInfoImplCopyWithImpl(
      _$DeviceInfoImpl _value, $Res Function(_$DeviceInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metadata = freezed,
    Object? system_info = freezed,
    Object? hardware_info = freezed,
    Object? locale_settings = freezed,
  }) {
    return _then(_$DeviceInfoImpl(
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Metadata?,
      system_info: freezed == system_info
          ? _value.system_info
          : system_info // ignore: cast_nullable_to_non_nullable
              as SystemInfo?,
      hardware_info: freezed == hardware_info
          ? _value.hardware_info
          : hardware_info // ignore: cast_nullable_to_non_nullable
              as HardwareInfo?,
      locale_settings: freezed == locale_settings
          ? _value.locale_settings
          : locale_settings // ignore: cast_nullable_to_non_nullable
              as LocaleSettings?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceInfoImpl implements _DeviceInfo {
  const _$DeviceInfoImpl(
      {this.metadata,
      this.system_info,
      this.hardware_info,
      this.locale_settings});

  factory _$DeviceInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceInfoImplFromJson(json);

  @override
  final Metadata? metadata;
  @override
  final SystemInfo? system_info;
  @override
  final HardwareInfo? hardware_info;
  @override
  final LocaleSettings? locale_settings;

  @override
  String toString() {
    return 'DeviceInfo(metadata: $metadata, system_info: $system_info, hardware_info: $hardware_info, locale_settings: $locale_settings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceInfoImpl &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            (identical(other.system_info, system_info) ||
                other.system_info == system_info) &&
            (identical(other.hardware_info, hardware_info) ||
                other.hardware_info == hardware_info) &&
            (identical(other.locale_settings, locale_settings) ||
                other.locale_settings == locale_settings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, metadata, system_info, hardware_info, locale_settings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceInfoImplCopyWith<_$DeviceInfoImpl> get copyWith =>
      __$$DeviceInfoImplCopyWithImpl<_$DeviceInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceInfoImplToJson(
      this,
    );
  }
}

abstract class _DeviceInfo implements DeviceInfo {
  const factory _DeviceInfo(
      {final Metadata? metadata,
      final SystemInfo? system_info,
      final HardwareInfo? hardware_info,
      final LocaleSettings? locale_settings}) = _$DeviceInfoImpl;

  factory _DeviceInfo.fromJson(Map<String, dynamic> json) =
      _$DeviceInfoImpl.fromJson;

  @override
  Metadata? get metadata;
  @override
  SystemInfo? get system_info;
  @override
  HardwareInfo? get hardware_info;
  @override
  LocaleSettings? get locale_settings;
  @override
  @JsonKey(ignore: true)
  _$$DeviceInfoImplCopyWith<_$DeviceInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Metadata _$MetadataFromJson(Map<String, dynamic> json) {
  return _Metadata.fromJson(json);
}

/// @nodoc
mixin _$Metadata {
  String? get user_agent => throw _privateConstructorUsedError;
  String? get package_name => throw _privateConstructorUsedError;
  String? get visit_time => throw _privateConstructorUsedError;
  bool? get is_debug => throw _privateConstructorUsedError;
  String? get build_number => throw _privateConstructorUsedError;
  String? get installer_store => throw _privateConstructorUsedError;
  String? get build_signature => throw _privateConstructorUsedError;
  String? get app_name => throw _privateConstructorUsedError;
  String? get version => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetadataCopyWith<Metadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetadataCopyWith<$Res> {
  factory $MetadataCopyWith(Metadata value, $Res Function(Metadata) then) =
      _$MetadataCopyWithImpl<$Res, Metadata>;
  @useResult
  $Res call(
      {String? user_agent,
      String? package_name,
      String? visit_time,
      bool? is_debug,
      String? build_number,
      String? installer_store,
      String? build_signature,
      String? app_name,
      String? version});
}

/// @nodoc
class _$MetadataCopyWithImpl<$Res, $Val extends Metadata>
    implements $MetadataCopyWith<$Res> {
  _$MetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user_agent = freezed,
    Object? package_name = freezed,
    Object? visit_time = freezed,
    Object? is_debug = freezed,
    Object? build_number = freezed,
    Object? installer_store = freezed,
    Object? build_signature = freezed,
    Object? app_name = freezed,
    Object? version = freezed,
  }) {
    return _then(_value.copyWith(
      user_agent: freezed == user_agent
          ? _value.user_agent
          : user_agent // ignore: cast_nullable_to_non_nullable
              as String?,
      package_name: freezed == package_name
          ? _value.package_name
          : package_name // ignore: cast_nullable_to_non_nullable
              as String?,
      visit_time: freezed == visit_time
          ? _value.visit_time
          : visit_time // ignore: cast_nullable_to_non_nullable
              as String?,
      is_debug: freezed == is_debug
          ? _value.is_debug
          : is_debug // ignore: cast_nullable_to_non_nullable
              as bool?,
      build_number: freezed == build_number
          ? _value.build_number
          : build_number // ignore: cast_nullable_to_non_nullable
              as String?,
      installer_store: freezed == installer_store
          ? _value.installer_store
          : installer_store // ignore: cast_nullable_to_non_nullable
              as String?,
      build_signature: freezed == build_signature
          ? _value.build_signature
          : build_signature // ignore: cast_nullable_to_non_nullable
              as String?,
      app_name: freezed == app_name
          ? _value.app_name
          : app_name // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MetadataImplCopyWith<$Res>
    implements $MetadataCopyWith<$Res> {
  factory _$$MetadataImplCopyWith(
          _$MetadataImpl value, $Res Function(_$MetadataImpl) then) =
      __$$MetadataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? user_agent,
      String? package_name,
      String? visit_time,
      bool? is_debug,
      String? build_number,
      String? installer_store,
      String? build_signature,
      String? app_name,
      String? version});
}

/// @nodoc
class __$$MetadataImplCopyWithImpl<$Res>
    extends _$MetadataCopyWithImpl<$Res, _$MetadataImpl>
    implements _$$MetadataImplCopyWith<$Res> {
  __$$MetadataImplCopyWithImpl(
      _$MetadataImpl _value, $Res Function(_$MetadataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user_agent = freezed,
    Object? package_name = freezed,
    Object? visit_time = freezed,
    Object? is_debug = freezed,
    Object? build_number = freezed,
    Object? installer_store = freezed,
    Object? build_signature = freezed,
    Object? app_name = freezed,
    Object? version = freezed,
  }) {
    return _then(_$MetadataImpl(
      user_agent: freezed == user_agent
          ? _value.user_agent
          : user_agent // ignore: cast_nullable_to_non_nullable
              as String?,
      package_name: freezed == package_name
          ? _value.package_name
          : package_name // ignore: cast_nullable_to_non_nullable
              as String?,
      visit_time: freezed == visit_time
          ? _value.visit_time
          : visit_time // ignore: cast_nullable_to_non_nullable
              as String?,
      is_debug: freezed == is_debug
          ? _value.is_debug
          : is_debug // ignore: cast_nullable_to_non_nullable
              as bool?,
      build_number: freezed == build_number
          ? _value.build_number
          : build_number // ignore: cast_nullable_to_non_nullable
              as String?,
      installer_store: freezed == installer_store
          ? _value.installer_store
          : installer_store // ignore: cast_nullable_to_non_nullable
              as String?,
      build_signature: freezed == build_signature
          ? _value.build_signature
          : build_signature // ignore: cast_nullable_to_non_nullable
              as String?,
      app_name: freezed == app_name
          ? _value.app_name
          : app_name // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetadataImpl implements _Metadata {
  const _$MetadataImpl(
      {this.user_agent,
      this.package_name,
      this.visit_time,
      this.is_debug,
      this.build_number,
      this.installer_store,
      this.build_signature,
      this.app_name,
      this.version});

  factory _$MetadataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetadataImplFromJson(json);

  @override
  final String? user_agent;
  @override
  final String? package_name;
  @override
  final String? visit_time;
  @override
  final bool? is_debug;
  @override
  final String? build_number;
  @override
  final String? installer_store;
  @override
  final String? build_signature;
  @override
  final String? app_name;
  @override
  final String? version;

  @override
  String toString() {
    return 'Metadata(user_agent: $user_agent, package_name: $package_name, visit_time: $visit_time, is_debug: $is_debug, build_number: $build_number, installer_store: $installer_store, build_signature: $build_signature, app_name: $app_name, version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetadataImpl &&
            (identical(other.user_agent, user_agent) ||
                other.user_agent == user_agent) &&
            (identical(other.package_name, package_name) ||
                other.package_name == package_name) &&
            (identical(other.visit_time, visit_time) ||
                other.visit_time == visit_time) &&
            (identical(other.is_debug, is_debug) ||
                other.is_debug == is_debug) &&
            (identical(other.build_number, build_number) ||
                other.build_number == build_number) &&
            (identical(other.installer_store, installer_store) ||
                other.installer_store == installer_store) &&
            (identical(other.build_signature, build_signature) ||
                other.build_signature == build_signature) &&
            (identical(other.app_name, app_name) ||
                other.app_name == app_name) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      user_agent,
      package_name,
      visit_time,
      is_debug,
      build_number,
      installer_store,
      build_signature,
      app_name,
      version);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MetadataImplCopyWith<_$MetadataImpl> get copyWith =>
      __$$MetadataImplCopyWithImpl<_$MetadataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetadataImplToJson(
      this,
    );
  }
}

abstract class _Metadata implements Metadata {
  const factory _Metadata(
      {final String? user_agent,
      final String? package_name,
      final String? visit_time,
      final bool? is_debug,
      final String? build_number,
      final String? installer_store,
      final String? build_signature,
      final String? app_name,
      final String? version}) = _$MetadataImpl;

  factory _Metadata.fromJson(Map<String, dynamic> json) =
      _$MetadataImpl.fromJson;

  @override
  String? get user_agent;
  @override
  String? get package_name;
  @override
  String? get visit_time;
  @override
  bool? get is_debug;
  @override
  String? get build_number;
  @override
  String? get installer_store;
  @override
  String? get build_signature;
  @override
  String? get app_name;
  @override
  String? get version;
  @override
  @JsonKey(ignore: true)
  _$$MetadataImplCopyWith<_$MetadataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SystemInfo _$SystemInfoFromJson(Map<String, dynamic> json) {
  return _SystemInfo.fromJson(json);
}

/// @nodoc
mixin _$SystemInfo {
  String? get os => throw _privateConstructorUsedError;
  int? get api => throw _privateConstructorUsedError;
  String? get timezone => throw _privateConstructorUsedError;
  String? get battery_status => throw _privateConstructorUsedError;
  int? get battery_percentage => throw _privateConstructorUsedError;
  String? get kernel_version => throw _privateConstructorUsedError;
  String? get security_update_date => throw _privateConstructorUsedError;
  String? get system_theme => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SystemInfoCopyWith<SystemInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SystemInfoCopyWith<$Res> {
  factory $SystemInfoCopyWith(
          SystemInfo value, $Res Function(SystemInfo) then) =
      _$SystemInfoCopyWithImpl<$Res, SystemInfo>;
  @useResult
  $Res call(
      {String? os,
      int? api,
      String? timezone,
      String? battery_status,
      int? battery_percentage,
      String? kernel_version,
      String? security_update_date,
      String? system_theme});
}

/// @nodoc
class _$SystemInfoCopyWithImpl<$Res, $Val extends SystemInfo>
    implements $SystemInfoCopyWith<$Res> {
  _$SystemInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? os = freezed,
    Object? api = freezed,
    Object? timezone = freezed,
    Object? battery_status = freezed,
    Object? battery_percentage = freezed,
    Object? kernel_version = freezed,
    Object? security_update_date = freezed,
    Object? system_theme = freezed,
  }) {
    return _then(_value.copyWith(
      os: freezed == os
          ? _value.os
          : os // ignore: cast_nullable_to_non_nullable
              as String?,
      api: freezed == api
          ? _value.api
          : api // ignore: cast_nullable_to_non_nullable
              as int?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      battery_status: freezed == battery_status
          ? _value.battery_status
          : battery_status // ignore: cast_nullable_to_non_nullable
              as String?,
      battery_percentage: freezed == battery_percentage
          ? _value.battery_percentage
          : battery_percentage // ignore: cast_nullable_to_non_nullable
              as int?,
      kernel_version: freezed == kernel_version
          ? _value.kernel_version
          : kernel_version // ignore: cast_nullable_to_non_nullable
              as String?,
      security_update_date: freezed == security_update_date
          ? _value.security_update_date
          : security_update_date // ignore: cast_nullable_to_non_nullable
              as String?,
      system_theme: freezed == system_theme
          ? _value.system_theme
          : system_theme // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SystemInfoImplCopyWith<$Res>
    implements $SystemInfoCopyWith<$Res> {
  factory _$$SystemInfoImplCopyWith(
          _$SystemInfoImpl value, $Res Function(_$SystemInfoImpl) then) =
      __$$SystemInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? os,
      int? api,
      String? timezone,
      String? battery_status,
      int? battery_percentage,
      String? kernel_version,
      String? security_update_date,
      String? system_theme});
}

/// @nodoc
class __$$SystemInfoImplCopyWithImpl<$Res>
    extends _$SystemInfoCopyWithImpl<$Res, _$SystemInfoImpl>
    implements _$$SystemInfoImplCopyWith<$Res> {
  __$$SystemInfoImplCopyWithImpl(
      _$SystemInfoImpl _value, $Res Function(_$SystemInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? os = freezed,
    Object? api = freezed,
    Object? timezone = freezed,
    Object? battery_status = freezed,
    Object? battery_percentage = freezed,
    Object? kernel_version = freezed,
    Object? security_update_date = freezed,
    Object? system_theme = freezed,
  }) {
    return _then(_$SystemInfoImpl(
      os: freezed == os
          ? _value.os
          : os // ignore: cast_nullable_to_non_nullable
              as String?,
      api: freezed == api
          ? _value.api
          : api // ignore: cast_nullable_to_non_nullable
              as int?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      battery_status: freezed == battery_status
          ? _value.battery_status
          : battery_status // ignore: cast_nullable_to_non_nullable
              as String?,
      battery_percentage: freezed == battery_percentage
          ? _value.battery_percentage
          : battery_percentage // ignore: cast_nullable_to_non_nullable
              as int?,
      kernel_version: freezed == kernel_version
          ? _value.kernel_version
          : kernel_version // ignore: cast_nullable_to_non_nullable
              as String?,
      security_update_date: freezed == security_update_date
          ? _value.security_update_date
          : security_update_date // ignore: cast_nullable_to_non_nullable
              as String?,
      system_theme: freezed == system_theme
          ? _value.system_theme
          : system_theme // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SystemInfoImpl implements _SystemInfo {
  const _$SystemInfoImpl(
      {this.os,
      this.api,
      this.timezone,
      this.battery_status,
      this.battery_percentage,
      this.kernel_version,
      this.security_update_date,
      this.system_theme});

  factory _$SystemInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SystemInfoImplFromJson(json);

  @override
  final String? os;
  @override
  final int? api;
  @override
  final String? timezone;
  @override
  final String? battery_status;
  @override
  final int? battery_percentage;
  @override
  final String? kernel_version;
  @override
  final String? security_update_date;
  @override
  final String? system_theme;

  @override
  String toString() {
    return 'SystemInfo(os: $os, api: $api, timezone: $timezone, battery_status: $battery_status, battery_percentage: $battery_percentage, kernel_version: $kernel_version, security_update_date: $security_update_date, system_theme: $system_theme)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SystemInfoImpl &&
            (identical(other.os, os) || other.os == os) &&
            (identical(other.api, api) || other.api == api) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.battery_status, battery_status) ||
                other.battery_status == battery_status) &&
            (identical(other.battery_percentage, battery_percentage) ||
                other.battery_percentage == battery_percentage) &&
            (identical(other.kernel_version, kernel_version) ||
                other.kernel_version == kernel_version) &&
            (identical(other.security_update_date, security_update_date) ||
                other.security_update_date == security_update_date) &&
            (identical(other.system_theme, system_theme) ||
                other.system_theme == system_theme));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      os,
      api,
      timezone,
      battery_status,
      battery_percentage,
      kernel_version,
      security_update_date,
      system_theme);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SystemInfoImplCopyWith<_$SystemInfoImpl> get copyWith =>
      __$$SystemInfoImplCopyWithImpl<_$SystemInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SystemInfoImplToJson(
      this,
    );
  }
}

abstract class _SystemInfo implements SystemInfo {
  const factory _SystemInfo(
      {final String? os,
      final int? api,
      final String? timezone,
      final String? battery_status,
      final int? battery_percentage,
      final String? kernel_version,
      final String? security_update_date,
      final String? system_theme}) = _$SystemInfoImpl;

  factory _SystemInfo.fromJson(Map<String, dynamic> json) =
      _$SystemInfoImpl.fromJson;

  @override
  String? get os;
  @override
  int? get api;
  @override
  String? get timezone;
  @override
  String? get battery_status;
  @override
  int? get battery_percentage;
  @override
  String? get kernel_version;
  @override
  String? get security_update_date;
  @override
  String? get system_theme;
  @override
  @JsonKey(ignore: true)
  _$$SystemInfoImplCopyWith<_$SystemInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HardwareInfo _$HardwareInfoFromJson(Map<String, dynamic> json) {
  return _HardwareInfo.fromJson(json);
}

/// @nodoc
mixin _$HardwareInfo {
  String? get phone_id => throw _privateConstructorUsedError;
  String? get screen_resolution => throw _privateConstructorUsedError;
  String? get device_name => throw _privateConstructorUsedError;
  String? get phone_model => throw _privateConstructorUsedError;
  String? get model_number => throw _privateConstructorUsedError;
  String? get serial_number => throw _privateConstructorUsedError;
  String? get assembly_number => throw _privateConstructorUsedError;
  int? get ram => throw _privateConstructorUsedError;
  String? get processor => throw _privateConstructorUsedError;
  int? get screen_height => throw _privateConstructorUsedError;
  int? get screen_width => throw _privateConstructorUsedError;
  int? get density_dpi => throw _privateConstructorUsedError;
  num? get density => throw _privateConstructorUsedError;
  num? get scaled_density => throw _privateConstructorUsedError;
  num? get xdpi => throw _privateConstructorUsedError;
  num? get ydpi => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HardwareInfoCopyWith<HardwareInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HardwareInfoCopyWith<$Res> {
  factory $HardwareInfoCopyWith(
          HardwareInfo value, $Res Function(HardwareInfo) then) =
      _$HardwareInfoCopyWithImpl<$Res, HardwareInfo>;
  @useResult
  $Res call(
      {String? phone_id,
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
      num? ydpi});
}

/// @nodoc
class _$HardwareInfoCopyWithImpl<$Res, $Val extends HardwareInfo>
    implements $HardwareInfoCopyWith<$Res> {
  _$HardwareInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone_id = freezed,
    Object? screen_resolution = freezed,
    Object? device_name = freezed,
    Object? phone_model = freezed,
    Object? model_number = freezed,
    Object? serial_number = freezed,
    Object? assembly_number = freezed,
    Object? ram = freezed,
    Object? processor = freezed,
    Object? screen_height = freezed,
    Object? screen_width = freezed,
    Object? density_dpi = freezed,
    Object? density = freezed,
    Object? scaled_density = freezed,
    Object? xdpi = freezed,
    Object? ydpi = freezed,
  }) {
    return _then(_value.copyWith(
      phone_id: freezed == phone_id
          ? _value.phone_id
          : phone_id // ignore: cast_nullable_to_non_nullable
              as String?,
      screen_resolution: freezed == screen_resolution
          ? _value.screen_resolution
          : screen_resolution // ignore: cast_nullable_to_non_nullable
              as String?,
      device_name: freezed == device_name
          ? _value.device_name
          : device_name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone_model: freezed == phone_model
          ? _value.phone_model
          : phone_model // ignore: cast_nullable_to_non_nullable
              as String?,
      model_number: freezed == model_number
          ? _value.model_number
          : model_number // ignore: cast_nullable_to_non_nullable
              as String?,
      serial_number: freezed == serial_number
          ? _value.serial_number
          : serial_number // ignore: cast_nullable_to_non_nullable
              as String?,
      assembly_number: freezed == assembly_number
          ? _value.assembly_number
          : assembly_number // ignore: cast_nullable_to_non_nullable
              as String?,
      ram: freezed == ram
          ? _value.ram
          : ram // ignore: cast_nullable_to_non_nullable
              as int?,
      processor: freezed == processor
          ? _value.processor
          : processor // ignore: cast_nullable_to_non_nullable
              as String?,
      screen_height: freezed == screen_height
          ? _value.screen_height
          : screen_height // ignore: cast_nullable_to_non_nullable
              as int?,
      screen_width: freezed == screen_width
          ? _value.screen_width
          : screen_width // ignore: cast_nullable_to_non_nullable
              as int?,
      density_dpi: freezed == density_dpi
          ? _value.density_dpi
          : density_dpi // ignore: cast_nullable_to_non_nullable
              as int?,
      density: freezed == density
          ? _value.density
          : density // ignore: cast_nullable_to_non_nullable
              as num?,
      scaled_density: freezed == scaled_density
          ? _value.scaled_density
          : scaled_density // ignore: cast_nullable_to_non_nullable
              as num?,
      xdpi: freezed == xdpi
          ? _value.xdpi
          : xdpi // ignore: cast_nullable_to_non_nullable
              as num?,
      ydpi: freezed == ydpi
          ? _value.ydpi
          : ydpi // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HardwareInfoImplCopyWith<$Res>
    implements $HardwareInfoCopyWith<$Res> {
  factory _$$HardwareInfoImplCopyWith(
          _$HardwareInfoImpl value, $Res Function(_$HardwareInfoImpl) then) =
      __$$HardwareInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? phone_id,
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
      num? ydpi});
}

/// @nodoc
class __$$HardwareInfoImplCopyWithImpl<$Res>
    extends _$HardwareInfoCopyWithImpl<$Res, _$HardwareInfoImpl>
    implements _$$HardwareInfoImplCopyWith<$Res> {
  __$$HardwareInfoImplCopyWithImpl(
      _$HardwareInfoImpl _value, $Res Function(_$HardwareInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone_id = freezed,
    Object? screen_resolution = freezed,
    Object? device_name = freezed,
    Object? phone_model = freezed,
    Object? model_number = freezed,
    Object? serial_number = freezed,
    Object? assembly_number = freezed,
    Object? ram = freezed,
    Object? processor = freezed,
    Object? screen_height = freezed,
    Object? screen_width = freezed,
    Object? density_dpi = freezed,
    Object? density = freezed,
    Object? scaled_density = freezed,
    Object? xdpi = freezed,
    Object? ydpi = freezed,
  }) {
    return _then(_$HardwareInfoImpl(
      phone_id: freezed == phone_id
          ? _value.phone_id
          : phone_id // ignore: cast_nullable_to_non_nullable
              as String?,
      screen_resolution: freezed == screen_resolution
          ? _value.screen_resolution
          : screen_resolution // ignore: cast_nullable_to_non_nullable
              as String?,
      device_name: freezed == device_name
          ? _value.device_name
          : device_name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone_model: freezed == phone_model
          ? _value.phone_model
          : phone_model // ignore: cast_nullable_to_non_nullable
              as String?,
      model_number: freezed == model_number
          ? _value.model_number
          : model_number // ignore: cast_nullable_to_non_nullable
              as String?,
      serial_number: freezed == serial_number
          ? _value.serial_number
          : serial_number // ignore: cast_nullable_to_non_nullable
              as String?,
      assembly_number: freezed == assembly_number
          ? _value.assembly_number
          : assembly_number // ignore: cast_nullable_to_non_nullable
              as String?,
      ram: freezed == ram
          ? _value.ram
          : ram // ignore: cast_nullable_to_non_nullable
              as int?,
      processor: freezed == processor
          ? _value.processor
          : processor // ignore: cast_nullable_to_non_nullable
              as String?,
      screen_height: freezed == screen_height
          ? _value.screen_height
          : screen_height // ignore: cast_nullable_to_non_nullable
              as int?,
      screen_width: freezed == screen_width
          ? _value.screen_width
          : screen_width // ignore: cast_nullable_to_non_nullable
              as int?,
      density_dpi: freezed == density_dpi
          ? _value.density_dpi
          : density_dpi // ignore: cast_nullable_to_non_nullable
              as int?,
      density: freezed == density
          ? _value.density
          : density // ignore: cast_nullable_to_non_nullable
              as num?,
      scaled_density: freezed == scaled_density
          ? _value.scaled_density
          : scaled_density // ignore: cast_nullable_to_non_nullable
              as num?,
      xdpi: freezed == xdpi
          ? _value.xdpi
          : xdpi // ignore: cast_nullable_to_non_nullable
              as num?,
      ydpi: freezed == ydpi
          ? _value.ydpi
          : ydpi // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HardwareInfoImpl implements _HardwareInfo {
  const _$HardwareInfoImpl(
      {this.phone_id,
      this.screen_resolution,
      this.device_name,
      this.phone_model,
      this.model_number,
      this.serial_number,
      this.assembly_number,
      this.ram,
      this.processor,
      this.screen_height,
      this.screen_width,
      this.density_dpi,
      this.density,
      this.scaled_density,
      this.xdpi,
      this.ydpi});

  factory _$HardwareInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$HardwareInfoImplFromJson(json);

  @override
  final String? phone_id;
  @override
  final String? screen_resolution;
  @override
  final String? device_name;
  @override
  final String? phone_model;
  @override
  final String? model_number;
  @override
  final String? serial_number;
  @override
  final String? assembly_number;
  @override
  final int? ram;
  @override
  final String? processor;
  @override
  final int? screen_height;
  @override
  final int? screen_width;
  @override
  final int? density_dpi;
  @override
  final num? density;
  @override
  final num? scaled_density;
  @override
  final num? xdpi;
  @override
  final num? ydpi;

  @override
  String toString() {
    return 'HardwareInfo(phone_id: $phone_id, screen_resolution: $screen_resolution, device_name: $device_name, phone_model: $phone_model, model_number: $model_number, serial_number: $serial_number, assembly_number: $assembly_number, ram: $ram, processor: $processor, screen_height: $screen_height, screen_width: $screen_width, density_dpi: $density_dpi, density: $density, scaled_density: $scaled_density, xdpi: $xdpi, ydpi: $ydpi)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HardwareInfoImpl &&
            (identical(other.phone_id, phone_id) ||
                other.phone_id == phone_id) &&
            (identical(other.screen_resolution, screen_resolution) ||
                other.screen_resolution == screen_resolution) &&
            (identical(other.device_name, device_name) ||
                other.device_name == device_name) &&
            (identical(other.phone_model, phone_model) ||
                other.phone_model == phone_model) &&
            (identical(other.model_number, model_number) ||
                other.model_number == model_number) &&
            (identical(other.serial_number, serial_number) ||
                other.serial_number == serial_number) &&
            (identical(other.assembly_number, assembly_number) ||
                other.assembly_number == assembly_number) &&
            (identical(other.ram, ram) || other.ram == ram) &&
            (identical(other.processor, processor) ||
                other.processor == processor) &&
            (identical(other.screen_height, screen_height) ||
                other.screen_height == screen_height) &&
            (identical(other.screen_width, screen_width) ||
                other.screen_width == screen_width) &&
            (identical(other.density_dpi, density_dpi) ||
                other.density_dpi == density_dpi) &&
            (identical(other.density, density) || other.density == density) &&
            (identical(other.scaled_density, scaled_density) ||
                other.scaled_density == scaled_density) &&
            (identical(other.xdpi, xdpi) || other.xdpi == xdpi) &&
            (identical(other.ydpi, ydpi) || other.ydpi == ydpi));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      phone_id,
      screen_resolution,
      device_name,
      phone_model,
      model_number,
      serial_number,
      assembly_number,
      ram,
      processor,
      screen_height,
      screen_width,
      density_dpi,
      density,
      scaled_density,
      xdpi,
      ydpi);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HardwareInfoImplCopyWith<_$HardwareInfoImpl> get copyWith =>
      __$$HardwareInfoImplCopyWithImpl<_$HardwareInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HardwareInfoImplToJson(
      this,
    );
  }
}

abstract class _HardwareInfo implements HardwareInfo {
  const factory _HardwareInfo(
      {final String? phone_id,
      final String? screen_resolution,
      final String? device_name,
      final String? phone_model,
      final String? model_number,
      final String? serial_number,
      final String? assembly_number,
      final int? ram,
      final String? processor,
      final int? screen_height,
      final int? screen_width,
      final int? density_dpi,
      final num? density,
      final num? scaled_density,
      final num? xdpi,
      final num? ydpi}) = _$HardwareInfoImpl;

  factory _HardwareInfo.fromJson(Map<String, dynamic> json) =
      _$HardwareInfoImpl.fromJson;

  @override
  String? get phone_id;
  @override
  String? get screen_resolution;
  @override
  String? get device_name;
  @override
  String? get phone_model;
  @override
  String? get model_number;
  @override
  String? get serial_number;
  @override
  String? get assembly_number;
  @override
  int? get ram;
  @override
  String? get processor;
  @override
  int? get screen_height;
  @override
  int? get screen_width;
  @override
  int? get density_dpi;
  @override
  num? get density;
  @override
  num? get scaled_density;
  @override
  num? get xdpi;
  @override
  num? get ydpi;
  @override
  @JsonKey(ignore: true)
  _$$HardwareInfoImplCopyWith<_$HardwareInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LocaleSettings _$LocaleSettingsFromJson(Map<String, dynamic> json) {
  return _LocaleSettings.fromJson(json);
}

/// @nodoc
mixin _$LocaleSettings {
  List<String>? get system_locales => throw _privateConstructorUsedError;
  List<String>? get keyboard_locales => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  String? get sim_1_operator => throw _privateConstructorUsedError;
  String? get network_type => throw _privateConstructorUsedError;
  String? get network_speed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocaleSettingsCopyWith<LocaleSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocaleSettingsCopyWith<$Res> {
  factory $LocaleSettingsCopyWith(
          LocaleSettings value, $Res Function(LocaleSettings) then) =
      _$LocaleSettingsCopyWithImpl<$Res, LocaleSettings>;
  @useResult
  $Res call(
      {List<String>? system_locales,
      List<String>? keyboard_locales,
      String? language,
      String? sim_1_operator,
      String? network_type,
      String? network_speed});
}

/// @nodoc
class _$LocaleSettingsCopyWithImpl<$Res, $Val extends LocaleSettings>
    implements $LocaleSettingsCopyWith<$Res> {
  _$LocaleSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? system_locales = freezed,
    Object? keyboard_locales = freezed,
    Object? language = freezed,
    Object? sim_1_operator = freezed,
    Object? network_type = freezed,
    Object? network_speed = freezed,
  }) {
    return _then(_value.copyWith(
      system_locales: freezed == system_locales
          ? _value.system_locales
          : system_locales // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      keyboard_locales: freezed == keyboard_locales
          ? _value.keyboard_locales
          : keyboard_locales // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      sim_1_operator: freezed == sim_1_operator
          ? _value.sim_1_operator
          : sim_1_operator // ignore: cast_nullable_to_non_nullable
              as String?,
      network_type: freezed == network_type
          ? _value.network_type
          : network_type // ignore: cast_nullable_to_non_nullable
              as String?,
      network_speed: freezed == network_speed
          ? _value.network_speed
          : network_speed // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocaleSettingsImplCopyWith<$Res>
    implements $LocaleSettingsCopyWith<$Res> {
  factory _$$LocaleSettingsImplCopyWith(_$LocaleSettingsImpl value,
          $Res Function(_$LocaleSettingsImpl) then) =
      __$$LocaleSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String>? system_locales,
      List<String>? keyboard_locales,
      String? language,
      String? sim_1_operator,
      String? network_type,
      String? network_speed});
}

/// @nodoc
class __$$LocaleSettingsImplCopyWithImpl<$Res>
    extends _$LocaleSettingsCopyWithImpl<$Res, _$LocaleSettingsImpl>
    implements _$$LocaleSettingsImplCopyWith<$Res> {
  __$$LocaleSettingsImplCopyWithImpl(
      _$LocaleSettingsImpl _value, $Res Function(_$LocaleSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? system_locales = freezed,
    Object? keyboard_locales = freezed,
    Object? language = freezed,
    Object? sim_1_operator = freezed,
    Object? network_type = freezed,
    Object? network_speed = freezed,
  }) {
    return _then(_$LocaleSettingsImpl(
      system_locales: freezed == system_locales
          ? _value._system_locales
          : system_locales // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      keyboard_locales: freezed == keyboard_locales
          ? _value._keyboard_locales
          : keyboard_locales // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      sim_1_operator: freezed == sim_1_operator
          ? _value.sim_1_operator
          : sim_1_operator // ignore: cast_nullable_to_non_nullable
              as String?,
      network_type: freezed == network_type
          ? _value.network_type
          : network_type // ignore: cast_nullable_to_non_nullable
              as String?,
      network_speed: freezed == network_speed
          ? _value.network_speed
          : network_speed // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocaleSettingsImpl implements _LocaleSettings {
  const _$LocaleSettingsImpl(
      {final List<String>? system_locales,
      final List<String>? keyboard_locales,
      this.language,
      this.sim_1_operator,
      this.network_type,
      this.network_speed})
      : _system_locales = system_locales,
        _keyboard_locales = keyboard_locales;

  factory _$LocaleSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocaleSettingsImplFromJson(json);

  final List<String>? _system_locales;
  @override
  List<String>? get system_locales {
    final value = _system_locales;
    if (value == null) return null;
    if (_system_locales is EqualUnmodifiableListView) return _system_locales;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _keyboard_locales;
  @override
  List<String>? get keyboard_locales {
    final value = _keyboard_locales;
    if (value == null) return null;
    if (_keyboard_locales is EqualUnmodifiableListView)
      return _keyboard_locales;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? language;
  @override
  final String? sim_1_operator;
  @override
  final String? network_type;
  @override
  final String? network_speed;

  @override
  String toString() {
    return 'LocaleSettings(system_locales: $system_locales, keyboard_locales: $keyboard_locales, language: $language, sim_1_operator: $sim_1_operator, network_type: $network_type, network_speed: $network_speed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocaleSettingsImpl &&
            const DeepCollectionEquality()
                .equals(other._system_locales, _system_locales) &&
            const DeepCollectionEquality()
                .equals(other._keyboard_locales, _keyboard_locales) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.sim_1_operator, sim_1_operator) ||
                other.sim_1_operator == sim_1_operator) &&
            (identical(other.network_type, network_type) ||
                other.network_type == network_type) &&
            (identical(other.network_speed, network_speed) ||
                other.network_speed == network_speed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_system_locales),
      const DeepCollectionEquality().hash(_keyboard_locales),
      language,
      sim_1_operator,
      network_type,
      network_speed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocaleSettingsImplCopyWith<_$LocaleSettingsImpl> get copyWith =>
      __$$LocaleSettingsImplCopyWithImpl<_$LocaleSettingsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocaleSettingsImplToJson(
      this,
    );
  }
}

abstract class _LocaleSettings implements LocaleSettings {
  const factory _LocaleSettings(
      {final List<String>? system_locales,
      final List<String>? keyboard_locales,
      final String? language,
      final String? sim_1_operator,
      final String? network_type,
      final String? network_speed}) = _$LocaleSettingsImpl;

  factory _LocaleSettings.fromJson(Map<String, dynamic> json) =
      _$LocaleSettingsImpl.fromJson;

  @override
  List<String>? get system_locales;
  @override
  List<String>? get keyboard_locales;
  @override
  String? get language;
  @override
  String? get sim_1_operator;
  @override
  String? get network_type;
  @override
  String? get network_speed;
  @override
  @JsonKey(ignore: true)
  _$$LocaleSettingsImplCopyWith<_$LocaleSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
