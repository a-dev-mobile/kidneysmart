// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_entry_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PasswordEntryState _$PasswordEntryStateFromJson(Map<String, dynamic> json) {
  return _PasswordEntryState.fromJson(json);
}

/// @nodoc
mixin _$PasswordEntryState {
  EnumScreenStatus get enumStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PasswordEntryStateCopyWith<PasswordEntryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordEntryStateCopyWith<$Res> {
  factory $PasswordEntryStateCopyWith(
          PasswordEntryState value, $Res Function(PasswordEntryState) then) =
      _$PasswordEntryStateCopyWithImpl<$Res, PasswordEntryState>;
  @useResult
  $Res call({EnumScreenStatus enumStatus});
}

/// @nodoc
class _$PasswordEntryStateCopyWithImpl<$Res, $Val extends PasswordEntryState>
    implements $PasswordEntryStateCopyWith<$Res> {
  _$PasswordEntryStateCopyWithImpl(this._value, this._then);

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
abstract class _$$PasswordEntryStateImplCopyWith<$Res>
    implements $PasswordEntryStateCopyWith<$Res> {
  factory _$$PasswordEntryStateImplCopyWith(_$PasswordEntryStateImpl value,
          $Res Function(_$PasswordEntryStateImpl) then) =
      __$$PasswordEntryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EnumScreenStatus enumStatus});
}

/// @nodoc
class __$$PasswordEntryStateImplCopyWithImpl<$Res>
    extends _$PasswordEntryStateCopyWithImpl<$Res, _$PasswordEntryStateImpl>
    implements _$$PasswordEntryStateImplCopyWith<$Res> {
  __$$PasswordEntryStateImplCopyWithImpl(_$PasswordEntryStateImpl _value,
      $Res Function(_$PasswordEntryStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enumStatus = null,
  }) {
    return _then(_$PasswordEntryStateImpl(
      enumStatus: null == enumStatus
          ? _value.enumStatus
          : enumStatus // ignore: cast_nullable_to_non_nullable
              as EnumScreenStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PasswordEntryStateImpl implements _PasswordEntryState {
  const _$PasswordEntryStateImpl({this.enumStatus = EnumScreenStatus.init});

  factory _$PasswordEntryStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$PasswordEntryStateImplFromJson(json);

  @override
  @JsonKey()
  final EnumScreenStatus enumStatus;

  @override
  String toString() {
    return 'PasswordEntryState(enumStatus: $enumStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordEntryStateImpl &&
            (identical(other.enumStatus, enumStatus) ||
                other.enumStatus == enumStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, enumStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordEntryStateImplCopyWith<_$PasswordEntryStateImpl> get copyWith =>
      __$$PasswordEntryStateImplCopyWithImpl<_$PasswordEntryStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PasswordEntryStateImplToJson(
      this,
    );
  }
}

abstract class _PasswordEntryState implements PasswordEntryState {
  const factory _PasswordEntryState({final EnumScreenStatus enumStatus}) =
      _$PasswordEntryStateImpl;

  factory _PasswordEntryState.fromJson(Map<String, dynamic> json) =
      _$PasswordEntryStateImpl.fromJson;

  @override
  EnumScreenStatus get enumStatus;
  @override
  @JsonKey(ignore: true)
  _$$PasswordEntryStateImplCopyWith<_$PasswordEntryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
