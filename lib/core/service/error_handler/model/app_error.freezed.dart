// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppError _$AppErrorFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'general':
      return GeneralError.fromJson(json);
    case 'widgetLifecycleError':
      return WidgetLifecycleError.fromJson(json);
    case 'frameworkError':
      return FrameworkError.fromJson(json);
    case 'uncaughtError':
      return UncaughtError.fromJson(json);
    case 'platformError':
      return PlatformError.fromJson(json);
    case 'apiError':
      return ApiError.fromJson(json);
    case 'localStorageError':
      return LocalStorageError.fromJson(json);
    case 'authenticationError':
      return AuthenticationError.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'AppError',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$AppError {
  String get message => throw _privateConstructorUsedError;
  Map<String, dynamic>? get details => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
  StackTrace? get stackTrace => throw _privateConstructorUsedError;
  EnumLogLevel get level => throw _privateConstructorUsedError;
  bool get isFatal => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String? get time => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        general,
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        widgetLifecycleError,
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        frameworkError,
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        uncaughtError,
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        platformError,
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        apiError,
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        localStorageError,
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        authenticationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        general,
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        widgetLifecycleError,
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        frameworkError,
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        uncaughtError,
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        platformError,
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        apiError,
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        localStorageError,
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        authenticationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        general,
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        widgetLifecycleError,
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        frameworkError,
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        uncaughtError,
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        platformError,
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        apiError,
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        localStorageError,
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        authenticationError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GeneralError value) general,
    required TResult Function(WidgetLifecycleError value) widgetLifecycleError,
    required TResult Function(FrameworkError value) frameworkError,
    required TResult Function(UncaughtError value) uncaughtError,
    required TResult Function(PlatformError value) platformError,
    required TResult Function(ApiError value) apiError,
    required TResult Function(LocalStorageError value) localStorageError,
    required TResult Function(AuthenticationError value) authenticationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GeneralError value)? general,
    TResult? Function(WidgetLifecycleError value)? widgetLifecycleError,
    TResult? Function(FrameworkError value)? frameworkError,
    TResult? Function(UncaughtError value)? uncaughtError,
    TResult? Function(PlatformError value)? platformError,
    TResult? Function(ApiError value)? apiError,
    TResult? Function(LocalStorageError value)? localStorageError,
    TResult? Function(AuthenticationError value)? authenticationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GeneralError value)? general,
    TResult Function(WidgetLifecycleError value)? widgetLifecycleError,
    TResult Function(FrameworkError value)? frameworkError,
    TResult Function(UncaughtError value)? uncaughtError,
    TResult Function(PlatformError value)? platformError,
    TResult Function(ApiError value)? apiError,
    TResult Function(LocalStorageError value)? localStorageError,
    TResult Function(AuthenticationError value)? authenticationError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppErrorCopyWith<AppError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppErrorCopyWith<$Res> {
  factory $AppErrorCopyWith(AppError value, $Res Function(AppError) then) =
      _$AppErrorCopyWithImpl<$Res, AppError>;
  @useResult
  $Res call(
      {String message,
      Map<String, dynamic>? details,
      @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
      StackTrace? stackTrace,
      EnumLogLevel level,
      bool isFatal,
      String type,
      String? time});
}

/// @nodoc
class _$AppErrorCopyWithImpl<$Res, $Val extends AppError>
    implements $AppErrorCopyWith<$Res> {
  _$AppErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? details = freezed,
    Object? stackTrace = freezed,
    Object? level = null,
    Object? isFatal = null,
    Object? type = null,
    Object? time = freezed,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as EnumLogLevel,
      isFatal: null == isFatal
          ? _value.isFatal
          : isFatal // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GeneralErrorImplCopyWith<$Res>
    implements $AppErrorCopyWith<$Res> {
  factory _$$GeneralErrorImplCopyWith(
          _$GeneralErrorImpl value, $Res Function(_$GeneralErrorImpl) then) =
      __$$GeneralErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String message,
      Map<String, dynamic>? details,
      @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
      StackTrace? stackTrace,
      EnumLogLevel level,
      bool isFatal,
      String type,
      String? time});
}

/// @nodoc
class __$$GeneralErrorImplCopyWithImpl<$Res>
    extends _$AppErrorCopyWithImpl<$Res, _$GeneralErrorImpl>
    implements _$$GeneralErrorImplCopyWith<$Res> {
  __$$GeneralErrorImplCopyWithImpl(
      _$GeneralErrorImpl _value, $Res Function(_$GeneralErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? details = freezed,
    Object? stackTrace = freezed,
    Object? level = null,
    Object? isFatal = null,
    Object? type = null,
    Object? time = freezed,
  }) {
    return _then(_$GeneralErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      details: freezed == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as EnumLogLevel,
      isFatal: null == isFatal
          ? _value.isFatal
          : isFatal // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeneralErrorImpl extends GeneralError {
  const _$GeneralErrorImpl(
      {required this.message,
      final Map<String, dynamic>? details,
      @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
      this.stackTrace,
      this.level = EnumLogLevel.error,
      this.isFatal = true,
      this.type = 'GeneralError',
      this.time,
      final String? $type})
      : _details = details,
        $type = $type ?? 'general',
        super._();

  factory _$GeneralErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeneralErrorImplFromJson(json);

  @override
  final String message;
  final Map<String, dynamic>? _details;
  @override
  Map<String, dynamic>? get details {
    final value = _details;
    if (value == null) return null;
    if (_details is EqualUnmodifiableMapView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
  final StackTrace? stackTrace;
  @override
  @JsonKey()
  final EnumLogLevel level;
  @override
  @JsonKey()
  final bool isFatal;
  @override
  @JsonKey()
  final String type;
  @override
  final String? time;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AppError.general(message: $message, details: $details, stackTrace: $stackTrace, level: $level, isFatal: $isFatal, type: $type, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeneralErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._details, _details) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.isFatal, isFatal) || other.isFatal == isFatal) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      message,
      const DeepCollectionEquality().hash(_details),
      stackTrace,
      level,
      isFatal,
      type,
      time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GeneralErrorImplCopyWith<_$GeneralErrorImpl> get copyWith =>
      __$$GeneralErrorImplCopyWithImpl<_$GeneralErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        general,
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        widgetLifecycleError,
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        frameworkError,
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        uncaughtError,
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        platformError,
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        apiError,
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        localStorageError,
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        authenticationError,
  }) {
    return general(message, details, stackTrace, level, isFatal, type, time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        general,
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        widgetLifecycleError,
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        frameworkError,
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        uncaughtError,
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        platformError,
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        apiError,
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        localStorageError,
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        authenticationError,
  }) {
    return general?.call(
        message, details, stackTrace, level, isFatal, type, time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        general,
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        widgetLifecycleError,
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        frameworkError,
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        uncaughtError,
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        platformError,
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        apiError,
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        localStorageError,
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        authenticationError,
    required TResult orElse(),
  }) {
    if (general != null) {
      return general(message, details, stackTrace, level, isFatal, type, time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GeneralError value) general,
    required TResult Function(WidgetLifecycleError value) widgetLifecycleError,
    required TResult Function(FrameworkError value) frameworkError,
    required TResult Function(UncaughtError value) uncaughtError,
    required TResult Function(PlatformError value) platformError,
    required TResult Function(ApiError value) apiError,
    required TResult Function(LocalStorageError value) localStorageError,
    required TResult Function(AuthenticationError value) authenticationError,
  }) {
    return general(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GeneralError value)? general,
    TResult? Function(WidgetLifecycleError value)? widgetLifecycleError,
    TResult? Function(FrameworkError value)? frameworkError,
    TResult? Function(UncaughtError value)? uncaughtError,
    TResult? Function(PlatformError value)? platformError,
    TResult? Function(ApiError value)? apiError,
    TResult? Function(LocalStorageError value)? localStorageError,
    TResult? Function(AuthenticationError value)? authenticationError,
  }) {
    return general?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GeneralError value)? general,
    TResult Function(WidgetLifecycleError value)? widgetLifecycleError,
    TResult Function(FrameworkError value)? frameworkError,
    TResult Function(UncaughtError value)? uncaughtError,
    TResult Function(PlatformError value)? platformError,
    TResult Function(ApiError value)? apiError,
    TResult Function(LocalStorageError value)? localStorageError,
    TResult Function(AuthenticationError value)? authenticationError,
    required TResult orElse(),
  }) {
    if (general != null) {
      return general(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$GeneralErrorImplToJson(
      this,
    );
  }
}

abstract class GeneralError extends AppError {
  const factory GeneralError(
      {required final String message,
      final Map<String, dynamic>? details,
      @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
      final StackTrace? stackTrace,
      final EnumLogLevel level,
      final bool isFatal,
      final String type,
      final String? time}) = _$GeneralErrorImpl;
  const GeneralError._() : super._();

  factory GeneralError.fromJson(Map<String, dynamic> json) =
      _$GeneralErrorImpl.fromJson;

  @override
  String get message;
  @override
  Map<String, dynamic>? get details;
  @override
  @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
  StackTrace? get stackTrace;
  @override
  EnumLogLevel get level;
  @override
  bool get isFatal;
  @override
  String get type;
  @override
  String? get time;
  @override
  @JsonKey(ignore: true)
  _$$GeneralErrorImplCopyWith<_$GeneralErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WidgetLifecycleErrorImplCopyWith<$Res>
    implements $AppErrorCopyWith<$Res> {
  factory _$$WidgetLifecycleErrorImplCopyWith(_$WidgetLifecycleErrorImpl value,
          $Res Function(_$WidgetLifecycleErrorImpl) then) =
      __$$WidgetLifecycleErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String message,
      Map<String, dynamic>? details,
      @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
      StackTrace? stackTrace,
      EnumLogLevel level,
      bool isFatal,
      String type,
      String? time});
}

/// @nodoc
class __$$WidgetLifecycleErrorImplCopyWithImpl<$Res>
    extends _$AppErrorCopyWithImpl<$Res, _$WidgetLifecycleErrorImpl>
    implements _$$WidgetLifecycleErrorImplCopyWith<$Res> {
  __$$WidgetLifecycleErrorImplCopyWithImpl(_$WidgetLifecycleErrorImpl _value,
      $Res Function(_$WidgetLifecycleErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? details = freezed,
    Object? stackTrace = freezed,
    Object? level = null,
    Object? isFatal = null,
    Object? type = null,
    Object? time = freezed,
  }) {
    return _then(_$WidgetLifecycleErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      details: freezed == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as EnumLogLevel,
      isFatal: null == isFatal
          ? _value.isFatal
          : isFatal // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WidgetLifecycleErrorImpl extends WidgetLifecycleError {
  const _$WidgetLifecycleErrorImpl(
      {required this.message,
      final Map<String, dynamic>? details,
      @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
      this.stackTrace,
      this.level = EnumLogLevel.error,
      this.isFatal = true,
      this.type = 'WidgetLifecycleError',
      this.time,
      final String? $type})
      : _details = details,
        $type = $type ?? 'widgetLifecycleError',
        super._();

  factory _$WidgetLifecycleErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$WidgetLifecycleErrorImplFromJson(json);

  @override
  final String message;
  final Map<String, dynamic>? _details;
  @override
  Map<String, dynamic>? get details {
    final value = _details;
    if (value == null) return null;
    if (_details is EqualUnmodifiableMapView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
  final StackTrace? stackTrace;
  @override
  @JsonKey()
  final EnumLogLevel level;
  @override
  @JsonKey()
  final bool isFatal;
  @override
  @JsonKey()
  final String type;
  @override
  final String? time;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AppError.widgetLifecycleError(message: $message, details: $details, stackTrace: $stackTrace, level: $level, isFatal: $isFatal, type: $type, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WidgetLifecycleErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._details, _details) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.isFatal, isFatal) || other.isFatal == isFatal) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      message,
      const DeepCollectionEquality().hash(_details),
      stackTrace,
      level,
      isFatal,
      type,
      time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WidgetLifecycleErrorImplCopyWith<_$WidgetLifecycleErrorImpl>
      get copyWith =>
          __$$WidgetLifecycleErrorImplCopyWithImpl<_$WidgetLifecycleErrorImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        general,
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        widgetLifecycleError,
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        frameworkError,
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        uncaughtError,
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        platformError,
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        apiError,
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        localStorageError,
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        authenticationError,
  }) {
    return widgetLifecycleError(
        message, details, stackTrace, level, isFatal, type, time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        general,
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        widgetLifecycleError,
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        frameworkError,
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        uncaughtError,
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        platformError,
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        apiError,
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        localStorageError,
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        authenticationError,
  }) {
    return widgetLifecycleError?.call(
        message, details, stackTrace, level, isFatal, type, time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        general,
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        widgetLifecycleError,
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        frameworkError,
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        uncaughtError,
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        platformError,
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        apiError,
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        localStorageError,
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        authenticationError,
    required TResult orElse(),
  }) {
    if (widgetLifecycleError != null) {
      return widgetLifecycleError(
          message, details, stackTrace, level, isFatal, type, time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GeneralError value) general,
    required TResult Function(WidgetLifecycleError value) widgetLifecycleError,
    required TResult Function(FrameworkError value) frameworkError,
    required TResult Function(UncaughtError value) uncaughtError,
    required TResult Function(PlatformError value) platformError,
    required TResult Function(ApiError value) apiError,
    required TResult Function(LocalStorageError value) localStorageError,
    required TResult Function(AuthenticationError value) authenticationError,
  }) {
    return widgetLifecycleError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GeneralError value)? general,
    TResult? Function(WidgetLifecycleError value)? widgetLifecycleError,
    TResult? Function(FrameworkError value)? frameworkError,
    TResult? Function(UncaughtError value)? uncaughtError,
    TResult? Function(PlatformError value)? platformError,
    TResult? Function(ApiError value)? apiError,
    TResult? Function(LocalStorageError value)? localStorageError,
    TResult? Function(AuthenticationError value)? authenticationError,
  }) {
    return widgetLifecycleError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GeneralError value)? general,
    TResult Function(WidgetLifecycleError value)? widgetLifecycleError,
    TResult Function(FrameworkError value)? frameworkError,
    TResult Function(UncaughtError value)? uncaughtError,
    TResult Function(PlatformError value)? platformError,
    TResult Function(ApiError value)? apiError,
    TResult Function(LocalStorageError value)? localStorageError,
    TResult Function(AuthenticationError value)? authenticationError,
    required TResult orElse(),
  }) {
    if (widgetLifecycleError != null) {
      return widgetLifecycleError(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$WidgetLifecycleErrorImplToJson(
      this,
    );
  }
}

abstract class WidgetLifecycleError extends AppError {
  const factory WidgetLifecycleError(
      {required final String message,
      final Map<String, dynamic>? details,
      @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
      final StackTrace? stackTrace,
      final EnumLogLevel level,
      final bool isFatal,
      final String type,
      final String? time}) = _$WidgetLifecycleErrorImpl;
  const WidgetLifecycleError._() : super._();

  factory WidgetLifecycleError.fromJson(Map<String, dynamic> json) =
      _$WidgetLifecycleErrorImpl.fromJson;

  @override
  String get message;
  @override
  Map<String, dynamic>? get details;
  @override
  @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
  StackTrace? get stackTrace;
  @override
  EnumLogLevel get level;
  @override
  bool get isFatal;
  @override
  String get type;
  @override
  String? get time;
  @override
  @JsonKey(ignore: true)
  _$$WidgetLifecycleErrorImplCopyWith<_$WidgetLifecycleErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FrameworkErrorImplCopyWith<$Res>
    implements $AppErrorCopyWith<$Res> {
  factory _$$FrameworkErrorImplCopyWith(_$FrameworkErrorImpl value,
          $Res Function(_$FrameworkErrorImpl) then) =
      __$$FrameworkErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String message,
      Map<String, dynamic>? details,
      @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
      StackTrace? stackTrace,
      EnumLogLevel level,
      bool isFatal,
      String type,
      String? time});
}

/// @nodoc
class __$$FrameworkErrorImplCopyWithImpl<$Res>
    extends _$AppErrorCopyWithImpl<$Res, _$FrameworkErrorImpl>
    implements _$$FrameworkErrorImplCopyWith<$Res> {
  __$$FrameworkErrorImplCopyWithImpl(
      _$FrameworkErrorImpl _value, $Res Function(_$FrameworkErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? details = freezed,
    Object? stackTrace = freezed,
    Object? level = null,
    Object? isFatal = null,
    Object? type = null,
    Object? time = freezed,
  }) {
    return _then(_$FrameworkErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      details: freezed == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as EnumLogLevel,
      isFatal: null == isFatal
          ? _value.isFatal
          : isFatal // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FrameworkErrorImpl extends FrameworkError {
  const _$FrameworkErrorImpl(
      {required this.message,
      final Map<String, dynamic>? details,
      @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
      this.stackTrace,
      this.level = EnumLogLevel.error,
      this.isFatal = false,
      this.type = 'FlutterFrameworkError',
      this.time,
      final String? $type})
      : _details = details,
        $type = $type ?? 'frameworkError',
        super._();

  factory _$FrameworkErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$FrameworkErrorImplFromJson(json);

  @override
  final String message;
  final Map<String, dynamic>? _details;
  @override
  Map<String, dynamic>? get details {
    final value = _details;
    if (value == null) return null;
    if (_details is EqualUnmodifiableMapView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
  final StackTrace? stackTrace;
  @override
  @JsonKey()
  final EnumLogLevel level;
  @override
  @JsonKey()
  final bool isFatal;
  @override
  @JsonKey()
  final String type;
  @override
  final String? time;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AppError.frameworkError(message: $message, details: $details, stackTrace: $stackTrace, level: $level, isFatal: $isFatal, type: $type, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FrameworkErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._details, _details) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.isFatal, isFatal) || other.isFatal == isFatal) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      message,
      const DeepCollectionEquality().hash(_details),
      stackTrace,
      level,
      isFatal,
      type,
      time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FrameworkErrorImplCopyWith<_$FrameworkErrorImpl> get copyWith =>
      __$$FrameworkErrorImplCopyWithImpl<_$FrameworkErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        general,
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        widgetLifecycleError,
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        frameworkError,
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        uncaughtError,
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        platformError,
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        apiError,
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        localStorageError,
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        authenticationError,
  }) {
    return frameworkError(
        message, details, stackTrace, level, isFatal, type, time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        general,
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        widgetLifecycleError,
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        frameworkError,
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        uncaughtError,
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        platformError,
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        apiError,
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        localStorageError,
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        authenticationError,
  }) {
    return frameworkError?.call(
        message, details, stackTrace, level, isFatal, type, time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        general,
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        widgetLifecycleError,
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        frameworkError,
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        uncaughtError,
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        platformError,
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        apiError,
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        localStorageError,
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        authenticationError,
    required TResult orElse(),
  }) {
    if (frameworkError != null) {
      return frameworkError(
          message, details, stackTrace, level, isFatal, type, time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GeneralError value) general,
    required TResult Function(WidgetLifecycleError value) widgetLifecycleError,
    required TResult Function(FrameworkError value) frameworkError,
    required TResult Function(UncaughtError value) uncaughtError,
    required TResult Function(PlatformError value) platformError,
    required TResult Function(ApiError value) apiError,
    required TResult Function(LocalStorageError value) localStorageError,
    required TResult Function(AuthenticationError value) authenticationError,
  }) {
    return frameworkError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GeneralError value)? general,
    TResult? Function(WidgetLifecycleError value)? widgetLifecycleError,
    TResult? Function(FrameworkError value)? frameworkError,
    TResult? Function(UncaughtError value)? uncaughtError,
    TResult? Function(PlatformError value)? platformError,
    TResult? Function(ApiError value)? apiError,
    TResult? Function(LocalStorageError value)? localStorageError,
    TResult? Function(AuthenticationError value)? authenticationError,
  }) {
    return frameworkError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GeneralError value)? general,
    TResult Function(WidgetLifecycleError value)? widgetLifecycleError,
    TResult Function(FrameworkError value)? frameworkError,
    TResult Function(UncaughtError value)? uncaughtError,
    TResult Function(PlatformError value)? platformError,
    TResult Function(ApiError value)? apiError,
    TResult Function(LocalStorageError value)? localStorageError,
    TResult Function(AuthenticationError value)? authenticationError,
    required TResult orElse(),
  }) {
    if (frameworkError != null) {
      return frameworkError(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FrameworkErrorImplToJson(
      this,
    );
  }
}

abstract class FrameworkError extends AppError {
  const factory FrameworkError(
      {required final String message,
      final Map<String, dynamic>? details,
      @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
      final StackTrace? stackTrace,
      final EnumLogLevel level,
      final bool isFatal,
      final String type,
      final String? time}) = _$FrameworkErrorImpl;
  const FrameworkError._() : super._();

  factory FrameworkError.fromJson(Map<String, dynamic> json) =
      _$FrameworkErrorImpl.fromJson;

  @override
  String get message;
  @override
  Map<String, dynamic>? get details;
  @override
  @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
  StackTrace? get stackTrace;
  @override
  EnumLogLevel get level;
  @override
  bool get isFatal;
  @override
  String get type;
  @override
  String? get time;
  @override
  @JsonKey(ignore: true)
  _$$FrameworkErrorImplCopyWith<_$FrameworkErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UncaughtErrorImplCopyWith<$Res>
    implements $AppErrorCopyWith<$Res> {
  factory _$$UncaughtErrorImplCopyWith(
          _$UncaughtErrorImpl value, $Res Function(_$UncaughtErrorImpl) then) =
      __$$UncaughtErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String message,
      Map<String, dynamic>? details,
      @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
      StackTrace? stackTrace,
      EnumLogLevel level,
      bool isFatal,
      String type,
      String? time});
}

/// @nodoc
class __$$UncaughtErrorImplCopyWithImpl<$Res>
    extends _$AppErrorCopyWithImpl<$Res, _$UncaughtErrorImpl>
    implements _$$UncaughtErrorImplCopyWith<$Res> {
  __$$UncaughtErrorImplCopyWithImpl(
      _$UncaughtErrorImpl _value, $Res Function(_$UncaughtErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? details = freezed,
    Object? stackTrace = freezed,
    Object? level = null,
    Object? isFatal = null,
    Object? type = null,
    Object? time = freezed,
  }) {
    return _then(_$UncaughtErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      details: freezed == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as EnumLogLevel,
      isFatal: null == isFatal
          ? _value.isFatal
          : isFatal // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UncaughtErrorImpl extends UncaughtError {
  const _$UncaughtErrorImpl(
      {required this.message,
      final Map<String, dynamic>? details,
      @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
      this.stackTrace,
      this.level = EnumLogLevel.error,
      this.isFatal = true,
      this.type = 'UncaughtError',
      this.time,
      final String? $type})
      : _details = details,
        $type = $type ?? 'uncaughtError',
        super._();

  factory _$UncaughtErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$UncaughtErrorImplFromJson(json);

  @override
  final String message;
  final Map<String, dynamic>? _details;
  @override
  Map<String, dynamic>? get details {
    final value = _details;
    if (value == null) return null;
    if (_details is EqualUnmodifiableMapView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
  final StackTrace? stackTrace;
  @override
  @JsonKey()
  final EnumLogLevel level;
  @override
  @JsonKey()
  final bool isFatal;
  @override
  @JsonKey()
  final String type;
  @override
  final String? time;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AppError.uncaughtError(message: $message, details: $details, stackTrace: $stackTrace, level: $level, isFatal: $isFatal, type: $type, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UncaughtErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._details, _details) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.isFatal, isFatal) || other.isFatal == isFatal) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      message,
      const DeepCollectionEquality().hash(_details),
      stackTrace,
      level,
      isFatal,
      type,
      time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UncaughtErrorImplCopyWith<_$UncaughtErrorImpl> get copyWith =>
      __$$UncaughtErrorImplCopyWithImpl<_$UncaughtErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        general,
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        widgetLifecycleError,
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        frameworkError,
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        uncaughtError,
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        platformError,
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        apiError,
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        localStorageError,
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        authenticationError,
  }) {
    return uncaughtError(
        message, details, stackTrace, level, isFatal, type, time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        general,
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        widgetLifecycleError,
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        frameworkError,
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        uncaughtError,
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        platformError,
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        apiError,
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        localStorageError,
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        authenticationError,
  }) {
    return uncaughtError?.call(
        message, details, stackTrace, level, isFatal, type, time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        general,
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        widgetLifecycleError,
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        frameworkError,
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        uncaughtError,
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        platformError,
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        apiError,
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        localStorageError,
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        authenticationError,
    required TResult orElse(),
  }) {
    if (uncaughtError != null) {
      return uncaughtError(
          message, details, stackTrace, level, isFatal, type, time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GeneralError value) general,
    required TResult Function(WidgetLifecycleError value) widgetLifecycleError,
    required TResult Function(FrameworkError value) frameworkError,
    required TResult Function(UncaughtError value) uncaughtError,
    required TResult Function(PlatformError value) platformError,
    required TResult Function(ApiError value) apiError,
    required TResult Function(LocalStorageError value) localStorageError,
    required TResult Function(AuthenticationError value) authenticationError,
  }) {
    return uncaughtError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GeneralError value)? general,
    TResult? Function(WidgetLifecycleError value)? widgetLifecycleError,
    TResult? Function(FrameworkError value)? frameworkError,
    TResult? Function(UncaughtError value)? uncaughtError,
    TResult? Function(PlatformError value)? platformError,
    TResult? Function(ApiError value)? apiError,
    TResult? Function(LocalStorageError value)? localStorageError,
    TResult? Function(AuthenticationError value)? authenticationError,
  }) {
    return uncaughtError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GeneralError value)? general,
    TResult Function(WidgetLifecycleError value)? widgetLifecycleError,
    TResult Function(FrameworkError value)? frameworkError,
    TResult Function(UncaughtError value)? uncaughtError,
    TResult Function(PlatformError value)? platformError,
    TResult Function(ApiError value)? apiError,
    TResult Function(LocalStorageError value)? localStorageError,
    TResult Function(AuthenticationError value)? authenticationError,
    required TResult orElse(),
  }) {
    if (uncaughtError != null) {
      return uncaughtError(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UncaughtErrorImplToJson(
      this,
    );
  }
}

abstract class UncaughtError extends AppError {
  const factory UncaughtError(
      {required final String message,
      final Map<String, dynamic>? details,
      @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
      final StackTrace? stackTrace,
      final EnumLogLevel level,
      final bool isFatal,
      final String type,
      final String? time}) = _$UncaughtErrorImpl;
  const UncaughtError._() : super._();

  factory UncaughtError.fromJson(Map<String, dynamic> json) =
      _$UncaughtErrorImpl.fromJson;

  @override
  String get message;
  @override
  Map<String, dynamic>? get details;
  @override
  @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
  StackTrace? get stackTrace;
  @override
  EnumLogLevel get level;
  @override
  bool get isFatal;
  @override
  String get type;
  @override
  String? get time;
  @override
  @JsonKey(ignore: true)
  _$$UncaughtErrorImplCopyWith<_$UncaughtErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlatformErrorImplCopyWith<$Res>
    implements $AppErrorCopyWith<$Res> {
  factory _$$PlatformErrorImplCopyWith(
          _$PlatformErrorImpl value, $Res Function(_$PlatformErrorImpl) then) =
      __$$PlatformErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String message,
      Map<String, dynamic>? details,
      @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
      StackTrace? stackTrace,
      EnumLogLevel level,
      bool isFatal,
      String type,
      String? time});
}

/// @nodoc
class __$$PlatformErrorImplCopyWithImpl<$Res>
    extends _$AppErrorCopyWithImpl<$Res, _$PlatformErrorImpl>
    implements _$$PlatformErrorImplCopyWith<$Res> {
  __$$PlatformErrorImplCopyWithImpl(
      _$PlatformErrorImpl _value, $Res Function(_$PlatformErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? details = freezed,
    Object? stackTrace = freezed,
    Object? level = null,
    Object? isFatal = null,
    Object? type = null,
    Object? time = freezed,
  }) {
    return _then(_$PlatformErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      details: freezed == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as EnumLogLevel,
      isFatal: null == isFatal
          ? _value.isFatal
          : isFatal // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlatformErrorImpl extends PlatformError {
  const _$PlatformErrorImpl(
      {required this.message,
      final Map<String, dynamic>? details,
      @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
      this.stackTrace,
      this.level = EnumLogLevel.warning,
      this.isFatal = false,
      this.type = 'PlatformError',
      this.time,
      final String? $type})
      : _details = details,
        $type = $type ?? 'platformError',
        super._();

  factory _$PlatformErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlatformErrorImplFromJson(json);

  @override
  final String message;
  final Map<String, dynamic>? _details;
  @override
  Map<String, dynamic>? get details {
    final value = _details;
    if (value == null) return null;
    if (_details is EqualUnmodifiableMapView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
  final StackTrace? stackTrace;
  @override
  @JsonKey()
  final EnumLogLevel level;
  @override
  @JsonKey()
  final bool isFatal;
  @override
  @JsonKey()
  final String type;
  @override
  final String? time;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AppError.platformError(message: $message, details: $details, stackTrace: $stackTrace, level: $level, isFatal: $isFatal, type: $type, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlatformErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._details, _details) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.isFatal, isFatal) || other.isFatal == isFatal) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      message,
      const DeepCollectionEquality().hash(_details),
      stackTrace,
      level,
      isFatal,
      type,
      time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlatformErrorImplCopyWith<_$PlatformErrorImpl> get copyWith =>
      __$$PlatformErrorImplCopyWithImpl<_$PlatformErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        general,
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        widgetLifecycleError,
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        frameworkError,
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        uncaughtError,
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        platformError,
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        apiError,
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        localStorageError,
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        authenticationError,
  }) {
    return platformError(
        message, details, stackTrace, level, isFatal, type, time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        general,
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        widgetLifecycleError,
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        frameworkError,
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        uncaughtError,
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        platformError,
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        apiError,
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        localStorageError,
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        authenticationError,
  }) {
    return platformError?.call(
        message, details, stackTrace, level, isFatal, type, time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        general,
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        widgetLifecycleError,
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        frameworkError,
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        uncaughtError,
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        platformError,
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        apiError,
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        localStorageError,
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        authenticationError,
    required TResult orElse(),
  }) {
    if (platformError != null) {
      return platformError(
          message, details, stackTrace, level, isFatal, type, time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GeneralError value) general,
    required TResult Function(WidgetLifecycleError value) widgetLifecycleError,
    required TResult Function(FrameworkError value) frameworkError,
    required TResult Function(UncaughtError value) uncaughtError,
    required TResult Function(PlatformError value) platformError,
    required TResult Function(ApiError value) apiError,
    required TResult Function(LocalStorageError value) localStorageError,
    required TResult Function(AuthenticationError value) authenticationError,
  }) {
    return platformError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GeneralError value)? general,
    TResult? Function(WidgetLifecycleError value)? widgetLifecycleError,
    TResult? Function(FrameworkError value)? frameworkError,
    TResult? Function(UncaughtError value)? uncaughtError,
    TResult? Function(PlatformError value)? platformError,
    TResult? Function(ApiError value)? apiError,
    TResult? Function(LocalStorageError value)? localStorageError,
    TResult? Function(AuthenticationError value)? authenticationError,
  }) {
    return platformError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GeneralError value)? general,
    TResult Function(WidgetLifecycleError value)? widgetLifecycleError,
    TResult Function(FrameworkError value)? frameworkError,
    TResult Function(UncaughtError value)? uncaughtError,
    TResult Function(PlatformError value)? platformError,
    TResult Function(ApiError value)? apiError,
    TResult Function(LocalStorageError value)? localStorageError,
    TResult Function(AuthenticationError value)? authenticationError,
    required TResult orElse(),
  }) {
    if (platformError != null) {
      return platformError(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PlatformErrorImplToJson(
      this,
    );
  }
}

abstract class PlatformError extends AppError {
  const factory PlatformError(
      {required final String message,
      final Map<String, dynamic>? details,
      @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
      final StackTrace? stackTrace,
      final EnumLogLevel level,
      final bool isFatal,
      final String type,
      final String? time}) = _$PlatformErrorImpl;
  const PlatformError._() : super._();

  factory PlatformError.fromJson(Map<String, dynamic> json) =
      _$PlatformErrorImpl.fromJson;

  @override
  String get message;
  @override
  Map<String, dynamic>? get details;
  @override
  @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
  StackTrace? get stackTrace;
  @override
  EnumLogLevel get level;
  @override
  bool get isFatal;
  @override
  String get type;
  @override
  String? get time;
  @override
  @JsonKey(ignore: true)
  _$$PlatformErrorImplCopyWith<_$PlatformErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApiErrorImplCopyWith<$Res>
    implements $AppErrorCopyWith<$Res> {
  factory _$$ApiErrorImplCopyWith(
          _$ApiErrorImpl value, $Res Function(_$ApiErrorImpl) then) =
      __$$ApiErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String message,
      Map<String, dynamic>? details,
      @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
      StackTrace? stackTrace,
      EnumLogLevel level,
      bool isFatal,
      String type,
      String? time});
}

/// @nodoc
class __$$ApiErrorImplCopyWithImpl<$Res>
    extends _$AppErrorCopyWithImpl<$Res, _$ApiErrorImpl>
    implements _$$ApiErrorImplCopyWith<$Res> {
  __$$ApiErrorImplCopyWithImpl(
      _$ApiErrorImpl _value, $Res Function(_$ApiErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? details = freezed,
    Object? stackTrace = freezed,
    Object? level = null,
    Object? isFatal = null,
    Object? type = null,
    Object? time = freezed,
  }) {
    return _then(_$ApiErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      details: freezed == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as EnumLogLevel,
      isFatal: null == isFatal
          ? _value.isFatal
          : isFatal // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiErrorImpl extends ApiError {
  const _$ApiErrorImpl(
      {required this.message,
      final Map<String, dynamic>? details,
      @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
      this.stackTrace,
      this.level = EnumLogLevel.error,
      this.isFatal = true,
      this.type = 'ApiError',
      this.time,
      final String? $type})
      : _details = details,
        $type = $type ?? 'apiError',
        super._();

  factory _$ApiErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiErrorImplFromJson(json);

  @override
  final String message;
  final Map<String, dynamic>? _details;
  @override
  Map<String, dynamic>? get details {
    final value = _details;
    if (value == null) return null;
    if (_details is EqualUnmodifiableMapView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
  final StackTrace? stackTrace;
  @override
  @JsonKey()
  final EnumLogLevel level;
  @override
  @JsonKey()
  final bool isFatal;
  @override
  @JsonKey()
  final String type;
  @override
  final String? time;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AppError.apiError(message: $message, details: $details, stackTrace: $stackTrace, level: $level, isFatal: $isFatal, type: $type, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._details, _details) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.isFatal, isFatal) || other.isFatal == isFatal) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      message,
      const DeepCollectionEquality().hash(_details),
      stackTrace,
      level,
      isFatal,
      type,
      time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiErrorImplCopyWith<_$ApiErrorImpl> get copyWith =>
      __$$ApiErrorImplCopyWithImpl<_$ApiErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        general,
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        widgetLifecycleError,
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        frameworkError,
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        uncaughtError,
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        platformError,
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        apiError,
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        localStorageError,
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        authenticationError,
  }) {
    return apiError(message, details, stackTrace, level, isFatal, type, time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        general,
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        widgetLifecycleError,
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        frameworkError,
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        uncaughtError,
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        platformError,
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        apiError,
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        localStorageError,
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        authenticationError,
  }) {
    return apiError?.call(
        message, details, stackTrace, level, isFatal, type, time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        general,
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        widgetLifecycleError,
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        frameworkError,
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        uncaughtError,
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        platformError,
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        apiError,
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        localStorageError,
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        authenticationError,
    required TResult orElse(),
  }) {
    if (apiError != null) {
      return apiError(message, details, stackTrace, level, isFatal, type, time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GeneralError value) general,
    required TResult Function(WidgetLifecycleError value) widgetLifecycleError,
    required TResult Function(FrameworkError value) frameworkError,
    required TResult Function(UncaughtError value) uncaughtError,
    required TResult Function(PlatformError value) platformError,
    required TResult Function(ApiError value) apiError,
    required TResult Function(LocalStorageError value) localStorageError,
    required TResult Function(AuthenticationError value) authenticationError,
  }) {
    return apiError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GeneralError value)? general,
    TResult? Function(WidgetLifecycleError value)? widgetLifecycleError,
    TResult? Function(FrameworkError value)? frameworkError,
    TResult? Function(UncaughtError value)? uncaughtError,
    TResult? Function(PlatformError value)? platformError,
    TResult? Function(ApiError value)? apiError,
    TResult? Function(LocalStorageError value)? localStorageError,
    TResult? Function(AuthenticationError value)? authenticationError,
  }) {
    return apiError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GeneralError value)? general,
    TResult Function(WidgetLifecycleError value)? widgetLifecycleError,
    TResult Function(FrameworkError value)? frameworkError,
    TResult Function(UncaughtError value)? uncaughtError,
    TResult Function(PlatformError value)? platformError,
    TResult Function(ApiError value)? apiError,
    TResult Function(LocalStorageError value)? localStorageError,
    TResult Function(AuthenticationError value)? authenticationError,
    required TResult orElse(),
  }) {
    if (apiError != null) {
      return apiError(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiErrorImplToJson(
      this,
    );
  }
}

abstract class ApiError extends AppError {
  const factory ApiError(
      {required final String message,
      final Map<String, dynamic>? details,
      @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
      final StackTrace? stackTrace,
      final EnumLogLevel level,
      final bool isFatal,
      final String type,
      final String? time}) = _$ApiErrorImpl;
  const ApiError._() : super._();

  factory ApiError.fromJson(Map<String, dynamic> json) =
      _$ApiErrorImpl.fromJson;

  @override
  String get message;
  @override
  Map<String, dynamic>? get details;
  @override
  @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
  StackTrace? get stackTrace;
  @override
  EnumLogLevel get level;
  @override
  bool get isFatal;
  @override
  String get type;
  @override
  String? get time;
  @override
  @JsonKey(ignore: true)
  _$$ApiErrorImplCopyWith<_$ApiErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocalStorageErrorImplCopyWith<$Res>
    implements $AppErrorCopyWith<$Res> {
  factory _$$LocalStorageErrorImplCopyWith(_$LocalStorageErrorImpl value,
          $Res Function(_$LocalStorageErrorImpl) then) =
      __$$LocalStorageErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String message,
      Map<String, dynamic>? details,
      @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
      StackTrace? stackTrace,
      EnumLogLevel level,
      bool isFatal,
      String type,
      String? time});
}

/// @nodoc
class __$$LocalStorageErrorImplCopyWithImpl<$Res>
    extends _$AppErrorCopyWithImpl<$Res, _$LocalStorageErrorImpl>
    implements _$$LocalStorageErrorImplCopyWith<$Res> {
  __$$LocalStorageErrorImplCopyWithImpl(_$LocalStorageErrorImpl _value,
      $Res Function(_$LocalStorageErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? details = freezed,
    Object? stackTrace = freezed,
    Object? level = null,
    Object? isFatal = null,
    Object? type = null,
    Object? time = freezed,
  }) {
    return _then(_$LocalStorageErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      details: freezed == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as EnumLogLevel,
      isFatal: null == isFatal
          ? _value.isFatal
          : isFatal // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocalStorageErrorImpl extends LocalStorageError {
  const _$LocalStorageErrorImpl(
      {required this.message,
      final Map<String, dynamic>? details,
      @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
      this.stackTrace,
      this.level = EnumLogLevel.error,
      this.isFatal = true,
      this.type = 'LocalStorageError',
      this.time,
      final String? $type})
      : _details = details,
        $type = $type ?? 'localStorageError',
        super._();

  factory _$LocalStorageErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocalStorageErrorImplFromJson(json);

  @override
  final String message;
  final Map<String, dynamic>? _details;
  @override
  Map<String, dynamic>? get details {
    final value = _details;
    if (value == null) return null;
    if (_details is EqualUnmodifiableMapView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
  final StackTrace? stackTrace;
  @override
  @JsonKey()
  final EnumLogLevel level;
  @override
  @JsonKey()
  final bool isFatal;
  @override
  @JsonKey()
  final String type;
  @override
  final String? time;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AppError.localStorageError(message: $message, details: $details, stackTrace: $stackTrace, level: $level, isFatal: $isFatal, type: $type, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalStorageErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._details, _details) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.isFatal, isFatal) || other.isFatal == isFatal) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      message,
      const DeepCollectionEquality().hash(_details),
      stackTrace,
      level,
      isFatal,
      type,
      time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalStorageErrorImplCopyWith<_$LocalStorageErrorImpl> get copyWith =>
      __$$LocalStorageErrorImplCopyWithImpl<_$LocalStorageErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        general,
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        widgetLifecycleError,
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        frameworkError,
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        uncaughtError,
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        platformError,
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        apiError,
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        localStorageError,
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        authenticationError,
  }) {
    return localStorageError(
        message, details, stackTrace, level, isFatal, type, time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        general,
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        widgetLifecycleError,
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        frameworkError,
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        uncaughtError,
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        platformError,
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        apiError,
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        localStorageError,
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        authenticationError,
  }) {
    return localStorageError?.call(
        message, details, stackTrace, level, isFatal, type, time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        general,
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        widgetLifecycleError,
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        frameworkError,
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        uncaughtError,
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        platformError,
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        apiError,
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        localStorageError,
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        authenticationError,
    required TResult orElse(),
  }) {
    if (localStorageError != null) {
      return localStorageError(
          message, details, stackTrace, level, isFatal, type, time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GeneralError value) general,
    required TResult Function(WidgetLifecycleError value) widgetLifecycleError,
    required TResult Function(FrameworkError value) frameworkError,
    required TResult Function(UncaughtError value) uncaughtError,
    required TResult Function(PlatformError value) platformError,
    required TResult Function(ApiError value) apiError,
    required TResult Function(LocalStorageError value) localStorageError,
    required TResult Function(AuthenticationError value) authenticationError,
  }) {
    return localStorageError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GeneralError value)? general,
    TResult? Function(WidgetLifecycleError value)? widgetLifecycleError,
    TResult? Function(FrameworkError value)? frameworkError,
    TResult? Function(UncaughtError value)? uncaughtError,
    TResult? Function(PlatformError value)? platformError,
    TResult? Function(ApiError value)? apiError,
    TResult? Function(LocalStorageError value)? localStorageError,
    TResult? Function(AuthenticationError value)? authenticationError,
  }) {
    return localStorageError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GeneralError value)? general,
    TResult Function(WidgetLifecycleError value)? widgetLifecycleError,
    TResult Function(FrameworkError value)? frameworkError,
    TResult Function(UncaughtError value)? uncaughtError,
    TResult Function(PlatformError value)? platformError,
    TResult Function(ApiError value)? apiError,
    TResult Function(LocalStorageError value)? localStorageError,
    TResult Function(AuthenticationError value)? authenticationError,
    required TResult orElse(),
  }) {
    if (localStorageError != null) {
      return localStorageError(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LocalStorageErrorImplToJson(
      this,
    );
  }
}

abstract class LocalStorageError extends AppError {
  const factory LocalStorageError(
      {required final String message,
      final Map<String, dynamic>? details,
      @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
      final StackTrace? stackTrace,
      final EnumLogLevel level,
      final bool isFatal,
      final String type,
      final String? time}) = _$LocalStorageErrorImpl;
  const LocalStorageError._() : super._();

  factory LocalStorageError.fromJson(Map<String, dynamic> json) =
      _$LocalStorageErrorImpl.fromJson;

  @override
  String get message;
  @override
  Map<String, dynamic>? get details;
  @override
  @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
  StackTrace? get stackTrace;
  @override
  EnumLogLevel get level;
  @override
  bool get isFatal;
  @override
  String get type;
  @override
  String? get time;
  @override
  @JsonKey(ignore: true)
  _$$LocalStorageErrorImplCopyWith<_$LocalStorageErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticationErrorImplCopyWith<$Res>
    implements $AppErrorCopyWith<$Res> {
  factory _$$AuthenticationErrorImplCopyWith(_$AuthenticationErrorImpl value,
          $Res Function(_$AuthenticationErrorImpl) then) =
      __$$AuthenticationErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String message,
      Map<String, dynamic>? details,
      @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
      StackTrace? stackTrace,
      EnumLogLevel level,
      bool isFatal,
      String type,
      String? time});
}

/// @nodoc
class __$$AuthenticationErrorImplCopyWithImpl<$Res>
    extends _$AppErrorCopyWithImpl<$Res, _$AuthenticationErrorImpl>
    implements _$$AuthenticationErrorImplCopyWith<$Res> {
  __$$AuthenticationErrorImplCopyWithImpl(_$AuthenticationErrorImpl _value,
      $Res Function(_$AuthenticationErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? details = freezed,
    Object? stackTrace = freezed,
    Object? level = null,
    Object? isFatal = null,
    Object? type = null,
    Object? time = freezed,
  }) {
    return _then(_$AuthenticationErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      details: freezed == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as EnumLogLevel,
      isFatal: null == isFatal
          ? _value.isFatal
          : isFatal // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthenticationErrorImpl extends AuthenticationError {
  const _$AuthenticationErrorImpl(
      {required this.message,
      final Map<String, dynamic>? details,
      @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
      this.stackTrace,
      this.level = EnumLogLevel.error,
      this.isFatal = true,
      this.type = 'AuthenticationError',
      this.time,
      final String? $type})
      : _details = details,
        $type = $type ?? 'authenticationError',
        super._();

  factory _$AuthenticationErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthenticationErrorImplFromJson(json);

  @override
  final String message;
  final Map<String, dynamic>? _details;
  @override
  Map<String, dynamic>? get details {
    final value = _details;
    if (value == null) return null;
    if (_details is EqualUnmodifiableMapView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
  final StackTrace? stackTrace;
  @override
  @JsonKey()
  final EnumLogLevel level;
  @override
  @JsonKey()
  final bool isFatal;
  @override
  @JsonKey()
  final String type;
  @override
  final String? time;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AppError.authenticationError(message: $message, details: $details, stackTrace: $stackTrace, level: $level, isFatal: $isFatal, type: $type, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._details, _details) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.isFatal, isFatal) || other.isFatal == isFatal) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      message,
      const DeepCollectionEquality().hash(_details),
      stackTrace,
      level,
      isFatal,
      type,
      time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationErrorImplCopyWith<_$AuthenticationErrorImpl> get copyWith =>
      __$$AuthenticationErrorImplCopyWithImpl<_$AuthenticationErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        general,
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        widgetLifecycleError,
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        frameworkError,
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        uncaughtError,
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        platformError,
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        apiError,
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        localStorageError,
    required TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)
        authenticationError,
  }) {
    return authenticationError(
        message, details, stackTrace, level, isFatal, type, time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        general,
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        widgetLifecycleError,
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        frameworkError,
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        uncaughtError,
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        platformError,
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        apiError,
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        localStorageError,
    TResult? Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        authenticationError,
  }) {
    return authenticationError?.call(
        message, details, stackTrace, level, isFatal, type, time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        general,
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        widgetLifecycleError,
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        frameworkError,
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        uncaughtError,
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        platformError,
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        apiError,
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        localStorageError,
    TResult Function(
            String message,
            Map<String, dynamic>? details,
            @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
            StackTrace? stackTrace,
            EnumLogLevel level,
            bool isFatal,
            String type,
            String? time)?
        authenticationError,
    required TResult orElse(),
  }) {
    if (authenticationError != null) {
      return authenticationError(
          message, details, stackTrace, level, isFatal, type, time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GeneralError value) general,
    required TResult Function(WidgetLifecycleError value) widgetLifecycleError,
    required TResult Function(FrameworkError value) frameworkError,
    required TResult Function(UncaughtError value) uncaughtError,
    required TResult Function(PlatformError value) platformError,
    required TResult Function(ApiError value) apiError,
    required TResult Function(LocalStorageError value) localStorageError,
    required TResult Function(AuthenticationError value) authenticationError,
  }) {
    return authenticationError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GeneralError value)? general,
    TResult? Function(WidgetLifecycleError value)? widgetLifecycleError,
    TResult? Function(FrameworkError value)? frameworkError,
    TResult? Function(UncaughtError value)? uncaughtError,
    TResult? Function(PlatformError value)? platformError,
    TResult? Function(ApiError value)? apiError,
    TResult? Function(LocalStorageError value)? localStorageError,
    TResult? Function(AuthenticationError value)? authenticationError,
  }) {
    return authenticationError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GeneralError value)? general,
    TResult Function(WidgetLifecycleError value)? widgetLifecycleError,
    TResult Function(FrameworkError value)? frameworkError,
    TResult Function(UncaughtError value)? uncaughtError,
    TResult Function(PlatformError value)? platformError,
    TResult Function(ApiError value)? apiError,
    TResult Function(LocalStorageError value)? localStorageError,
    TResult Function(AuthenticationError value)? authenticationError,
    required TResult orElse(),
  }) {
    if (authenticationError != null) {
      return authenticationError(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthenticationErrorImplToJson(
      this,
    );
  }
}

abstract class AuthenticationError extends AppError {
  const factory AuthenticationError(
      {required final String message,
      final Map<String, dynamic>? details,
      @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
      final StackTrace? stackTrace,
      final EnumLogLevel level,
      final bool isFatal,
      final String type,
      final String? time}) = _$AuthenticationErrorImpl;
  const AuthenticationError._() : super._();

  factory AuthenticationError.fromJson(Map<String, dynamic> json) =
      _$AuthenticationErrorImpl.fromJson;

  @override
  String get message;
  @override
  Map<String, dynamic>? get details;
  @override
  @JsonKey(fromJson: _stackTraceFromJson, toJson: _stackTraceToJson)
  StackTrace? get stackTrace;
  @override
  EnumLogLevel get level;
  @override
  bool get isFatal;
  @override
  String get type;
  @override
  String? get time;
  @override
  @JsonKey(ignore: true)
  _$$AuthenticationErrorImplCopyWith<_$AuthenticationErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
