// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verification_code_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VerificationCodeState _$VerificationCodeStateFromJson(
    Map<String, dynamic> json) {
  return _VerificationCodeState.fromJson(json);
}

/// @nodoc
mixin _$VerificationCodeState {
  EnumStatus get enumStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerificationCodeStateCopyWith<VerificationCodeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationCodeStateCopyWith<$Res> {
  factory $VerificationCodeStateCopyWith(VerificationCodeState value,
          $Res Function(VerificationCodeState) then) =
      _$VerificationCodeStateCopyWithImpl<$Res, VerificationCodeState>;
  @useResult
  $Res call({EnumStatus enumStatus});
}

/// @nodoc
class _$VerificationCodeStateCopyWithImpl<$Res,
        $Val extends VerificationCodeState>
    implements $VerificationCodeStateCopyWith<$Res> {
  _$VerificationCodeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enumStatus = null,
  }) {
    return _then(_value.copyWith(
      enumStatus: null == enumStatus
          ? _value.enumStatus
          : enumStatus // ignore: cast_nullable_to_non_nullable
              as EnumStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerificationCodeStateImplCopyWith<$Res>
    implements $VerificationCodeStateCopyWith<$Res> {
  factory _$$VerificationCodeStateImplCopyWith(
          _$VerificationCodeStateImpl value,
          $Res Function(_$VerificationCodeStateImpl) then) =
      __$$VerificationCodeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EnumStatus enumStatus});
}

/// @nodoc
class __$$VerificationCodeStateImplCopyWithImpl<$Res>
    extends _$VerificationCodeStateCopyWithImpl<$Res,
        _$VerificationCodeStateImpl>
    implements _$$VerificationCodeStateImplCopyWith<$Res> {
  __$$VerificationCodeStateImplCopyWithImpl(_$VerificationCodeStateImpl _value,
      $Res Function(_$VerificationCodeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enumStatus = null,
  }) {
    return _then(_$VerificationCodeStateImpl(
      enumStatus: null == enumStatus
          ? _value.enumStatus
          : enumStatus // ignore: cast_nullable_to_non_nullable
              as EnumStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerificationCodeStateImpl implements _VerificationCodeState {
  const _$VerificationCodeStateImpl({this.enumStatus = EnumStatus.init});

  factory _$VerificationCodeStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerificationCodeStateImplFromJson(json);

  @override
  @JsonKey()
  final EnumStatus enumStatus;

  @override
  String toString() {
    return 'VerificationCodeState(enumStatus: $enumStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerificationCodeStateImpl &&
            (identical(other.enumStatus, enumStatus) ||
                other.enumStatus == enumStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, enumStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerificationCodeStateImplCopyWith<_$VerificationCodeStateImpl>
      get copyWith => __$$VerificationCodeStateImplCopyWithImpl<
          _$VerificationCodeStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerificationCodeStateImplToJson(
      this,
    );
  }
}

abstract class _VerificationCodeState implements VerificationCodeState {
  const factory _VerificationCodeState({final EnumStatus enumStatus}) =
      _$VerificationCodeStateImpl;

  factory _VerificationCodeState.fromJson(Map<String, dynamic> json) =
      _$VerificationCodeStateImpl.fromJson;

  @override
  EnumStatus get enumStatus;
  @override
  @JsonKey(ignore: true)
  _$$VerificationCodeStateImplCopyWith<_$VerificationCodeStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
