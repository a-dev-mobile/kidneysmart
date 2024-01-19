// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_create_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PasswordCreateState _$PasswordCreateStateFromJson(Map<String, dynamic> json) {
  return _PasswordCreateState.fromJson(json);
}

/// @nodoc
mixin _$PasswordCreateState {
  EnumScreenStatus get enumStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PasswordCreateStateCopyWith<PasswordCreateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordCreateStateCopyWith<$Res> {
  factory $PasswordCreateStateCopyWith(
          PasswordCreateState value, $Res Function(PasswordCreateState) then) =
      _$PasswordCreateStateCopyWithImpl<$Res, PasswordCreateState>;
  @useResult
  $Res call({EnumScreenStatus enumStatus});
}

/// @nodoc
class _$PasswordCreateStateCopyWithImpl<$Res, $Val extends PasswordCreateState>
    implements $PasswordCreateStateCopyWith<$Res> {
  _$PasswordCreateStateCopyWithImpl(this._value, this._then);

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
              as EnumScreenStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PasswordCreateStateImplCopyWith<$Res>
    implements $PasswordCreateStateCopyWith<$Res> {
  factory _$$PasswordCreateStateImplCopyWith(_$PasswordCreateStateImpl value,
          $Res Function(_$PasswordCreateStateImpl) then) =
      __$$PasswordCreateStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EnumScreenStatus enumStatus});
}

/// @nodoc
class __$$PasswordCreateStateImplCopyWithImpl<$Res>
    extends _$PasswordCreateStateCopyWithImpl<$Res, _$PasswordCreateStateImpl>
    implements _$$PasswordCreateStateImplCopyWith<$Res> {
  __$$PasswordCreateStateImplCopyWithImpl(_$PasswordCreateStateImpl _value,
      $Res Function(_$PasswordCreateStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enumStatus = null,
  }) {
    return _then(_$PasswordCreateStateImpl(
      enumStatus: null == enumStatus
          ? _value.enumStatus
          : enumStatus // ignore: cast_nullable_to_non_nullable
              as EnumScreenStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PasswordCreateStateImpl implements _PasswordCreateState {
  const _$PasswordCreateStateImpl({this.enumStatus = EnumScreenStatus.init});

  factory _$PasswordCreateStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$PasswordCreateStateImplFromJson(json);

  @override
  @JsonKey()
  final EnumScreenStatus enumStatus;

  @override
  String toString() {
    return 'PasswordCreateState(enumStatus: $enumStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordCreateStateImpl &&
            (identical(other.enumStatus, enumStatus) ||
                other.enumStatus == enumStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, enumStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordCreateStateImplCopyWith<_$PasswordCreateStateImpl> get copyWith =>
      __$$PasswordCreateStateImplCopyWithImpl<_$PasswordCreateStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PasswordCreateStateImplToJson(
      this,
    );
  }
}

abstract class _PasswordCreateState implements PasswordCreateState {
  const factory _PasswordCreateState({final EnumScreenStatus enumStatus}) =
      _$PasswordCreateStateImpl;

  factory _PasswordCreateState.fromJson(Map<String, dynamic> json) =
      _$PasswordCreateStateImpl.fromJson;

  @override
  EnumScreenStatus get enumStatus;
  @override
  @JsonKey(ignore: true)
  _$$PasswordCreateStateImplCopyWith<_$PasswordCreateStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
