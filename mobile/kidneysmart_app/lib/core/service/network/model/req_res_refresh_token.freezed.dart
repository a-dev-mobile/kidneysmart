// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'req_res_refresh_token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestRefreshToken _$RequestRefreshTokenFromJson(Map<String, dynamic> json) {
  return _RequestRefreshToken.fromJson(json);
}

/// @nodoc
mixin _$RequestRefreshToken {
  String get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestRefreshTokenCopyWith<RequestRefreshToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestRefreshTokenCopyWith<$Res> {
  factory $RequestRefreshTokenCopyWith(
          RequestRefreshToken value, $Res Function(RequestRefreshToken) then) =
      _$RequestRefreshTokenCopyWithImpl<$Res, RequestRefreshToken>;
  @useResult
  $Res call({String refreshToken});
}

/// @nodoc
class _$RequestRefreshTokenCopyWithImpl<$Res, $Val extends RequestRefreshToken>
    implements $RequestRefreshTokenCopyWith<$Res> {
  _$RequestRefreshTokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshToken = null,
  }) {
    return _then(_value.copyWith(
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestRefreshTokenImplCopyWith<$Res>
    implements $RequestRefreshTokenCopyWith<$Res> {
  factory _$$RequestRefreshTokenImplCopyWith(_$RequestRefreshTokenImpl value,
          $Res Function(_$RequestRefreshTokenImpl) then) =
      __$$RequestRefreshTokenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String refreshToken});
}

/// @nodoc
class __$$RequestRefreshTokenImplCopyWithImpl<$Res>
    extends _$RequestRefreshTokenCopyWithImpl<$Res, _$RequestRefreshTokenImpl>
    implements _$$RequestRefreshTokenImplCopyWith<$Res> {
  __$$RequestRefreshTokenImplCopyWithImpl(_$RequestRefreshTokenImpl _value,
      $Res Function(_$RequestRefreshTokenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshToken = null,
  }) {
    return _then(_$RequestRefreshTokenImpl(
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestRefreshTokenImpl implements _RequestRefreshToken {
  const _$RequestRefreshTokenImpl({required this.refreshToken});

  factory _$RequestRefreshTokenImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestRefreshTokenImplFromJson(json);

  @override
  final String refreshToken;

  @override
  String toString() {
    return 'RequestRefreshToken(refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestRefreshTokenImpl &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, refreshToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestRefreshTokenImplCopyWith<_$RequestRefreshTokenImpl> get copyWith =>
      __$$RequestRefreshTokenImplCopyWithImpl<_$RequestRefreshTokenImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestRefreshTokenImplToJson(
      this,
    );
  }
}

abstract class _RequestRefreshToken implements RequestRefreshToken {
  const factory _RequestRefreshToken({required final String refreshToken}) =
      _$RequestRefreshTokenImpl;

  factory _RequestRefreshToken.fromJson(Map<String, dynamic> json) =
      _$RequestRefreshTokenImpl.fromJson;

  @override
  String get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$$RequestRefreshTokenImplCopyWith<_$RequestRefreshTokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResponseRefreshToken _$ResponseRefreshTokenFromJson(Map<String, dynamic> json) {
  return _ResponseRefreshToken.fromJson(json);
}

/// @nodoc
mixin _$ResponseRefreshToken {
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
  EnumBackendStatusRefreshToken? get enumBackendRefreshToken =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseRefreshTokenCopyWith<ResponseRefreshToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseRefreshTokenCopyWith<$Res> {
  factory $ResponseRefreshTokenCopyWith(ResponseRefreshToken value,
          $Res Function(ResponseRefreshToken) then) =
      _$ResponseRefreshTokenCopyWithImpl<$Res, ResponseRefreshToken>;
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
      EnumBackendStatusRefreshToken? enumBackendRefreshToken});
}

/// @nodoc
class _$ResponseRefreshTokenCopyWithImpl<$Res,
        $Val extends ResponseRefreshToken>
    implements $ResponseRefreshTokenCopyWith<$Res> {
  _$ResponseRefreshTokenCopyWithImpl(this._value, this._then);

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
    Object? enumBackendRefreshToken = freezed,
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
      enumBackendRefreshToken: freezed == enumBackendRefreshToken
          ? _value.enumBackendRefreshToken
          : enumBackendRefreshToken // ignore: cast_nullable_to_non_nullable
              as EnumBackendStatusRefreshToken?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseRefreshTokenImplCopyWith<$Res>
    implements $ResponseRefreshTokenCopyWith<$Res> {
  factory _$$ResponseRefreshTokenImplCopyWith(_$ResponseRefreshTokenImpl value,
          $Res Function(_$ResponseRefreshTokenImpl) then) =
      __$$ResponseRefreshTokenImplCopyWithImpl<$Res>;
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
      EnumBackendStatusRefreshToken? enumBackendRefreshToken});
}

/// @nodoc
class __$$ResponseRefreshTokenImplCopyWithImpl<$Res>
    extends _$ResponseRefreshTokenCopyWithImpl<$Res, _$ResponseRefreshTokenImpl>
    implements _$$ResponseRefreshTokenImplCopyWith<$Res> {
  __$$ResponseRefreshTokenImplCopyWithImpl(_$ResponseRefreshTokenImpl _value,
      $Res Function(_$ResponseRefreshTokenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
    Object? expiresIn = freezed,
    Object? enumBackendRefreshToken = freezed,
  }) {
    return _then(_$ResponseRefreshTokenImpl(
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
      enumBackendRefreshToken: freezed == enumBackendRefreshToken
          ? _value.enumBackendRefreshToken
          : enumBackendRefreshToken // ignore: cast_nullable_to_non_nullable
              as EnumBackendStatusRefreshToken?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseRefreshTokenImpl implements _ResponseRefreshToken {
  const _$ResponseRefreshTokenImpl(
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
      this.enumBackendRefreshToken});

  factory _$ResponseRefreshTokenImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseRefreshTokenImplFromJson(json);

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
  final EnumBackendStatusRefreshToken? enumBackendRefreshToken;

  @override
  String toString() {
    return 'ResponseRefreshToken(message: $message, accessToken: $accessToken, refreshToken: $refreshToken, expiresIn: $expiresIn, enumBackendRefreshToken: $enumBackendRefreshToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseRefreshTokenImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.expiresIn, expiresIn) ||
                other.expiresIn == expiresIn) &&
            (identical(
                    other.enumBackendRefreshToken, enumBackendRefreshToken) ||
                other.enumBackendRefreshToken == enumBackendRefreshToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, accessToken,
      refreshToken, expiresIn, enumBackendRefreshToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseRefreshTokenImplCopyWith<_$ResponseRefreshTokenImpl>
      get copyWith =>
          __$$ResponseRefreshTokenImplCopyWithImpl<_$ResponseRefreshTokenImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseRefreshTokenImplToJson(
      this,
    );
  }
}

abstract class _ResponseRefreshToken implements ResponseRefreshToken {
  const factory _ResponseRefreshToken(
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
      final EnumBackendStatusRefreshToken?
          enumBackendRefreshToken}) = _$ResponseRefreshTokenImpl;

  factory _ResponseRefreshToken.fromJson(Map<String, dynamic> json) =
      _$ResponseRefreshTokenImpl.fromJson;

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
  EnumBackendStatusRefreshToken? get enumBackendRefreshToken;
  @override
  @JsonKey(ignore: true)
  _$$ResponseRefreshTokenImplCopyWith<_$ResponseRefreshTokenImpl>
      get copyWith => throw _privateConstructorUsedError;
}
