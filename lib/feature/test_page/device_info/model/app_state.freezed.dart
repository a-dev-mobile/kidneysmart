// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppShutdown _$AppShutdownFromJson(Map<String, dynamic> json) {
  return _AppShutdown.fromJson(json);
}

/// @nodoc
mixin _$AppShutdown {
  String? get app_id => throw _privateConstructorUsedError;
  String? get user_id => throw _privateConstructorUsedError;
  String? get screen => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppShutdownCopyWith<AppShutdown> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppShutdownCopyWith<$Res> {
  factory $AppShutdownCopyWith(
          AppShutdown value, $Res Function(AppShutdown) then) =
      _$AppShutdownCopyWithImpl<$Res, AppShutdown>;
  @useResult
  $Res call({String? app_id, String? user_id, String? screen});
}

/// @nodoc
class _$AppShutdownCopyWithImpl<$Res, $Val extends AppShutdown>
    implements $AppShutdownCopyWith<$Res> {
  _$AppShutdownCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? app_id = freezed,
    Object? user_id = freezed,
    Object? screen = freezed,
  }) {
    return _then(_value.copyWith(
      app_id: freezed == app_id
          ? _value.app_id
          : app_id // ignore: cast_nullable_to_non_nullable
              as String?,
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String?,
      screen: freezed == screen
          ? _value.screen
          : screen // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppShutdownImplCopyWith<$Res>
    implements $AppShutdownCopyWith<$Res> {
  factory _$$AppShutdownImplCopyWith(
          _$AppShutdownImpl value, $Res Function(_$AppShutdownImpl) then) =
      __$$AppShutdownImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? app_id, String? user_id, String? screen});
}

/// @nodoc
class __$$AppShutdownImplCopyWithImpl<$Res>
    extends _$AppShutdownCopyWithImpl<$Res, _$AppShutdownImpl>
    implements _$$AppShutdownImplCopyWith<$Res> {
  __$$AppShutdownImplCopyWithImpl(
      _$AppShutdownImpl _value, $Res Function(_$AppShutdownImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? app_id = freezed,
    Object? user_id = freezed,
    Object? screen = freezed,
  }) {
    return _then(_$AppShutdownImpl(
      app_id: freezed == app_id
          ? _value.app_id
          : app_id // ignore: cast_nullable_to_non_nullable
              as String?,
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String?,
      screen: freezed == screen
          ? _value.screen
          : screen // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppShutdownImpl implements _AppShutdown {
  const _$AppShutdownImpl({this.app_id, this.user_id, this.screen});

  factory _$AppShutdownImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppShutdownImplFromJson(json);

  @override
  final String? app_id;
  @override
  final String? user_id;
  @override
  final String? screen;

  @override
  String toString() {
    return 'AppShutdown(app_id: $app_id, user_id: $user_id, screen: $screen)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppShutdownImpl &&
            (identical(other.app_id, app_id) || other.app_id == app_id) &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.screen, screen) || other.screen == screen));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, app_id, user_id, screen);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppShutdownImplCopyWith<_$AppShutdownImpl> get copyWith =>
      __$$AppShutdownImplCopyWithImpl<_$AppShutdownImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppShutdownImplToJson(
      this,
    );
  }
}

abstract class _AppShutdown implements AppShutdown {
  const factory _AppShutdown(
      {final String? app_id,
      final String? user_id,
      final String? screen}) = _$AppShutdownImpl;

  factory _AppShutdown.fromJson(Map<String, dynamic> json) =
      _$AppShutdownImpl.fromJson;

  @override
  String? get app_id;
  @override
  String? get user_id;
  @override
  String? get screen;
  @override
  @JsonKey(ignore: true)
  _$$AppShutdownImplCopyWith<_$AppShutdownImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AppStartup _$AppStartupFromJson(Map<String, dynamic> json) {
  return _AppStartup.fromJson(json);
}

/// @nodoc
mixin _$AppStartup {
  String? get app_id => throw _privateConstructorUsedError;
  String? get user_id => throw _privateConstructorUsedError;
  String? get last_step => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppStartupCopyWith<AppStartup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStartupCopyWith<$Res> {
  factory $AppStartupCopyWith(
          AppStartup value, $Res Function(AppStartup) then) =
      _$AppStartupCopyWithImpl<$Res, AppStartup>;
  @useResult
  $Res call({String? app_id, String? user_id, String? last_step});
}

/// @nodoc
class _$AppStartupCopyWithImpl<$Res, $Val extends AppStartup>
    implements $AppStartupCopyWith<$Res> {
  _$AppStartupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? app_id = freezed,
    Object? user_id = freezed,
    Object? last_step = freezed,
  }) {
    return _then(_value.copyWith(
      app_id: freezed == app_id
          ? _value.app_id
          : app_id // ignore: cast_nullable_to_non_nullable
              as String?,
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String?,
      last_step: freezed == last_step
          ? _value.last_step
          : last_step // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppStartupImplCopyWith<$Res>
    implements $AppStartupCopyWith<$Res> {
  factory _$$AppStartupImplCopyWith(
          _$AppStartupImpl value, $Res Function(_$AppStartupImpl) then) =
      __$$AppStartupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? app_id, String? user_id, String? last_step});
}

/// @nodoc
class __$$AppStartupImplCopyWithImpl<$Res>
    extends _$AppStartupCopyWithImpl<$Res, _$AppStartupImpl>
    implements _$$AppStartupImplCopyWith<$Res> {
  __$$AppStartupImplCopyWithImpl(
      _$AppStartupImpl _value, $Res Function(_$AppStartupImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? app_id = freezed,
    Object? user_id = freezed,
    Object? last_step = freezed,
  }) {
    return _then(_$AppStartupImpl(
      app_id: freezed == app_id
          ? _value.app_id
          : app_id // ignore: cast_nullable_to_non_nullable
              as String?,
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String?,
      last_step: freezed == last_step
          ? _value.last_step
          : last_step // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppStartupImpl implements _AppStartup {
  const _$AppStartupImpl({this.app_id, this.user_id, this.last_step});

  factory _$AppStartupImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppStartupImplFromJson(json);

  @override
  final String? app_id;
  @override
  final String? user_id;
  @override
  final String? last_step;

  @override
  String toString() {
    return 'AppStartup(app_id: $app_id, user_id: $user_id, last_step: $last_step)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStartupImpl &&
            (identical(other.app_id, app_id) || other.app_id == app_id) &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.last_step, last_step) ||
                other.last_step == last_step));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, app_id, user_id, last_step);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStartupImplCopyWith<_$AppStartupImpl> get copyWith =>
      __$$AppStartupImplCopyWithImpl<_$AppStartupImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppStartupImplToJson(
      this,
    );
  }
}

abstract class _AppStartup implements AppStartup {
  const factory _AppStartup(
      {final String? app_id,
      final String? user_id,
      final String? last_step}) = _$AppStartupImpl;

  factory _AppStartup.fromJson(Map<String, dynamic> json) =
      _$AppStartupImpl.fromJson;

  @override
  String? get app_id;
  @override
  String? get user_id;
  @override
  String? get last_step;
  @override
  @JsonKey(ignore: true)
  _$$AppStartupImplCopyWith<_$AppStartupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
