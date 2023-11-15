// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_app_update_check_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiAppUpdateCheckRes _$ApiAppUpdateCheckResFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'success':
      return _Success.fromJson(json);
    case 'error':
      return _Error.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'runtimeType',
          'ApiAppUpdateCheckRes',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ApiAppUpdateCheckRes {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SuccessResponse successResponse) success,
    required TResult Function(ErrorResponse errorResponse) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SuccessResponse successResponse)? success,
    TResult? Function(ErrorResponse errorResponse)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SuccessResponse successResponse)? success,
    TResult Function(ErrorResponse errorResponse)? error,
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
abstract class $ApiAppUpdateCheckResCopyWith<$Res> {
  factory $ApiAppUpdateCheckResCopyWith(ApiAppUpdateCheckRes value,
          $Res Function(ApiAppUpdateCheckRes) then) =
      _$ApiAppUpdateCheckResCopyWithImpl<$Res, ApiAppUpdateCheckRes>;
}

/// @nodoc
class _$ApiAppUpdateCheckResCopyWithImpl<$Res,
        $Val extends ApiAppUpdateCheckRes>
    implements $ApiAppUpdateCheckResCopyWith<$Res> {
  _$ApiAppUpdateCheckResCopyWithImpl(this._value, this._then);

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
  $Res call({SuccessResponse successResponse});

  $SuccessResponseCopyWith<$Res> get successResponse;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$ApiAppUpdateCheckResCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? successResponse = null,
  }) {
    return _then(_$SuccessImpl(
      null == successResponse
          ? _value.successResponse
          : successResponse // ignore: cast_nullable_to_non_nullable
              as SuccessResponse,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SuccessResponseCopyWith<$Res> get successResponse {
    return $SuccessResponseCopyWith<$Res>(_value.successResponse, (value) {
      return _then(_value.copyWith(successResponse: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$SuccessImpl implements _Success {
  const _$SuccessImpl(this.successResponse, {final String? $type})
      : $type = $type ?? 'success';

  factory _$SuccessImpl.fromJson(Map<String, dynamic> json) =>
      _$$SuccessImplFromJson(json);

  @override
  final SuccessResponse successResponse;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ApiAppUpdateCheckRes.success(successResponse: $successResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.successResponse, successResponse) ||
                other.successResponse == successResponse));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, successResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SuccessResponse successResponse) success,
    required TResult Function(ErrorResponse errorResponse) error,
  }) {
    return success(successResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SuccessResponse successResponse)? success,
    TResult? Function(ErrorResponse errorResponse)? error,
  }) {
    return success?.call(successResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SuccessResponse successResponse)? success,
    TResult Function(ErrorResponse errorResponse)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(successResponse);
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

abstract class _Success implements ApiAppUpdateCheckRes {
  const factory _Success(final SuccessResponse successResponse) = _$SuccessImpl;

  factory _Success.fromJson(Map<String, dynamic> json) = _$SuccessImpl.fromJson;

  SuccessResponse get successResponse;
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
  $Res call({ErrorResponse errorResponse});

  $ErrorResponseCopyWith<$Res> get errorResponse;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$ApiAppUpdateCheckResCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorResponse = null,
  }) {
    return _then(_$ErrorImpl(
      null == errorResponse
          ? _value.errorResponse
          : errorResponse // ignore: cast_nullable_to_non_nullable
              as ErrorResponse,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ErrorResponseCopyWith<$Res> get errorResponse {
    return $ErrorResponseCopyWith<$Res>(_value.errorResponse, (value) {
      return _then(_value.copyWith(errorResponse: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.errorResponse, {final String? $type})
      : $type = $type ?? 'error';

  factory _$ErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$ErrorImplFromJson(json);

  @override
  final ErrorResponse errorResponse;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ApiAppUpdateCheckRes.error(errorResponse: $errorResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.errorResponse, errorResponse) ||
                other.errorResponse == errorResponse));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, errorResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SuccessResponse successResponse) success,
    required TResult Function(ErrorResponse errorResponse) error,
  }) {
    return error(errorResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SuccessResponse successResponse)? success,
    TResult? Function(ErrorResponse errorResponse)? error,
  }) {
    return error?.call(errorResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SuccessResponse successResponse)? success,
    TResult Function(ErrorResponse errorResponse)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorResponse);
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

abstract class _Error implements ApiAppUpdateCheckRes {
  const factory _Error(final ErrorResponse errorResponse) = _$ErrorImpl;

  factory _Error.fromJson(Map<String, dynamic> json) = _$ErrorImpl.fromJson;

  ErrorResponse get errorResponse;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SuccessResponse _$SuccessResponseFromJson(Map<String, dynamic> json) {
  return _SuccessResponse.fromJson(json);
}

/// @nodoc
mixin _$SuccessResponse {
  @JsonKey(
      name: 'updateType',
      toJson: enumAppUpdateTypeToJson,
      fromJson: enumAppUpdateTypeFromJson)
  EnumAppUpdateType get enumAppUpdateType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SuccessResponseCopyWith<SuccessResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuccessResponseCopyWith<$Res> {
  factory $SuccessResponseCopyWith(
          SuccessResponse value, $Res Function(SuccessResponse) then) =
      _$SuccessResponseCopyWithImpl<$Res, SuccessResponse>;
  @useResult
  $Res call(
      {@JsonKey(
          name: 'updateType',
          toJson: enumAppUpdateTypeToJson,
          fromJson: enumAppUpdateTypeFromJson)
      EnumAppUpdateType enumAppUpdateType});
}

/// @nodoc
class _$SuccessResponseCopyWithImpl<$Res, $Val extends SuccessResponse>
    implements $SuccessResponseCopyWith<$Res> {
  _$SuccessResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enumAppUpdateType = null,
  }) {
    return _then(_value.copyWith(
      enumAppUpdateType: null == enumAppUpdateType
          ? _value.enumAppUpdateType
          : enumAppUpdateType // ignore: cast_nullable_to_non_nullable
              as EnumAppUpdateType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SuccessResponseImplCopyWith<$Res>
    implements $SuccessResponseCopyWith<$Res> {
  factory _$$SuccessResponseImplCopyWith(_$SuccessResponseImpl value,
          $Res Function(_$SuccessResponseImpl) then) =
      __$$SuccessResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(
          name: 'updateType',
          toJson: enumAppUpdateTypeToJson,
          fromJson: enumAppUpdateTypeFromJson)
      EnumAppUpdateType enumAppUpdateType});
}

/// @nodoc
class __$$SuccessResponseImplCopyWithImpl<$Res>
    extends _$SuccessResponseCopyWithImpl<$Res, _$SuccessResponseImpl>
    implements _$$SuccessResponseImplCopyWith<$Res> {
  __$$SuccessResponseImplCopyWithImpl(
      _$SuccessResponseImpl _value, $Res Function(_$SuccessResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enumAppUpdateType = null,
  }) {
    return _then(_$SuccessResponseImpl(
      enumAppUpdateType: null == enumAppUpdateType
          ? _value.enumAppUpdateType
          : enumAppUpdateType // ignore: cast_nullable_to_non_nullable
              as EnumAppUpdateType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SuccessResponseImpl implements _SuccessResponse {
  const _$SuccessResponseImpl(
      {@JsonKey(
          name: 'updateType',
          toJson: enumAppUpdateTypeToJson,
          fromJson: enumAppUpdateTypeFromJson)
      this.enumAppUpdateType = EnumAppUpdateType.none});

  factory _$SuccessResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SuccessResponseImplFromJson(json);

  @override
  @JsonKey(
      name: 'updateType',
      toJson: enumAppUpdateTypeToJson,
      fromJson: enumAppUpdateTypeFromJson)
  final EnumAppUpdateType enumAppUpdateType;

  @override
  String toString() {
    return 'SuccessResponse(enumAppUpdateType: $enumAppUpdateType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessResponseImpl &&
            (identical(other.enumAppUpdateType, enumAppUpdateType) ||
                other.enumAppUpdateType == enumAppUpdateType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, enumAppUpdateType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessResponseImplCopyWith<_$SuccessResponseImpl> get copyWith =>
      __$$SuccessResponseImplCopyWithImpl<_$SuccessResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SuccessResponseImplToJson(
      this,
    );
  }
}

abstract class _SuccessResponse implements SuccessResponse {
  const factory _SuccessResponse(
      {@JsonKey(
          name: 'updateType',
          toJson: enumAppUpdateTypeToJson,
          fromJson: enumAppUpdateTypeFromJson)
      final EnumAppUpdateType enumAppUpdateType}) = _$SuccessResponseImpl;

  factory _SuccessResponse.fromJson(Map<String, dynamic> json) =
      _$SuccessResponseImpl.fromJson;

  @override
  @JsonKey(
      name: 'updateType',
      toJson: enumAppUpdateTypeToJson,
      fromJson: enumAppUpdateTypeFromJson)
  EnumAppUpdateType get enumAppUpdateType;
  @override
  @JsonKey(ignore: true)
  _$$SuccessResponseImplCopyWith<_$SuccessResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ErrorResponse _$ErrorResponseFromJson(Map<String, dynamic> json) {
  return _ErrorResponse.fromJson(json);
}

/// @nodoc
mixin _$ErrorResponse {
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorResponseCopyWith<ErrorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorResponseCopyWith<$Res> {
  factory $ErrorResponseCopyWith(
          ErrorResponse value, $Res Function(ErrorResponse) then) =
      _$ErrorResponseCopyWithImpl<$Res, ErrorResponse>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$ErrorResponseCopyWithImpl<$Res, $Val extends ErrorResponse>
    implements $ErrorResponseCopyWith<$Res> {
  _$ErrorResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ErrorResponseImplCopyWith<$Res>
    implements $ErrorResponseCopyWith<$Res> {
  factory _$$ErrorResponseImplCopyWith(
          _$ErrorResponseImpl value, $Res Function(_$ErrorResponseImpl) then) =
      __$$ErrorResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorResponseImplCopyWithImpl<$Res>
    extends _$ErrorResponseCopyWithImpl<$Res, _$ErrorResponseImpl>
    implements _$$ErrorResponseImplCopyWith<$Res> {
  __$$ErrorResponseImplCopyWithImpl(
      _$ErrorResponseImpl _value, $Res Function(_$ErrorResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorResponseImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ErrorResponseImpl implements _ErrorResponse {
  const _$ErrorResponseImpl({this.message = 'что то'});

  factory _$ErrorResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ErrorResponseImplFromJson(json);

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'ErrorResponse(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorResponseImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorResponseImplCopyWith<_$ErrorResponseImpl> get copyWith =>
      __$$ErrorResponseImplCopyWithImpl<_$ErrorResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorResponseImplToJson(
      this,
    );
  }
}

abstract class _ErrorResponse implements ErrorResponse {
  const factory _ErrorResponse({final String message}) = _$ErrorResponseImpl;

  factory _ErrorResponse.fromJson(Map<String, dynamic> json) =
      _$ErrorResponseImpl.fromJson;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ErrorResponseImplCopyWith<_$ErrorResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
