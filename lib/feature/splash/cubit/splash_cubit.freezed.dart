// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SplashState {
  EnumPageStatus get enumPageStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SplashStateCopyWith<SplashState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashStateCopyWith<$Res> {
  factory $SplashStateCopyWith(
          SplashState value, $Res Function(SplashState) then) =
      _$SplashStateCopyWithImpl<$Res, SplashState>;
  @useResult
  $Res call({EnumPageStatus enumPageStatus});
}

/// @nodoc
class _$SplashStateCopyWithImpl<$Res, $Val extends SplashState>
    implements $SplashStateCopyWith<$Res> {
  _$SplashStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enumPageStatus = null,
  }) {
    return _then(_value.copyWith(
      enumPageStatus: null == enumPageStatus
          ? _value.enumPageStatus
          : enumPageStatus // ignore: cast_nullable_to_non_nullable
              as EnumPageStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DebugStateImplCopyWith<$Res>
    implements $SplashStateCopyWith<$Res> {
  factory _$$DebugStateImplCopyWith(
          _$DebugStateImpl value, $Res Function(_$DebugStateImpl) then) =
      __$$DebugStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EnumPageStatus enumPageStatus});
}

/// @nodoc
class __$$DebugStateImplCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$DebugStateImpl>
    implements _$$DebugStateImplCopyWith<$Res> {
  __$$DebugStateImplCopyWithImpl(
      _$DebugStateImpl _value, $Res Function(_$DebugStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enumPageStatus = null,
  }) {
    return _then(_$DebugStateImpl(
      enumPageStatus: null == enumPageStatus
          ? _value.enumPageStatus
          : enumPageStatus // ignore: cast_nullable_to_non_nullable
              as EnumPageStatus,
    ));
  }
}

/// @nodoc

class _$DebugStateImpl implements _DebugState {
  const _$DebugStateImpl({this.enumPageStatus = EnumPageStatus.init});

  @override
  @JsonKey()
  final EnumPageStatus enumPageStatus;

  @override
  String toString() {
    return 'SplashState(enumPageStatus: $enumPageStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DebugStateImpl &&
            (identical(other.enumPageStatus, enumPageStatus) ||
                other.enumPageStatus == enumPageStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, enumPageStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DebugStateImplCopyWith<_$DebugStateImpl> get copyWith =>
      __$$DebugStateImplCopyWithImpl<_$DebugStateImpl>(this, _$identity);
}

abstract class _DebugState implements SplashState {
  const factory _DebugState({final EnumPageStatus enumPageStatus}) =
      _$DebugStateImpl;

  @override
  EnumPageStatus get enumPageStatus;
  @override
  @JsonKey(ignore: true)
  _$$DebugStateImplCopyWith<_$DebugStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
