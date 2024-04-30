// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginState _$LoginStateFromJson(Map<String, dynamic> json) {
  return _LoginState.fromJson(json);
}

/// @nodoc
mixin _$LoginState {
  EnumScreenStatus get enumScreenStatus => throw _privateConstructorUsedError;
  EnumFrontendStatusLogin get enumFrontendStatus =>
      throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  ResponseLogin get response => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {EnumScreenStatus enumScreenStatus,
      EnumFrontendStatusLogin enumFrontendStatus,
      String? email,
      ResponseLogin response});

  $ResponseLoginCopyWith<$Res> get response;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enumScreenStatus = null,
    Object? enumFrontendStatus = null,
    Object? email = freezed,
    Object? response = null,
  }) {
    return _then(_value.copyWith(
      enumScreenStatus: null == enumScreenStatus
          ? _value.enumScreenStatus
          : enumScreenStatus // ignore: cast_nullable_to_non_nullable
              as EnumScreenStatus,
      enumFrontendStatus: null == enumFrontendStatus
          ? _value.enumFrontendStatus
          : enumFrontendStatus // ignore: cast_nullable_to_non_nullable
              as EnumFrontendStatusLogin,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as ResponseLogin,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResponseLoginCopyWith<$Res> get response {
    return $ResponseLoginCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginStateImplCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$LoginStateImplCopyWith(
          _$LoginStateImpl value, $Res Function(_$LoginStateImpl) then) =
      __$$LoginStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EnumScreenStatus enumScreenStatus,
      EnumFrontendStatusLogin enumFrontendStatus,
      String? email,
      ResponseLogin response});

  @override
  $ResponseLoginCopyWith<$Res> get response;
}

/// @nodoc
class __$$LoginStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateImpl>
    implements _$$LoginStateImplCopyWith<$Res> {
  __$$LoginStateImplCopyWithImpl(
      _$LoginStateImpl _value, $Res Function(_$LoginStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enumScreenStatus = null,
    Object? enumFrontendStatus = null,
    Object? email = freezed,
    Object? response = null,
  }) {
    return _then(_$LoginStateImpl(
      enumScreenStatus: null == enumScreenStatus
          ? _value.enumScreenStatus
          : enumScreenStatus // ignore: cast_nullable_to_non_nullable
              as EnumScreenStatus,
      enumFrontendStatus: null == enumFrontendStatus
          ? _value.enumFrontendStatus
          : enumFrontendStatus // ignore: cast_nullable_to_non_nullable
              as EnumFrontendStatusLogin,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as ResponseLogin,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginStateImpl implements _LoginState {
  const _$LoginStateImpl(
      {this.enumScreenStatus = EnumScreenStatus.init,
      this.enumFrontendStatus = EnumFrontendStatusLogin.init,
      this.email,
      this.response = const ResponseLogin()});

  factory _$LoginStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginStateImplFromJson(json);

  @override
  @JsonKey()
  final EnumScreenStatus enumScreenStatus;
  @override
  @JsonKey()
  final EnumFrontendStatusLogin enumFrontendStatus;
  @override
  final String? email;
  @override
  @JsonKey()
  final ResponseLogin response;

  @override
  String toString() {
    return 'LoginState(enumScreenStatus: $enumScreenStatus, enumFrontendStatus: $enumFrontendStatus, email: $email, response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateImpl &&
            (identical(other.enumScreenStatus, enumScreenStatus) ||
                other.enumScreenStatus == enumScreenStatus) &&
            (identical(other.enumFrontendStatus, enumFrontendStatus) ||
                other.enumFrontendStatus == enumFrontendStatus) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, enumScreenStatus, enumFrontendStatus, email, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      __$$LoginStateImplCopyWithImpl<_$LoginStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginStateImplToJson(
      this,
    );
  }
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {final EnumScreenStatus enumScreenStatus,
      final EnumFrontendStatusLogin enumFrontendStatus,
      final String? email,
      final ResponseLogin response}) = _$LoginStateImpl;

  factory _LoginState.fromJson(Map<String, dynamic> json) =
      _$LoginStateImpl.fromJson;

  @override
  EnumScreenStatus get enumScreenStatus;
  @override
  EnumFrontendStatusLogin get enumFrontendStatus;
  @override
  String? get email;
  @override
  ResponseLogin get response;
  @override
  @JsonKey(ignore: true)
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
