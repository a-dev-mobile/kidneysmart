// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'req_res_login.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestLogin _$RequestLoginFromJson(Map<String, dynamic> json) {
  return _RequestLogin.fromJson(json);
}

/// @nodoc
mixin _$RequestLogin {
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestLoginCopyWith<RequestLogin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestLoginCopyWith<$Res> {
  factory $RequestLoginCopyWith(
          RequestLogin value, $Res Function(RequestLogin) then) =
      _$RequestLoginCopyWithImpl<$Res, RequestLogin>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$RequestLoginCopyWithImpl<$Res, $Val extends RequestLogin>
    implements $RequestLoginCopyWith<$Res> {
  _$RequestLoginCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestLoginImplCopyWith<$Res>
    implements $RequestLoginCopyWith<$Res> {
  factory _$$RequestLoginImplCopyWith(
          _$RequestLoginImpl value, $Res Function(_$RequestLoginImpl) then) =
      __$$RequestLoginImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$RequestLoginImplCopyWithImpl<$Res>
    extends _$RequestLoginCopyWithImpl<$Res, _$RequestLoginImpl>
    implements _$$RequestLoginImplCopyWith<$Res> {
  __$$RequestLoginImplCopyWithImpl(
      _$RequestLoginImpl _value, $Res Function(_$RequestLoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$RequestLoginImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestLoginImpl implements _RequestLogin {
  const _$RequestLoginImpl({required this.email});

  factory _$RequestLoginImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestLoginImplFromJson(json);

  @override
  final String email;

  @override
  String toString() {
    return 'RequestLogin(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestLoginImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestLoginImplCopyWith<_$RequestLoginImpl> get copyWith =>
      __$$RequestLoginImplCopyWithImpl<_$RequestLoginImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestLoginImplToJson(
      this,
    );
  }
}

abstract class _RequestLogin implements RequestLogin {
  const factory _RequestLogin({required final String email}) =
      _$RequestLoginImpl;

  factory _RequestLogin.fromJson(Map<String, dynamic> json) =
      _$RequestLoginImpl.fromJson;

  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$RequestLoginImplCopyWith<_$RequestLoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResponseLogin _$ResponseLoginFromJson(Map<String, dynamic> json) {
  return _ResponseLogin.fromJson(json);
}

/// @nodoc
mixin _$ResponseLogin {
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'status',
      toJson: _loginStatusToJson,
      fromJson: _loginStatusFromJson)
  EnumBackendStatusLogin? get enumBackendStatusLogin =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseLoginCopyWith<ResponseLogin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseLoginCopyWith<$Res> {
  factory $ResponseLoginCopyWith(
          ResponseLogin value, $Res Function(ResponseLogin) then) =
      _$ResponseLoginCopyWithImpl<$Res, ResponseLogin>;
  @useResult
  $Res call(
      {String? message,
      @JsonKey(
          name: 'status',
          toJson: _loginStatusToJson,
          fromJson: _loginStatusFromJson)
      EnumBackendStatusLogin? enumBackendStatusLogin});
}

/// @nodoc
class _$ResponseLoginCopyWithImpl<$Res, $Val extends ResponseLogin>
    implements $ResponseLoginCopyWith<$Res> {
  _$ResponseLoginCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? enumBackendStatusLogin = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      enumBackendStatusLogin: freezed == enumBackendStatusLogin
          ? _value.enumBackendStatusLogin
          : enumBackendStatusLogin // ignore: cast_nullable_to_non_nullable
              as EnumBackendStatusLogin?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseLoginImplCopyWith<$Res>
    implements $ResponseLoginCopyWith<$Res> {
  factory _$$ResponseLoginImplCopyWith(
          _$ResponseLoginImpl value, $Res Function(_$ResponseLoginImpl) then) =
      __$$ResponseLoginImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? message,
      @JsonKey(
          name: 'status',
          toJson: _loginStatusToJson,
          fromJson: _loginStatusFromJson)
      EnumBackendStatusLogin? enumBackendStatusLogin});
}

/// @nodoc
class __$$ResponseLoginImplCopyWithImpl<$Res>
    extends _$ResponseLoginCopyWithImpl<$Res, _$ResponseLoginImpl>
    implements _$$ResponseLoginImplCopyWith<$Res> {
  __$$ResponseLoginImplCopyWithImpl(
      _$ResponseLoginImpl _value, $Res Function(_$ResponseLoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? enumBackendStatusLogin = freezed,
  }) {
    return _then(_$ResponseLoginImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      enumBackendStatusLogin: freezed == enumBackendStatusLogin
          ? _value.enumBackendStatusLogin
          : enumBackendStatusLogin // ignore: cast_nullable_to_non_nullable
              as EnumBackendStatusLogin?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseLoginImpl implements _ResponseLogin {
  const _$ResponseLoginImpl(
      {this.message,
      @JsonKey(
          name: 'status',
          toJson: _loginStatusToJson,
          fromJson: _loginStatusFromJson)
      this.enumBackendStatusLogin});

  factory _$ResponseLoginImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseLoginImplFromJson(json);

  @override
  final String? message;
  @override
  @JsonKey(
      name: 'status',
      toJson: _loginStatusToJson,
      fromJson: _loginStatusFromJson)
  final EnumBackendStatusLogin? enumBackendStatusLogin;

  @override
  String toString() {
    return 'ResponseLogin(message: $message, enumBackendStatusLogin: $enumBackendStatusLogin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseLoginImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.enumBackendStatusLogin, enumBackendStatusLogin) ||
                other.enumBackendStatusLogin == enumBackendStatusLogin));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, enumBackendStatusLogin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseLoginImplCopyWith<_$ResponseLoginImpl> get copyWith =>
      __$$ResponseLoginImplCopyWithImpl<_$ResponseLoginImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseLoginImplToJson(
      this,
    );
  }
}

abstract class _ResponseLogin implements ResponseLogin {
  const factory _ResponseLogin(
          {final String? message,
          @JsonKey(
              name: 'status',
              toJson: _loginStatusToJson,
              fromJson: _loginStatusFromJson)
          final EnumBackendStatusLogin? enumBackendStatusLogin}) =
      _$ResponseLoginImpl;

  factory _ResponseLogin.fromJson(Map<String, dynamic> json) =
      _$ResponseLoginImpl.fromJson;

  @override
  String? get message;
  @override
  @JsonKey(
      name: 'status',
      toJson: _loginStatusToJson,
      fromJson: _loginStatusFromJson)
  EnumBackendStatusLogin? get enumBackendStatusLogin;
  @override
  @JsonKey(ignore: true)
  _$$ResponseLoginImplCopyWith<_$ResponseLoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
