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
  $Res call({String email});
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
abstract class _$$RequestVerificationCodeImplCopyWith<$Res>
    implements $RequestVerificationCodeCopyWith<$Res> {
  factory _$$RequestVerificationCodeImplCopyWith(
          _$RequestVerificationCodeImpl value,
          $Res Function(_$RequestVerificationCodeImpl) then) =
      __$$RequestVerificationCodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email});
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
  }) {
    return _then(_$RequestVerificationCodeImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestVerificationCodeImpl implements _RequestVerificationCode {
  const _$RequestVerificationCodeImpl({required this.email});

  factory _$RequestVerificationCodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestVerificationCodeImplFromJson(json);

  @override
  final String email;

  @override
  String toString() {
    return 'RequestVerificationCode(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestVerificationCodeImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email);

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
  const factory _RequestVerificationCode({required final String email}) =
      _$RequestVerificationCodeImpl;

  factory _RequestVerificationCode.fromJson(Map<String, dynamic> json) =
      _$RequestVerificationCodeImpl.fromJson;

  @override
  String get email;
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
  @JsonKey(
      name: 'status',
      toJson: _verificationCodeStatusToJson,
      fromJson: _verificationCodeStatusFromJson)
  EnumResponseVerificationCodeStatus? get enumResponseVerificationCodeStatus =>
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
      @JsonKey(
          name: 'status',
          toJson: _verificationCodeStatusToJson,
          fromJson: _verificationCodeStatusFromJson)
      EnumResponseVerificationCodeStatus? enumResponseVerificationCodeStatus});
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
    Object? enumResponseVerificationCodeStatus = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      enumResponseVerificationCodeStatus: freezed ==
              enumResponseVerificationCodeStatus
          ? _value.enumResponseVerificationCodeStatus
          : enumResponseVerificationCodeStatus // ignore: cast_nullable_to_non_nullable
              as EnumResponseVerificationCodeStatus?,
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
      @JsonKey(
          name: 'status',
          toJson: _verificationCodeStatusToJson,
          fromJson: _verificationCodeStatusFromJson)
      EnumResponseVerificationCodeStatus? enumResponseVerificationCodeStatus});
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
    Object? enumResponseVerificationCodeStatus = freezed,
  }) {
    return _then(_$ResponseVerificationCodeImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      enumResponseVerificationCodeStatus: freezed ==
              enumResponseVerificationCodeStatus
          ? _value.enumResponseVerificationCodeStatus
          : enumResponseVerificationCodeStatus // ignore: cast_nullable_to_non_nullable
              as EnumResponseVerificationCodeStatus?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseVerificationCodeImpl implements _ResponseVerificationCode {
  const _$ResponseVerificationCodeImpl(
      {this.message,
      @JsonKey(
          name: 'status',
          toJson: _verificationCodeStatusToJson,
          fromJson: _verificationCodeStatusFromJson)
      this.enumResponseVerificationCodeStatus});

  factory _$ResponseVerificationCodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseVerificationCodeImplFromJson(json);

  @override
  final String? message;
  @override
  @JsonKey(
      name: 'status',
      toJson: _verificationCodeStatusToJson,
      fromJson: _verificationCodeStatusFromJson)
  final EnumResponseVerificationCodeStatus? enumResponseVerificationCodeStatus;

  @override
  String toString() {
    return 'ResponseVerificationCode(message: $message, enumResponseVerificationCodeStatus: $enumResponseVerificationCodeStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseVerificationCodeImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.enumResponseVerificationCodeStatus,
                    enumResponseVerificationCodeStatus) ||
                other.enumResponseVerificationCodeStatus ==
                    enumResponseVerificationCodeStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, message, enumResponseVerificationCodeStatus);

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
      @JsonKey(
          name: 'status',
          toJson: _verificationCodeStatusToJson,
          fromJson: _verificationCodeStatusFromJson)
      final EnumResponseVerificationCodeStatus?
          enumResponseVerificationCodeStatus}) = _$ResponseVerificationCodeImpl;

  factory _ResponseVerificationCode.fromJson(Map<String, dynamic> json) =
      _$ResponseVerificationCodeImpl.fromJson;

  @override
  String? get message;
  @override
  @JsonKey(
      name: 'status',
      toJson: _verificationCodeStatusToJson,
      fromJson: _verificationCodeStatusFromJson)
  EnumResponseVerificationCodeStatus? get enumResponseVerificationCodeStatus;
  @override
  @JsonKey(ignore: true)
  _$$ResponseVerificationCodeImplCopyWith<_$ResponseVerificationCodeImpl>
      get copyWith => throw _privateConstructorUsedError;
}
