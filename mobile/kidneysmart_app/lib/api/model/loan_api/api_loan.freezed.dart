// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_loan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiLoan _$ApiLoanFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'success':
      return _Success.fromJson(json);
    case 'error':
      return _Error.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ApiLoan',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ApiLoan {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApiLoanSuccess apiLoanSuccess) success,
    required TResult Function(ApiLoanError apiLoanError) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ApiLoanSuccess apiLoanSuccess)? success,
    TResult? Function(ApiLoanError apiLoanError)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApiLoanSuccess apiLoanSuccess)? success,
    TResult Function(ApiLoanError apiLoanError)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiLoanCopyWith<$Res> {
  factory $ApiLoanCopyWith(ApiLoan value, $Res Function(ApiLoan) then) =
      _$ApiLoanCopyWithImpl<$Res, ApiLoan>;
}

/// @nodoc
class _$ApiLoanCopyWithImpl<$Res, $Val extends ApiLoan>
    implements $ApiLoanCopyWith<$Res> {
  _$ApiLoanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiLoanSuccess apiLoanSuccess});

  $ApiLoanSuccessCopyWith<$Res> get apiLoanSuccess;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$ApiLoanCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiLoanSuccess = null,
  }) {
    return _then(_$SuccessImpl(
      null == apiLoanSuccess
          ? _value.apiLoanSuccess
          : apiLoanSuccess // ignore: cast_nullable_to_non_nullable
              as ApiLoanSuccess,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiLoanSuccessCopyWith<$Res> get apiLoanSuccess {
    return $ApiLoanSuccessCopyWith<$Res>(_value.apiLoanSuccess, (value) {
      return _then(_value.copyWith(apiLoanSuccess: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$SuccessImpl implements _Success {
  const _$SuccessImpl(this.apiLoanSuccess, {final String? $type})
      : $type = $type ?? 'success';

  factory _$SuccessImpl.fromJson(Map<String, dynamic> json) =>
      _$$SuccessImplFromJson(json);

  @override
  final ApiLoanSuccess apiLoanSuccess;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ApiLoan.success(apiLoanSuccess: $apiLoanSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.apiLoanSuccess, apiLoanSuccess) ||
                other.apiLoanSuccess == apiLoanSuccess));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, apiLoanSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApiLoanSuccess apiLoanSuccess) success,
    required TResult Function(ApiLoanError apiLoanError) error,
  }) {
    return success(apiLoanSuccess);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ApiLoanSuccess apiLoanSuccess)? success,
    TResult? Function(ApiLoanError apiLoanError)? error,
  }) {
    return success?.call(apiLoanSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApiLoanSuccess apiLoanSuccess)? success,
    TResult Function(ApiLoanError apiLoanError)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(apiLoanSuccess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SuccessImplToJson(
      this,
    );
  }
}

abstract class _Success implements ApiLoan {
  const factory _Success(final ApiLoanSuccess apiLoanSuccess) = _$SuccessImpl;

  factory _Success.fromJson(Map<String, dynamic> json) = _$SuccessImpl.fromJson;

  ApiLoanSuccess get apiLoanSuccess;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiLoanError apiLoanError});

  $ApiLoanErrorCopyWith<$Res> get apiLoanError;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$ApiLoanCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiLoanError = null,
  }) {
    return _then(_$ErrorImpl(
      null == apiLoanError
          ? _value.apiLoanError
          : apiLoanError // ignore: cast_nullable_to_non_nullable
              as ApiLoanError,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiLoanErrorCopyWith<$Res> get apiLoanError {
    return $ApiLoanErrorCopyWith<$Res>(_value.apiLoanError, (value) {
      return _then(_value.copyWith(apiLoanError: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.apiLoanError, {final String? $type})
      : $type = $type ?? 'error';

  factory _$ErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$ErrorImplFromJson(json);

  @override
  final ApiLoanError apiLoanError;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ApiLoan.error(apiLoanError: $apiLoanError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.apiLoanError, apiLoanError) ||
                other.apiLoanError == apiLoanError));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, apiLoanError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApiLoanSuccess apiLoanSuccess) success,
    required TResult Function(ApiLoanError apiLoanError) error,
  }) {
    return error(apiLoanError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ApiLoanSuccess apiLoanSuccess)? success,
    TResult? Function(ApiLoanError apiLoanError)? error,
  }) {
    return error?.call(apiLoanError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApiLoanSuccess apiLoanSuccess)? success,
    TResult Function(ApiLoanError apiLoanError)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(apiLoanError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorImplToJson(
      this,
    );
  }
}

abstract class _Error implements ApiLoan {
  const factory _Error(final ApiLoanError apiLoanError) = _$ErrorImpl;

  factory _Error.fromJson(Map<String, dynamic> json) = _$ErrorImpl.fromJson;

  ApiLoanError get apiLoanError;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiLoanSuccess _$ApiLoanSuccessFromJson(Map<String, dynamic> json) {
  return _ApiLoanSuccess.fromJson(json);
}

/// @nodoc
mixin _$ApiLoanSuccess {
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiLoanSuccessCopyWith<ApiLoanSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiLoanSuccessCopyWith<$Res> {
  factory $ApiLoanSuccessCopyWith(
          ApiLoanSuccess value, $Res Function(ApiLoanSuccess) then) =
      _$ApiLoanSuccessCopyWithImpl<$Res, ApiLoanSuccess>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$ApiLoanSuccessCopyWithImpl<$Res, $Val extends ApiLoanSuccess>
    implements $ApiLoanSuccessCopyWith<$Res> {
  _$ApiLoanSuccessCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiLoanSuccessImplCopyWith<$Res>
    implements $ApiLoanSuccessCopyWith<$Res> {
  factory _$$ApiLoanSuccessImplCopyWith(_$ApiLoanSuccessImpl value,
          $Res Function(_$ApiLoanSuccessImpl) then) =
      __$$ApiLoanSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$ApiLoanSuccessImplCopyWithImpl<$Res>
    extends _$ApiLoanSuccessCopyWithImpl<$Res, _$ApiLoanSuccessImpl>
    implements _$$ApiLoanSuccessImplCopyWith<$Res> {
  __$$ApiLoanSuccessImplCopyWithImpl(
      _$ApiLoanSuccessImpl _value, $Res Function(_$ApiLoanSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$ApiLoanSuccessImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiLoanSuccessImpl implements _ApiLoanSuccess {
  const _$ApiLoanSuccessImpl({required this.id});

  factory _$ApiLoanSuccessImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiLoanSuccessImplFromJson(json);

  @override
  final int id;

  @override
  String toString() {
    return 'ApiLoanSuccess(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiLoanSuccessImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiLoanSuccessImplCopyWith<_$ApiLoanSuccessImpl> get copyWith =>
      __$$ApiLoanSuccessImplCopyWithImpl<_$ApiLoanSuccessImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiLoanSuccessImplToJson(
      this,
    );
  }
}

abstract class _ApiLoanSuccess implements ApiLoanSuccess {
  const factory _ApiLoanSuccess({required final int id}) = _$ApiLoanSuccessImpl;

  factory _ApiLoanSuccess.fromJson(Map<String, dynamic> json) =
      _$ApiLoanSuccessImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$ApiLoanSuccessImplCopyWith<_$ApiLoanSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiLoanError _$ApiLoanErrorFromJson(Map<String, dynamic> json) {
  return _ApiLoanError.fromJson(json);
}

/// @nodoc
mixin _$ApiLoanError {
  String get error => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiLoanErrorCopyWith<ApiLoanError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiLoanErrorCopyWith<$Res> {
  factory $ApiLoanErrorCopyWith(
          ApiLoanError value, $Res Function(ApiLoanError) then) =
      _$ApiLoanErrorCopyWithImpl<$Res, ApiLoanError>;
  @useResult
  $Res call({String error, String message});
}

/// @nodoc
class _$ApiLoanErrorCopyWithImpl<$Res, $Val extends ApiLoanError>
    implements $ApiLoanErrorCopyWith<$Res> {
  _$ApiLoanErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiLoanErrorImplCopyWith<$Res>
    implements $ApiLoanErrorCopyWith<$Res> {
  factory _$$ApiLoanErrorImplCopyWith(
          _$ApiLoanErrorImpl value, $Res Function(_$ApiLoanErrorImpl) then) =
      __$$ApiLoanErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String error, String message});
}

/// @nodoc
class __$$ApiLoanErrorImplCopyWithImpl<$Res>
    extends _$ApiLoanErrorCopyWithImpl<$Res, _$ApiLoanErrorImpl>
    implements _$$ApiLoanErrorImplCopyWith<$Res> {
  __$$ApiLoanErrorImplCopyWithImpl(
      _$ApiLoanErrorImpl _value, $Res Function(_$ApiLoanErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? message = null,
  }) {
    return _then(_$ApiLoanErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiLoanErrorImpl implements _ApiLoanError {
  const _$ApiLoanErrorImpl(
      {this.error = 'Ошибка, что-то случилось!', this.message = ''});

  factory _$ApiLoanErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiLoanErrorImplFromJson(json);

  @override
  @JsonKey()
  final String error;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'ApiLoanError(error: $error, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiLoanErrorImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, error, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiLoanErrorImplCopyWith<_$ApiLoanErrorImpl> get copyWith =>
      __$$ApiLoanErrorImplCopyWithImpl<_$ApiLoanErrorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiLoanErrorImplToJson(
      this,
    );
  }
}

abstract class _ApiLoanError implements ApiLoanError {
  const factory _ApiLoanError({final String error, final String message}) =
      _$ApiLoanErrorImpl;

  factory _ApiLoanError.fromJson(Map<String, dynamic> json) =
      _$ApiLoanErrorImpl.fromJson;

  @override
  String get error;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ApiLoanErrorImplCopyWith<_$ApiLoanErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
