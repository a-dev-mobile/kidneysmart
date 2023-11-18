// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_setting_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppSettingState _$AppSettingStateFromJson(Map<String, dynamic> json) {
  return _DebugState.fromJson(json);
}

/// @nodoc
mixin _$AppSettingState {
  EnumProject get enumProject => throw _privateConstructorUsedError;
  EnumStore get enumStore => throw _privateConstructorUsedError;
  ApiAppUpdateCheckResSuccess get apiAppUpdateCheckResSuccess =>
      throw _privateConstructorUsedError;
  FeatureToggleSettings get featureToggleSettings =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppSettingStateCopyWith<AppSettingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppSettingStateCopyWith<$Res> {
  factory $AppSettingStateCopyWith(
          AppSettingState value, $Res Function(AppSettingState) then) =
      _$AppSettingStateCopyWithImpl<$Res, AppSettingState>;
  @useResult
  $Res call(
      {EnumProject enumProject,
      EnumStore enumStore,
      ApiAppUpdateCheckResSuccess apiAppUpdateCheckResSuccess,
      FeatureToggleSettings featureToggleSettings});

  $ApiAppUpdateCheckResSuccessCopyWith<$Res> get apiAppUpdateCheckResSuccess;
  $FeatureToggleSettingsCopyWith<$Res> get featureToggleSettings;
}

/// @nodoc
class _$AppSettingStateCopyWithImpl<$Res, $Val extends AppSettingState>
    implements $AppSettingStateCopyWith<$Res> {
  _$AppSettingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enumProject = null,
    Object? enumStore = null,
    Object? apiAppUpdateCheckResSuccess = null,
    Object? featureToggleSettings = null,
  }) {
    return _then(_value.copyWith(
      enumProject: null == enumProject
          ? _value.enumProject
          : enumProject // ignore: cast_nullable_to_non_nullable
              as EnumProject,
      enumStore: null == enumStore
          ? _value.enumStore
          : enumStore // ignore: cast_nullable_to_non_nullable
              as EnumStore,
      apiAppUpdateCheckResSuccess: null == apiAppUpdateCheckResSuccess
          ? _value.apiAppUpdateCheckResSuccess
          : apiAppUpdateCheckResSuccess // ignore: cast_nullable_to_non_nullable
              as ApiAppUpdateCheckResSuccess,
      featureToggleSettings: null == featureToggleSettings
          ? _value.featureToggleSettings
          : featureToggleSettings // ignore: cast_nullable_to_non_nullable
              as FeatureToggleSettings,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiAppUpdateCheckResSuccessCopyWith<$Res> get apiAppUpdateCheckResSuccess {
    return $ApiAppUpdateCheckResSuccessCopyWith<$Res>(
        _value.apiAppUpdateCheckResSuccess, (value) {
      return _then(_value.copyWith(apiAppUpdateCheckResSuccess: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FeatureToggleSettingsCopyWith<$Res> get featureToggleSettings {
    return $FeatureToggleSettingsCopyWith<$Res>(_value.featureToggleSettings,
        (value) {
      return _then(_value.copyWith(featureToggleSettings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DebugStateImplCopyWith<$Res>
    implements $AppSettingStateCopyWith<$Res> {
  factory _$$DebugStateImplCopyWith(
          _$DebugStateImpl value, $Res Function(_$DebugStateImpl) then) =
      __$$DebugStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EnumProject enumProject,
      EnumStore enumStore,
      ApiAppUpdateCheckResSuccess apiAppUpdateCheckResSuccess,
      FeatureToggleSettings featureToggleSettings});

  @override
  $ApiAppUpdateCheckResSuccessCopyWith<$Res> get apiAppUpdateCheckResSuccess;
  @override
  $FeatureToggleSettingsCopyWith<$Res> get featureToggleSettings;
}

/// @nodoc
class __$$DebugStateImplCopyWithImpl<$Res>
    extends _$AppSettingStateCopyWithImpl<$Res, _$DebugStateImpl>
    implements _$$DebugStateImplCopyWith<$Res> {
  __$$DebugStateImplCopyWithImpl(
      _$DebugStateImpl _value, $Res Function(_$DebugStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enumProject = null,
    Object? enumStore = null,
    Object? apiAppUpdateCheckResSuccess = null,
    Object? featureToggleSettings = null,
  }) {
    return _then(_$DebugStateImpl(
      enumProject: null == enumProject
          ? _value.enumProject
          : enumProject // ignore: cast_nullable_to_non_nullable
              as EnumProject,
      enumStore: null == enumStore
          ? _value.enumStore
          : enumStore // ignore: cast_nullable_to_non_nullable
              as EnumStore,
      apiAppUpdateCheckResSuccess: null == apiAppUpdateCheckResSuccess
          ? _value.apiAppUpdateCheckResSuccess
          : apiAppUpdateCheckResSuccess // ignore: cast_nullable_to_non_nullable
              as ApiAppUpdateCheckResSuccess,
      featureToggleSettings: null == featureToggleSettings
          ? _value.featureToggleSettings
          : featureToggleSettings // ignore: cast_nullable_to_non_nullable
              as FeatureToggleSettings,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DebugStateImpl implements _DebugState {
  const _$DebugStateImpl(
      {this.enumProject = EnumProject.prod,
      this.enumStore = EnumStore.unknown,
      this.apiAppUpdateCheckResSuccess = const ApiAppUpdateCheckResSuccess(),
      this.featureToggleSettings = const FeatureToggleSettings()});

  factory _$DebugStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$DebugStateImplFromJson(json);

  @override
  @JsonKey()
  final EnumProject enumProject;
  @override
  @JsonKey()
  final EnumStore enumStore;
  @override
  @JsonKey()
  final ApiAppUpdateCheckResSuccess apiAppUpdateCheckResSuccess;
  @override
  @JsonKey()
  final FeatureToggleSettings featureToggleSettings;

  @override
  String toString() {
    return 'AppSettingState(enumProject: $enumProject, enumStore: $enumStore, apiAppUpdateCheckResSuccess: $apiAppUpdateCheckResSuccess, featureToggleSettings: $featureToggleSettings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DebugStateImpl &&
            (identical(other.enumProject, enumProject) ||
                other.enumProject == enumProject) &&
            (identical(other.enumStore, enumStore) ||
                other.enumStore == enumStore) &&
            (identical(other.apiAppUpdateCheckResSuccess,
                    apiAppUpdateCheckResSuccess) ||
                other.apiAppUpdateCheckResSuccess ==
                    apiAppUpdateCheckResSuccess) &&
            (identical(other.featureToggleSettings, featureToggleSettings) ||
                other.featureToggleSettings == featureToggleSettings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, enumProject, enumStore,
      apiAppUpdateCheckResSuccess, featureToggleSettings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DebugStateImplCopyWith<_$DebugStateImpl> get copyWith =>
      __$$DebugStateImplCopyWithImpl<_$DebugStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DebugStateImplToJson(
      this,
    );
  }
}

abstract class _DebugState implements AppSettingState {
  const factory _DebugState(
      {final EnumProject enumProject,
      final EnumStore enumStore,
      final ApiAppUpdateCheckResSuccess apiAppUpdateCheckResSuccess,
      final FeatureToggleSettings featureToggleSettings}) = _$DebugStateImpl;

  factory _DebugState.fromJson(Map<String, dynamic> json) =
      _$DebugStateImpl.fromJson;

  @override
  EnumProject get enumProject;
  @override
  EnumStore get enumStore;
  @override
  ApiAppUpdateCheckResSuccess get apiAppUpdateCheckResSuccess;
  @override
  FeatureToggleSettings get featureToggleSettings;
  @override
  @JsonKey(ignore: true)
  _$$DebugStateImplCopyWith<_$DebugStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FeatureToggleSettings _$FeatureToggleSettingsFromJson(
    Map<String, dynamic> json) {
  return _FeatureToggleSettings.fromJson(json);
}

/// @nodoc
mixin _$FeatureToggleSettings {
  bool get isDebugMenuEnabled => throw _privateConstructorUsedError;
  bool get isShowDevicePreview => throw _privateConstructorUsedError;
  bool get isShowBtnHttpLog => throw _privateConstructorUsedError;
  bool get isShowRepaintRainbow => throw _privateConstructorUsedError;
  bool get isShowPaintSizeEnabled => throw _privateConstructorUsedError;
  bool get isShowUrlPdfPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeatureToggleSettingsCopyWith<FeatureToggleSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeatureToggleSettingsCopyWith<$Res> {
  factory $FeatureToggleSettingsCopyWith(FeatureToggleSettings value,
          $Res Function(FeatureToggleSettings) then) =
      _$FeatureToggleSettingsCopyWithImpl<$Res, FeatureToggleSettings>;
  @useResult
  $Res call(
      {bool isDebugMenuEnabled,
      bool isShowDevicePreview,
      bool isShowBtnHttpLog,
      bool isShowRepaintRainbow,
      bool isShowPaintSizeEnabled,
      bool isShowUrlPdfPage});
}

/// @nodoc
class _$FeatureToggleSettingsCopyWithImpl<$Res,
        $Val extends FeatureToggleSettings>
    implements $FeatureToggleSettingsCopyWith<$Res> {
  _$FeatureToggleSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDebugMenuEnabled = null,
    Object? isShowDevicePreview = null,
    Object? isShowBtnHttpLog = null,
    Object? isShowRepaintRainbow = null,
    Object? isShowPaintSizeEnabled = null,
    Object? isShowUrlPdfPage = null,
  }) {
    return _then(_value.copyWith(
      isDebugMenuEnabled: null == isDebugMenuEnabled
          ? _value.isDebugMenuEnabled
          : isDebugMenuEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isShowDevicePreview: null == isShowDevicePreview
          ? _value.isShowDevicePreview
          : isShowDevicePreview // ignore: cast_nullable_to_non_nullable
              as bool,
      isShowBtnHttpLog: null == isShowBtnHttpLog
          ? _value.isShowBtnHttpLog
          : isShowBtnHttpLog // ignore: cast_nullable_to_non_nullable
              as bool,
      isShowRepaintRainbow: null == isShowRepaintRainbow
          ? _value.isShowRepaintRainbow
          : isShowRepaintRainbow // ignore: cast_nullable_to_non_nullable
              as bool,
      isShowPaintSizeEnabled: null == isShowPaintSizeEnabled
          ? _value.isShowPaintSizeEnabled
          : isShowPaintSizeEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isShowUrlPdfPage: null == isShowUrlPdfPage
          ? _value.isShowUrlPdfPage
          : isShowUrlPdfPage // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeatureToggleSettingsImplCopyWith<$Res>
    implements $FeatureToggleSettingsCopyWith<$Res> {
  factory _$$FeatureToggleSettingsImplCopyWith(
          _$FeatureToggleSettingsImpl value,
          $Res Function(_$FeatureToggleSettingsImpl) then) =
      __$$FeatureToggleSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isDebugMenuEnabled,
      bool isShowDevicePreview,
      bool isShowBtnHttpLog,
      bool isShowRepaintRainbow,
      bool isShowPaintSizeEnabled,
      bool isShowUrlPdfPage});
}

/// @nodoc
class __$$FeatureToggleSettingsImplCopyWithImpl<$Res>
    extends _$FeatureToggleSettingsCopyWithImpl<$Res,
        _$FeatureToggleSettingsImpl>
    implements _$$FeatureToggleSettingsImplCopyWith<$Res> {
  __$$FeatureToggleSettingsImplCopyWithImpl(_$FeatureToggleSettingsImpl _value,
      $Res Function(_$FeatureToggleSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDebugMenuEnabled = null,
    Object? isShowDevicePreview = null,
    Object? isShowBtnHttpLog = null,
    Object? isShowRepaintRainbow = null,
    Object? isShowPaintSizeEnabled = null,
    Object? isShowUrlPdfPage = null,
  }) {
    return _then(_$FeatureToggleSettingsImpl(
      isDebugMenuEnabled: null == isDebugMenuEnabled
          ? _value.isDebugMenuEnabled
          : isDebugMenuEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isShowDevicePreview: null == isShowDevicePreview
          ? _value.isShowDevicePreview
          : isShowDevicePreview // ignore: cast_nullable_to_non_nullable
              as bool,
      isShowBtnHttpLog: null == isShowBtnHttpLog
          ? _value.isShowBtnHttpLog
          : isShowBtnHttpLog // ignore: cast_nullable_to_non_nullable
              as bool,
      isShowRepaintRainbow: null == isShowRepaintRainbow
          ? _value.isShowRepaintRainbow
          : isShowRepaintRainbow // ignore: cast_nullable_to_non_nullable
              as bool,
      isShowPaintSizeEnabled: null == isShowPaintSizeEnabled
          ? _value.isShowPaintSizeEnabled
          : isShowPaintSizeEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isShowUrlPdfPage: null == isShowUrlPdfPage
          ? _value.isShowUrlPdfPage
          : isShowUrlPdfPage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeatureToggleSettingsImpl implements _FeatureToggleSettings {
  const _$FeatureToggleSettingsImpl(
      {this.isDebugMenuEnabled = false,
      this.isShowDevicePreview = false,
      this.isShowBtnHttpLog = false,
      this.isShowRepaintRainbow = false,
      this.isShowPaintSizeEnabled = false,
      this.isShowUrlPdfPage = false});

  factory _$FeatureToggleSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeatureToggleSettingsImplFromJson(json);

  @override
  @JsonKey()
  final bool isDebugMenuEnabled;
  @override
  @JsonKey()
  final bool isShowDevicePreview;
  @override
  @JsonKey()
  final bool isShowBtnHttpLog;
  @override
  @JsonKey()
  final bool isShowRepaintRainbow;
  @override
  @JsonKey()
  final bool isShowPaintSizeEnabled;
  @override
  @JsonKey()
  final bool isShowUrlPdfPage;

  @override
  String toString() {
    return 'FeatureToggleSettings(isDebugMenuEnabled: $isDebugMenuEnabled, isShowDevicePreview: $isShowDevicePreview, isShowBtnHttpLog: $isShowBtnHttpLog, isShowRepaintRainbow: $isShowRepaintRainbow, isShowPaintSizeEnabled: $isShowPaintSizeEnabled, isShowUrlPdfPage: $isShowUrlPdfPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeatureToggleSettingsImpl &&
            (identical(other.isDebugMenuEnabled, isDebugMenuEnabled) ||
                other.isDebugMenuEnabled == isDebugMenuEnabled) &&
            (identical(other.isShowDevicePreview, isShowDevicePreview) ||
                other.isShowDevicePreview == isShowDevicePreview) &&
            (identical(other.isShowBtnHttpLog, isShowBtnHttpLog) ||
                other.isShowBtnHttpLog == isShowBtnHttpLog) &&
            (identical(other.isShowRepaintRainbow, isShowRepaintRainbow) ||
                other.isShowRepaintRainbow == isShowRepaintRainbow) &&
            (identical(other.isShowPaintSizeEnabled, isShowPaintSizeEnabled) ||
                other.isShowPaintSizeEnabled == isShowPaintSizeEnabled) &&
            (identical(other.isShowUrlPdfPage, isShowUrlPdfPage) ||
                other.isShowUrlPdfPage == isShowUrlPdfPage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      isDebugMenuEnabled,
      isShowDevicePreview,
      isShowBtnHttpLog,
      isShowRepaintRainbow,
      isShowPaintSizeEnabled,
      isShowUrlPdfPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeatureToggleSettingsImplCopyWith<_$FeatureToggleSettingsImpl>
      get copyWith => __$$FeatureToggleSettingsImplCopyWithImpl<
          _$FeatureToggleSettingsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeatureToggleSettingsImplToJson(
      this,
    );
  }
}

abstract class _FeatureToggleSettings implements FeatureToggleSettings {
  const factory _FeatureToggleSettings(
      {final bool isDebugMenuEnabled,
      final bool isShowDevicePreview,
      final bool isShowBtnHttpLog,
      final bool isShowRepaintRainbow,
      final bool isShowPaintSizeEnabled,
      final bool isShowUrlPdfPage}) = _$FeatureToggleSettingsImpl;

  factory _FeatureToggleSettings.fromJson(Map<String, dynamic> json) =
      _$FeatureToggleSettingsImpl.fromJson;

  @override
  bool get isDebugMenuEnabled;
  @override
  bool get isShowDevicePreview;
  @override
  bool get isShowBtnHttpLog;
  @override
  bool get isShowRepaintRainbow;
  @override
  bool get isShowPaintSizeEnabled;
  @override
  bool get isShowUrlPdfPage;
  @override
  @JsonKey(ignore: true)
  _$$FeatureToggleSettingsImplCopyWith<_$FeatureToggleSettingsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
