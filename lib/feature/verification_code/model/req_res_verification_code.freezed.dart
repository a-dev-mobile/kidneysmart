// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'req_res_verification_code.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestVerificationCode _$RequestVerificationCodeFromJson(
    Map<String, dynamic> json) {
  return _RequestVerificationCode.fromJson(json);
}

/// @nodoc
mixin _$RequestVerificationCode {
  String get email => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestVerificationCodeCopyWith<RequestVerificationCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestVerificationCodeCopyWith<$Res> {
  factory $RequestVerificationCodeCopyWith(RequestVerificationCode value,
          $Res Function(RequestVerificationCode) then) =
      _$RequestVerificationCodeCopyWithImpl<$Res, RequestVerificationCode>;
  @useResult
  $Res call({String email, String code});
}

/// @nodoc
class _$RequestVerificationCodeCopyWithImpl<$Res,
        $Val extends RequestVerificationCode>
    implements $RequestVerificationCodeCopyWith<$Res> {
  _$RequestVerificationCodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestVerificationCodeImplCopyWith<$Res>
    implements $RequestVerificationCodeCopyWith<$Res> {
  factory _$$RequestVerificationCodeImplCopyWith(
          _$RequestVerificationCodeImpl value,
          $Res Function(_$RequestVerificationCodeImpl) then) =
      __$$RequestVerificationCodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String code});
}

/// @nodoc
class __$$RequestVerificationCodeImplCopyWithImpl<$Res>
    extends _$RequestVerificationCodeCopyWithImpl<$Res,
        _$RequestVerificationCodeImpl>
    implements _$$RequestVerificationCodeImplCopyWith<$Res> {
  __$$RequestVerificationCodeImplCopyWithImpl(
      _$RequestVerificationCodeImpl _value,
      $Res Function(_$RequestVerificationCodeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? code = null,
  }) {
    return _then(_$RequestVerificationCodeImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestVerificationCodeImpl implements _RequestVerificationCode {
  const _$RequestVerificationCodeImpl(
      {required this.email, required this.code});

  factory _$RequestVerificationCodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestVerificationCodeImplFromJson(json);

  @override
  final String email;
  @override
  final String code;

  @override
  String toString() {
    return 'RequestVerificationCode(email: $email, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestVerificationCodeImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestVerificationCodeImplCopyWith<_$RequestVerificationCodeImpl>
      get copyWith => __$$RequestVerificationCodeImplCopyWithImpl<
          _$RequestVerificationCodeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestVerificationCodeImplToJson(
      this,
    );
  }
}

abstract class _RequestVerificationCode implements RequestVerificationCode {
  const factory _RequestVerificationCode(
      {required final String email,
      required final String code}) = _$RequestVerificationCodeImpl;

  factory _RequestVerificationCode.fromJson(Map<String, dynamic> json) =
      _$RequestVerificationCodeImpl.fromJson;

  @override
  String get email;
  @override
  String get code;
  @override
  @JsonKey(ignore: true)
  _$$RequestVerificationCodeImplCopyWith<_$RequestVerificationCodeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ResponseVerificationCode _$ResponseVerificationCodeFromJson(
    Map<String, dynamic> json) {
  return _ResponseVerificationCode.fromJson(json);
}

/// @nodoc
mixin _$ResponseVerificationCode {
  String? get message => throw _privateConstructorUsedError;
  String? get accessToken => throw _privateConstructorUsedError;
  String? get refreshToken => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'expiresIn', toJson: dateTimeToJson, fromJson: dateTimeFromJson)
  DateTime? get expiresIn => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'status',
      toJson: _verificationCodeStatusToJson,
      fromJson: _statusFromJson)
  EnumBackendStatusVerificationCode? get enumBackendStatusVerificationCode =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseVerificationCodeCopyWith<ResponseVerificationCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseVerificationCodeCopyWith<$Res> {
  factory $ResponseVerificationCodeCopyWith(ResponseVerificationCode value,
          $Res Function(ResponseVerificationCode) then) =
      _$ResponseVerificationCodeCopyWithImpl<$Res, ResponseVerificationCode>;
  @useResult
  $Res call(
      {String? message,
      String? accessToken,
      String? refreshToken,
      @JsonKey(
          name: 'expiresIn', toJson: dateTimeToJson, fromJson: dateTimeFromJson)
      DateTime? expiresIn,
      @JsonKey(
          name: 'status',
          toJson: _verificationCodeStatusToJson,
          fromJson: _statusFromJson)
      EnumBackendStatusVerificationCode? enumBackendStatusVerificationCode});
}

/// @nodoc
class _$ResponseVerificationCodeCopyWithImpl<$Res,
        $Val extends ResponseVerificationCode>
    implements $ResponseVerificationCodeCopyWith<$Res> {
  _$ResponseVerificationCodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
    Object? expiresIn = freezed,
    Object? enumBackendStatusVerificationCode = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresIn: freezed == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      enumBackendStatusVerificationCode: freezed ==
              enumBackendStatusVerificationCode
          ? _value.enumBackendStatusVerificationCode
          : enumBackendStatusVerificationCode // ignore: cast_nullable_to_non_nullable
              as EnumBackendStatusVerificationCode?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseVerificationCodeImplCopyWith<$Res>
    implements $ResponseVerificationCodeCopyWith<$Res> {
  factory _$$ResponseVerificationCodeImplCopyWith(
          _$ResponseVerificationCodeImpl value,
          $Res Function(_$ResponseVerificationCodeImpl) then) =
      __$$ResponseVerificationCodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? message,
      String? accessToken,
      String? refreshToken,
      @JsonKey(
          name: 'expiresIn', toJson: dateTimeToJson, fromJson: dateTimeFromJson)
      DateTime? expiresIn,
      @JsonKey(
          name: 'status',
          toJson: _verificationCodeStatusToJson,
          fromJson: _statusFromJson)
      EnumBackendStatusVerificationCode? enumBackendStatusVerificationCode});
}

/// @nodoc
class __$$ResponseVerificationCodeImplCopyWithImpl<$Res>
    extends _$ResponseVerificationCodeCopyWithImpl<$Res,
        _$ResponseVerificationCodeImpl>
    implements _$$ResponseVerificationCodeImplCopyWith<$Res> {
  __$$ResponseVerificationCodeImplCopyWithImpl(
      _$ResponseVerificationCodeImpl _value,
      $Res Function(_$ResponseVerificationCodeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
    Object? expiresIn = freezed,
    Object? enumBackendStatusVerificationCode = freezed,
  }) {
    return _then(_$ResponseVerificationCodeImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresIn: freezed == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      enumBackendStatusVerificationCode: freezed ==
              enumBackendStatusVerificationCode
          ? _value.enumBackendStatusVerificationCode
          : enumBackendStatusVerificationCode // ignore: cast_nullable_to_non_nullable
              as EnumBackendStatusVerificationCode?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseVerificationCodeImpl implements _ResponseVerificationCode {
  const _$ResponseVerificationCodeImpl(
      {this.message,
      this.accessToken,
      this.refreshToken,
      @JsonKey(
          name: 'expiresIn', toJson: dateTimeToJson, fromJson: dateTimeFromJson)
      this.expiresIn,
      @JsonKey(
          name: 'status',
          toJson: _verificationCodeStatusToJson,
          fromJson: _statusFromJson)
      this.enumBackendStatusVerificationCode});

  factory _$ResponseVerificationCodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseVerificationCodeImplFromJson(json);

  @override
  final String? message;
  @override
  final String? accessToken;
  @override
  final String? refreshToken;
  @override
  @JsonKey(
      name: 'expiresIn', toJson: dateTimeToJson, fromJson: dateTimeFromJson)
  final DateTime? expiresIn;
  @override
  @JsonKey(
      name: 'status',
      toJson: _verificationCodeStatusToJson,
      fromJson: _statusFromJson)
  final EnumBackendStatusVerificationCode? enumBackendStatusVerificationCode;

  @override
  String toString() {
    return 'ResponseVerificationCode(message: $message, accessToken: $accessToken, refreshToken: $refreshToken, expiresIn: $expiresIn, enumBackendStatusVerificationCode: $enumBackendStatusVerificationCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseVerificationCodeImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.expiresIn, expiresIn) ||
                other.expiresIn == expiresIn) &&
            (identical(other.enumBackendStatusVerificationCode,
                    enumBackendStatusVerificationCode) ||
                other.enumBackendStatusVerificationCode ==
                    enumBackendStatusVerificationCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, accessToken,
      refreshToken, expiresIn, enumBackendStatusVerificationCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseVerificationCodeImplCopyWith<_$ResponseVerificationCodeImpl>
      get copyWith => __$$ResponseVerificationCodeImplCopyWithImpl<
          _$ResponseVerificationCodeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseVerificationCodeImplToJson(
      this,
    );
  }
}

abstract class _ResponseVerificationCode implements ResponseVerificationCode {
  const factory _ResponseVerificationCode(
      {final String? message,
      final String? accessToken,
      final String? refreshToken,
      @JsonKey(
          name: 'expiresIn', toJson: dateTimeToJson, fromJson: dateTimeFromJson)
      final DateTime? expiresIn,
      @JsonKey(
          name: 'status',
          toJson: _verificationCodeStatusToJson,
          fromJson: _statusFromJson)
      final EnumBackendStatusVerificationCode?
          enumBackendStatusVerificationCode}) = _$ResponseVerificationCodeImpl;

  factory _ResponseVerificationCode.fromJson(Map<String, dynamic> json) =
      _$ResponseVerificationCodeImpl.fromJson;

  @override
  String? get message;
  @override
  String? get accessToken;
  @override
  String? get refreshToken;
  @override
  @JsonKey(
      name: 'expiresIn', toJson: dateTimeToJson, fromJson: dateTimeFromJson)
  DateTime? get expiresIn;
  @override
  @JsonKey(
      name: 'status',
      toJson: _verificationCodeStatusToJson,
      fromJson: _statusFromJson)
  EnumBackendStatusVerificationCode? get enumBackendStatusVerificationCode;
  @override
  @JsonKey(ignore: true)
  _$$ResponseVerificationCodeImplCopyWith<_$ResponseVerificationCodeImpl>
      get copyWith => throw _privateConstructorUsedError;
}
