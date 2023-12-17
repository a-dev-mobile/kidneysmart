// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiToken _$ApiTokenFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'error':
      return ApiTokenError.fromJson(json);
    case 'success':
      return ApiTokenSuccess.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ApiToken',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ApiToken {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TokenError tokenError) error,
    required TResult Function(TokenSuccess tokenSuccess) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TokenError tokenError)? error,
    TResult? Function(TokenSuccess tokenSuccess)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TokenError tokenError)? error,
    TResult Function(TokenSuccess tokenSuccess)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiTokenError value) error,
    required TResult Function(ApiTokenSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiTokenError value)? error,
    TResult? Function(ApiTokenSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiTokenError value)? error,
    TResult Function(ApiTokenSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiTokenCopyWith<$Res> {
  factory $ApiTokenCopyWith(ApiToken value, $Res Function(ApiToken) then) =
      _$ApiTokenCopyWithImpl<$Res, ApiToken>;
}

/// @nodoc
class _$ApiTokenCopyWithImpl<$Res, $Val extends ApiToken>
    implements $ApiTokenCopyWith<$Res> {
  _$ApiTokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ApiTokenErrorImplCopyWith<$Res> {
  factory _$$ApiTokenErrorImplCopyWith(
          _$ApiTokenErrorImpl value, $Res Function(_$ApiTokenErrorImpl) then) =
      __$$ApiTokenErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TokenError tokenError});

  $TokenErrorCopyWith<$Res> get tokenError;
}

/// @nodoc
class __$$ApiTokenErrorImplCopyWithImpl<$Res>
    extends _$ApiTokenCopyWithImpl<$Res, _$ApiTokenErrorImpl>
    implements _$$ApiTokenErrorImplCopyWith<$Res> {
  __$$ApiTokenErrorImplCopyWithImpl(
      _$ApiTokenErrorImpl _value, $Res Function(_$ApiTokenErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokenError = null,
  }) {
    return _then(_$ApiTokenErrorImpl(
      null == tokenError
          ? _value.tokenError
          : tokenError // ignore: cast_nullable_to_non_nullable
              as TokenError,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TokenErrorCopyWith<$Res> get tokenError {
    return $TokenErrorCopyWith<$Res>(_value.tokenError, (value) {
      return _then(_value.copyWith(tokenError: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiTokenErrorImpl implements ApiTokenError {
  _$ApiTokenErrorImpl(this.tokenError, {final String? $type})
      : $type = $type ?? 'error';

  factory _$ApiTokenErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiTokenErrorImplFromJson(json);

  @override
  final TokenError tokenError;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ApiToken.error(tokenError: $tokenError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiTokenErrorImpl &&
            (identical(other.tokenError, tokenError) ||
                other.tokenError == tokenError));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, tokenError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiTokenErrorImplCopyWith<_$ApiTokenErrorImpl> get copyWith =>
      __$$ApiTokenErrorImplCopyWithImpl<_$ApiTokenErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TokenError tokenError) error,
    required TResult Function(TokenSuccess tokenSuccess) success,
  }) {
    return error(tokenError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TokenError tokenError)? error,
    TResult? Function(TokenSuccess tokenSuccess)? success,
  }) {
    return error?.call(tokenError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TokenError tokenError)? error,
    TResult Function(TokenSuccess tokenSuccess)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(tokenError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiTokenError value) error,
    required TResult Function(ApiTokenSuccess value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiTokenError value)? error,
    TResult? Function(ApiTokenSuccess value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiTokenError value)? error,
    TResult Function(ApiTokenSuccess value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiTokenErrorImplToJson(
      this,
    );
  }
}

abstract class ApiTokenError implements ApiToken {
  factory ApiTokenError(final TokenError tokenError) = _$ApiTokenErrorImpl;

  factory ApiTokenError.fromJson(Map<String, dynamic> json) =
      _$ApiTokenErrorImpl.fromJson;

  TokenError get tokenError;
  @JsonKey(ignore: true)
  _$$ApiTokenErrorImplCopyWith<_$ApiTokenErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApiTokenSuccessImplCopyWith<$Res> {
  factory _$$ApiTokenSuccessImplCopyWith(_$ApiTokenSuccessImpl value,
          $Res Function(_$ApiTokenSuccessImpl) then) =
      __$$ApiTokenSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TokenSuccess tokenSuccess});

  $TokenSuccessCopyWith<$Res> get tokenSuccess;
}

/// @nodoc
class __$$ApiTokenSuccessImplCopyWithImpl<$Res>
    extends _$ApiTokenCopyWithImpl<$Res, _$ApiTokenSuccessImpl>
    implements _$$ApiTokenSuccessImplCopyWith<$Res> {
  __$$ApiTokenSuccessImplCopyWithImpl(
      _$ApiTokenSuccessImpl _value, $Res Function(_$ApiTokenSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokenSuccess = null,
  }) {
    return _then(_$ApiTokenSuccessImpl(
      null == tokenSuccess
          ? _value.tokenSuccess
          : tokenSuccess // ignore: cast_nullable_to_non_nullable
              as TokenSuccess,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TokenSuccessCopyWith<$Res> get tokenSuccess {
    return $TokenSuccessCopyWith<$Res>(_value.tokenSuccess, (value) {
      return _then(_value.copyWith(tokenSuccess: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiTokenSuccessImpl implements ApiTokenSuccess {
  _$ApiTokenSuccessImpl(this.tokenSuccess, {final String? $type})
      : $type = $type ?? 'success';

  factory _$ApiTokenSuccessImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiTokenSuccessImplFromJson(json);

  @override
  final TokenSuccess tokenSuccess;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ApiToken.success(tokenSuccess: $tokenSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiTokenSuccessImpl &&
            (identical(other.tokenSuccess, tokenSuccess) ||
                other.tokenSuccess == tokenSuccess));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, tokenSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiTokenSuccessImplCopyWith<_$ApiTokenSuccessImpl> get copyWith =>
      __$$ApiTokenSuccessImplCopyWithImpl<_$ApiTokenSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TokenError tokenError) error,
    required TResult Function(TokenSuccess tokenSuccess) success,
  }) {
    return success(tokenSuccess);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TokenError tokenError)? error,
    TResult? Function(TokenSuccess tokenSuccess)? success,
  }) {
    return success?.call(tokenSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TokenError tokenError)? error,
    TResult Function(TokenSuccess tokenSuccess)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(tokenSuccess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiTokenError value) error,
    required TResult Function(ApiTokenSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiTokenError value)? error,
    TResult? Function(ApiTokenSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiTokenError value)? error,
    TResult Function(ApiTokenSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiTokenSuccessImplToJson(
      this,
    );
  }
}

abstract class ApiTokenSuccess implements ApiToken {
  factory ApiTokenSuccess(final TokenSuccess tokenSuccess) =
      _$ApiTokenSuccessImpl;

  factory ApiTokenSuccess.fromJson(Map<String, dynamic> json) =
      _$ApiTokenSuccessImpl.fromJson;

  TokenSuccess get tokenSuccess;
  @JsonKey(ignore: true)
  _$$ApiTokenSuccessImplCopyWith<_$ApiTokenSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TokenSuccess _$TokenSuccessFromJson(Map<String, dynamic> json) {
  return _TokenSuccess.fromJson(json);
}

/// @nodoc
mixin _$TokenSuccess {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'authorization_status',
      toJson: authorizationStatusToJson,
      fromJson: authorizationStatusFromJson)
  EnumAuthStatus? get enumAuthStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'step')
  String? get step => throw _privateConstructorUsedError;
  @JsonKey(name: 'ttl')
  int? get ttl => throw _privateConstructorUsedError;
  @JsonKey(name: 'ttl_date')
  String? get ttlDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'token')
  String? get token => throw _privateConstructorUsedError;
  @JsonKey(name: 'refresh_token')
  String? get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenSuccessCopyWith<TokenSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenSuccessCopyWith<$Res> {
  factory $TokenSuccessCopyWith(
          TokenSuccess value, $Res Function(TokenSuccess) then) =
      _$TokenSuccessCopyWithImpl<$Res, TokenSuccess>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(
          name: 'authorization_status',
          toJson: authorizationStatusToJson,
          fromJson: authorizationStatusFromJson)
      EnumAuthStatus? enumAuthStatus,
      @JsonKey(name: 'step') String? step,
      @JsonKey(name: 'ttl') int? ttl,
      @JsonKey(name: 'ttl_date') String? ttlDate,
      @JsonKey(name: 'token') String? token,
      @JsonKey(name: 'refresh_token') String? refreshToken});
}

/// @nodoc
class _$TokenSuccessCopyWithImpl<$Res, $Val extends TokenSuccess>
    implements $TokenSuccessCopyWith<$Res> {
  _$TokenSuccessCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? enumAuthStatus = freezed,
    Object? step = freezed,
    Object? ttl = freezed,
    Object? ttlDate = freezed,
    Object? token = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      enumAuthStatus: freezed == enumAuthStatus
          ? _value.enumAuthStatus
          : enumAuthStatus // ignore: cast_nullable_to_non_nullable
              as EnumAuthStatus?,
      step: freezed == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as String?,
      ttl: freezed == ttl
          ? _value.ttl
          : ttl // ignore: cast_nullable_to_non_nullable
              as int?,
      ttlDate: freezed == ttlDate
          ? _value.ttlDate
          : ttlDate // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TokenSuccessImplCopyWith<$Res>
    implements $TokenSuccessCopyWith<$Res> {
  factory _$$TokenSuccessImplCopyWith(
          _$TokenSuccessImpl value, $Res Function(_$TokenSuccessImpl) then) =
      __$$TokenSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(
          name: 'authorization_status',
          toJson: authorizationStatusToJson,
          fromJson: authorizationStatusFromJson)
      EnumAuthStatus? enumAuthStatus,
      @JsonKey(name: 'step') String? step,
      @JsonKey(name: 'ttl') int? ttl,
      @JsonKey(name: 'ttl_date') String? ttlDate,
      @JsonKey(name: 'token') String? token,
      @JsonKey(name: 'refresh_token') String? refreshToken});
}

/// @nodoc
class __$$TokenSuccessImplCopyWithImpl<$Res>
    extends _$TokenSuccessCopyWithImpl<$Res, _$TokenSuccessImpl>
    implements _$$TokenSuccessImplCopyWith<$Res> {
  __$$TokenSuccessImplCopyWithImpl(
      _$TokenSuccessImpl _value, $Res Function(_$TokenSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? enumAuthStatus = freezed,
    Object? step = freezed,
    Object? ttl = freezed,
    Object? ttlDate = freezed,
    Object? token = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_$TokenSuccessImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      enumAuthStatus: freezed == enumAuthStatus
          ? _value.enumAuthStatus
          : enumAuthStatus // ignore: cast_nullable_to_non_nullable
              as EnumAuthStatus?,
      step: freezed == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as String?,
      ttl: freezed == ttl
          ? _value.ttl
          : ttl // ignore: cast_nullable_to_non_nullable
              as int?,
      ttlDate: freezed == ttlDate
          ? _value.ttlDate
          : ttlDate // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TokenSuccessImpl implements _TokenSuccess {
  const _$TokenSuccessImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(
          name: 'authorization_status',
          toJson: authorizationStatusToJson,
          fromJson: authorizationStatusFromJson)
      this.enumAuthStatus,
      @JsonKey(name: 'step') this.step,
      @JsonKey(name: 'ttl') this.ttl,
      @JsonKey(name: 'ttl_date') this.ttlDate,
      @JsonKey(name: 'token') this.token,
      @JsonKey(name: 'refresh_token') this.refreshToken});

  factory _$TokenSuccessImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenSuccessImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(
      name: 'authorization_status',
      toJson: authorizationStatusToJson,
      fromJson: authorizationStatusFromJson)
  final EnumAuthStatus? enumAuthStatus;
  @override
  @JsonKey(name: 'step')
  final String? step;
  @override
  @JsonKey(name: 'ttl')
  final int? ttl;
  @override
  @JsonKey(name: 'ttl_date')
  final String? ttlDate;
  @override
  @JsonKey(name: 'token')
  final String? token;
  @override
  @JsonKey(name: 'refresh_token')
  final String? refreshToken;

  @override
  String toString() {
    return 'TokenSuccess(id: $id, enumAuthStatus: $enumAuthStatus, step: $step, ttl: $ttl, ttlDate: $ttlDate, token: $token, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenSuccessImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.enumAuthStatus, enumAuthStatus) ||
                other.enumAuthStatus == enumAuthStatus) &&
            (identical(other.step, step) || other.step == step) &&
            (identical(other.ttl, ttl) || other.ttl == ttl) &&
            (identical(other.ttlDate, ttlDate) || other.ttlDate == ttlDate) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, enumAuthStatus, step, ttl, ttlDate, token, refreshToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenSuccessImplCopyWith<_$TokenSuccessImpl> get copyWith =>
      __$$TokenSuccessImplCopyWithImpl<_$TokenSuccessImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenSuccessImplToJson(
      this,
    );
  }
}

abstract class _TokenSuccess implements TokenSuccess {
  const factory _TokenSuccess(
          {@JsonKey(name: 'id') final int? id,
          @JsonKey(
              name: 'authorization_status',
              toJson: authorizationStatusToJson,
              fromJson: authorizationStatusFromJson)
          final EnumAuthStatus? enumAuthStatus,
          @JsonKey(name: 'step') final String? step,
          @JsonKey(name: 'ttl') final int? ttl,
          @JsonKey(name: 'ttl_date') final String? ttlDate,
          @JsonKey(name: 'token') final String? token,
          @JsonKey(name: 'refresh_token') final String? refreshToken}) =
      _$TokenSuccessImpl;

  factory _TokenSuccess.fromJson(Map<String, dynamic> json) =
      _$TokenSuccessImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(
      name: 'authorization_status',
      toJson: authorizationStatusToJson,
      fromJson: authorizationStatusFromJson)
  EnumAuthStatus? get enumAuthStatus;
  @override
  @JsonKey(name: 'step')
  String? get step;
  @override
  @JsonKey(name: 'ttl')
  int? get ttl;
  @override
  @JsonKey(name: 'ttl_date')
  String? get ttlDate;
  @override
  @JsonKey(name: 'token')
  String? get token;
  @override
  @JsonKey(name: 'refresh_token')
  String? get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$$TokenSuccessImplCopyWith<_$TokenSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TokenError _$TokenErrorFromJson(Map<String, dynamic> json) {
  return _TokenError.fromJson(json);
}

/// @nodoc
mixin _$TokenError {
  String get message => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenErrorCopyWith<TokenError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenErrorCopyWith<$Res> {
  factory $TokenErrorCopyWith(
          TokenError value, $Res Function(TokenError) then) =
      _$TokenErrorCopyWithImpl<$Res, TokenError>;
  @useResult
  $Res call({String message, String error, String label});
}

/// @nodoc
class _$TokenErrorCopyWithImpl<$Res, $Val extends TokenError>
    implements $TokenErrorCopyWith<$Res> {
  _$TokenErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? error = null,
    Object? label = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TokenErrorImplCopyWith<$Res>
    implements $TokenErrorCopyWith<$Res> {
  factory _$$TokenErrorImplCopyWith(
          _$TokenErrorImpl value, $Res Function(_$TokenErrorImpl) then) =
      __$$TokenErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String error, String label});
}

/// @nodoc
class __$$TokenErrorImplCopyWithImpl<$Res>
    extends _$TokenErrorCopyWithImpl<$Res, _$TokenErrorImpl>
    implements _$$TokenErrorImplCopyWith<$Res> {
  __$$TokenErrorImplCopyWithImpl(
      _$TokenErrorImpl _value, $Res Function(_$TokenErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? error = null,
    Object? label = null,
  }) {
    return _then(_$TokenErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TokenErrorImpl implements _TokenError {
  _$TokenErrorImpl({this.message = '', this.error = '', this.label = ''});

  factory _$TokenErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenErrorImplFromJson(json);

  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final String error;
  @override
  @JsonKey()
  final String label;

  @override
  String toString() {
    return 'TokenError(message: $message, error: $error, label: $label)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.label, label) || other.label == label));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, error, label);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenErrorImplCopyWith<_$TokenErrorImpl> get copyWith =>
      __$$TokenErrorImplCopyWithImpl<_$TokenErrorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenErrorImplToJson(
      this,
    );
  }
}

abstract class _TokenError implements TokenError {
  factory _TokenError(
      {final String message,
      final String error,
      final String label}) = _$TokenErrorImpl;

  factory _TokenError.fromJson(Map<String, dynamic> json) =
      _$TokenErrorImpl.fromJson;

  @override
  String get message;
  @override
  String get error;
  @override
  String get label;
  @override
  @JsonKey(ignore: true)
  _$$TokenErrorImplCopyWith<_$TokenErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
