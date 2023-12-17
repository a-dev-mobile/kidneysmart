// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'internet_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InternetState _$InternetStateFromJson(Map<String, dynamic> json) {
  return _InternetState.fromJson(json);
}

/// @nodoc
mixin _$InternetState {
  EnumInternetStatus get enumInternetStatus =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InternetStateCopyWith<InternetState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InternetStateCopyWith<$Res> {
  factory $InternetStateCopyWith(
          InternetState value, $Res Function(InternetState) then) =
      _$InternetStateCopyWithImpl<$Res, InternetState>;
  @useResult
  $Res call({EnumInternetStatus enumInternetStatus});
}

/// @nodoc
class _$InternetStateCopyWithImpl<$Res, $Val extends InternetState>
    implements $InternetStateCopyWith<$Res> {
  _$InternetStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enumInternetStatus = null,
  }) {
    return _then(_value.copyWith(
      enumInternetStatus: null == enumInternetStatus
          ? _value.enumInternetStatus
          : enumInternetStatus // ignore: cast_nullable_to_non_nullable
              as EnumInternetStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InternetStateImplCopyWith<$Res>
    implements $InternetStateCopyWith<$Res> {
  factory _$$InternetStateImplCopyWith(
          _$InternetStateImpl value, $Res Function(_$InternetStateImpl) then) =
      __$$InternetStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EnumInternetStatus enumInternetStatus});
}

/// @nodoc
class __$$InternetStateImplCopyWithImpl<$Res>
    extends _$InternetStateCopyWithImpl<$Res, _$InternetStateImpl>
    implements _$$InternetStateImplCopyWith<$Res> {
  __$$InternetStateImplCopyWithImpl(
      _$InternetStateImpl _value, $Res Function(_$InternetStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enumInternetStatus = null,
  }) {
    return _then(_$InternetStateImpl(
      enumInternetStatus: null == enumInternetStatus
          ? _value.enumInternetStatus
          : enumInternetStatus // ignore: cast_nullable_to_non_nullable
              as EnumInternetStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InternetStateImpl implements _InternetState {
  const _$InternetStateImpl(
      {this.enumInternetStatus = EnumInternetStatus.connected});

  factory _$InternetStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$InternetStateImplFromJson(json);

  @override
  @JsonKey()
  final EnumInternetStatus enumInternetStatus;

  @override
  String toString() {
    return 'InternetState(enumInternetStatus: $enumInternetStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InternetStateImpl &&
            (identical(other.enumInternetStatus, enumInternetStatus) ||
                other.enumInternetStatus == enumInternetStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, enumInternetStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InternetStateImplCopyWith<_$InternetStateImpl> get copyWith =>
      __$$InternetStateImplCopyWithImpl<_$InternetStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InternetStateImplToJson(
      this,
    );
  }
}

abstract class _InternetState implements InternetState {
  const factory _InternetState({final EnumInternetStatus enumInternetStatus}) =
      _$InternetStateImpl;

  factory _InternetState.fromJson(Map<String, dynamic> json) =
      _$InternetStateImpl.fromJson;

  @override
  EnumInternetStatus get enumInternetStatus;
  @override
  @JsonKey(ignore: true)
  _$$InternetStateImplCopyWith<_$InternetStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
