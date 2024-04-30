// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_update_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppUpdateState _$AppUpdateStateFromJson(Map<String, dynamic> json) {
  return _AppUpdateState.fromJson(json);
}

/// @nodoc
mixin _$AppUpdateState {
  EnumScreenStatus get enumStatus => throw _privateConstructorUsedError;
  ApiAppUpdateCheckRes get apiAppUpdateCheckRes =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppUpdateStateCopyWith<AppUpdateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppUpdateStateCopyWith<$Res> {
  factory $AppUpdateStateCopyWith(
          AppUpdateState value, $Res Function(AppUpdateState) then) =
      _$AppUpdateStateCopyWithImpl<$Res, AppUpdateState>;
  @useResult
  $Res call(
      {EnumScreenStatus enumStatus, ApiAppUpdateCheckRes apiAppUpdateCheckRes});

  $ApiAppUpdateCheckResCopyWith<$Res> get apiAppUpdateCheckRes;
}

/// @nodoc
class _$AppUpdateStateCopyWithImpl<$Res, $Val extends AppUpdateState>
    implements $AppUpdateStateCopyWith<$Res> {
  _$AppUpdateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enumStatus = null,
    Object? apiAppUpdateCheckRes = null,
  }) {
    return _then(_value.copyWith(
      enumStatus: null == enumStatus
          ? _value.enumStatus
          : enumStatus // ignore: cast_nullable_to_non_nullable
              as EnumScreenStatus,
      apiAppUpdateCheckRes: null == apiAppUpdateCheckRes
          ? _value.apiAppUpdateCheckRes
          : apiAppUpdateCheckRes // ignore: cast_nullable_to_non_nullable
              as ApiAppUpdateCheckRes,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiAppUpdateCheckResCopyWith<$Res> get apiAppUpdateCheckRes {
    return $ApiAppUpdateCheckResCopyWith<$Res>(_value.apiAppUpdateCheckRes,
        (value) {
      return _then(_value.copyWith(apiAppUpdateCheckRes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppUpdateStateImplCopyWith<$Res>
    implements $AppUpdateStateCopyWith<$Res> {
  factory _$$AppUpdateStateImplCopyWith(_$AppUpdateStateImpl value,
          $Res Function(_$AppUpdateStateImpl) then) =
      __$$AppUpdateStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EnumScreenStatus enumStatus, ApiAppUpdateCheckRes apiAppUpdateCheckRes});

  @override
  $ApiAppUpdateCheckResCopyWith<$Res> get apiAppUpdateCheckRes;
}

/// @nodoc
class __$$AppUpdateStateImplCopyWithImpl<$Res>
    extends _$AppUpdateStateCopyWithImpl<$Res, _$AppUpdateStateImpl>
    implements _$$AppUpdateStateImplCopyWith<$Res> {
  __$$AppUpdateStateImplCopyWithImpl(
      _$AppUpdateStateImpl _value, $Res Function(_$AppUpdateStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enumStatus = null,
    Object? apiAppUpdateCheckRes = null,
  }) {
    return _then(_$AppUpdateStateImpl(
      enumStatus: null == enumStatus
          ? _value.enumStatus
          : enumStatus // ignore: cast_nullable_to_non_nullable
              as EnumScreenStatus,
      apiAppUpdateCheckRes: null == apiAppUpdateCheckRes
          ? _value.apiAppUpdateCheckRes
          : apiAppUpdateCheckRes // ignore: cast_nullable_to_non_nullable
              as ApiAppUpdateCheckRes,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppUpdateStateImpl implements _AppUpdateState {
  const _$AppUpdateStateImpl(
      {this.enumStatus = EnumScreenStatus.init,
      this.apiAppUpdateCheckRes = const ApiAppUpdateCheckRes.init()});

  factory _$AppUpdateStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppUpdateStateImplFromJson(json);

  @override
  @JsonKey()
  final EnumScreenStatus enumStatus;
  @override
  @JsonKey()
  final ApiAppUpdateCheckRes apiAppUpdateCheckRes;

  @override
  String toString() {
    return 'AppUpdateState(enumStatus: $enumStatus, apiAppUpdateCheckRes: $apiAppUpdateCheckRes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppUpdateStateImpl &&
            (identical(other.enumStatus, enumStatus) ||
                other.enumStatus == enumStatus) &&
            (identical(other.apiAppUpdateCheckRes, apiAppUpdateCheckRes) ||
                other.apiAppUpdateCheckRes == apiAppUpdateCheckRes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, enumStatus, apiAppUpdateCheckRes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppUpdateStateImplCopyWith<_$AppUpdateStateImpl> get copyWith =>
      __$$AppUpdateStateImplCopyWithImpl<_$AppUpdateStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppUpdateStateImplToJson(
      this,
    );
  }
}

abstract class _AppUpdateState implements AppUpdateState {
  const factory _AppUpdateState(
      {final EnumScreenStatus enumStatus,
      final ApiAppUpdateCheckRes apiAppUpdateCheckRes}) = _$AppUpdateStateImpl;

  factory _AppUpdateState.fromJson(Map<String, dynamic> json) =
      _$AppUpdateStateImpl.fromJson;

  @override
  EnumScreenStatus get enumStatus;
  @override
  ApiAppUpdateCheckRes get apiAppUpdateCheckRes;
  @override
  @JsonKey(ignore: true)
  _$$AppUpdateStateImplCopyWith<_$AppUpdateStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
