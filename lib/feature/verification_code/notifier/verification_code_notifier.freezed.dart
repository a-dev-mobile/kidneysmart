// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verification_code_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VerificationCodeState _$VerificationCodeStateFromJson(
    Map<String, dynamic> json) {
  return _VerificationCodeState.fromJson(json);
}

/// @nodoc
mixin _$VerificationCodeState {
  EnumStatus get enumScreenStatus => throw _privateConstructorUsedError;
  EnumStatus get enumResultStatus => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  ResponseVerificationCode get response => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerificationCodeStateCopyWith<VerificationCodeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationCodeStateCopyWith<$Res> {
  factory $VerificationCodeStateCopyWith(VerificationCodeState value,
          $Res Function(VerificationCodeState) then) =
      _$VerificationCodeStateCopyWithImpl<$Res, VerificationCodeState>;
  @useResult
  $Res call(
      {EnumStatus enumScreenStatus,
      EnumStatus enumResultStatus,
      String email,
      String code,
      ResponseVerificationCode response});

  $ResponseVerificationCodeCopyWith<$Res> get response;
}

/// @nodoc
class _$VerificationCodeStateCopyWithImpl<$Res,
        $Val extends VerificationCodeState>
    implements $VerificationCodeStateCopyWith<$Res> {
  _$VerificationCodeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enumScreenStatus = null,
    Object? enumResultStatus = null,
    Object? email = null,
    Object? code = null,
    Object? response = null,
  }) {
    return _then(_value.copyWith(
      enumScreenStatus: null == enumScreenStatus
          ? _value.enumScreenStatus
          : enumScreenStatus // ignore: cast_nullable_to_non_nullable
              as EnumStatus,
      enumResultStatus: null == enumResultStatus
          ? _value.enumResultStatus
          : enumResultStatus // ignore: cast_nullable_to_non_nullable
              as EnumStatus,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as ResponseVerificationCode,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResponseVerificationCodeCopyWith<$Res> get response {
    return $ResponseVerificationCodeCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VerificationCodeStateImplCopyWith<$Res>
    implements $VerificationCodeStateCopyWith<$Res> {
  factory _$$VerificationCodeStateImplCopyWith(
          _$VerificationCodeStateImpl value,
          $Res Function(_$VerificationCodeStateImpl) then) =
      __$$VerificationCodeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EnumStatus enumScreenStatus,
      EnumStatus enumResultStatus,
      String email,
      String code,
      ResponseVerificationCode response});

  @override
  $ResponseVerificationCodeCopyWith<$Res> get response;
}

/// @nodoc
class __$$VerificationCodeStateImplCopyWithImpl<$Res>
    extends _$VerificationCodeStateCopyWithImpl<$Res,
        _$VerificationCodeStateImpl>
    implements _$$VerificationCodeStateImplCopyWith<$Res> {
  __$$VerificationCodeStateImplCopyWithImpl(_$VerificationCodeStateImpl _value,
      $Res Function(_$VerificationCodeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enumScreenStatus = null,
    Object? enumResultStatus = null,
    Object? email = null,
    Object? code = null,
    Object? response = null,
  }) {
    return _then(_$VerificationCodeStateImpl(
      enumScreenStatus: null == enumScreenStatus
          ? _value.enumScreenStatus
          : enumScreenStatus // ignore: cast_nullable_to_non_nullable
              as EnumStatus,
      enumResultStatus: null == enumResultStatus
          ? _value.enumResultStatus
          : enumResultStatus // ignore: cast_nullable_to_non_nullable
              as EnumStatus,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as ResponseVerificationCode,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerificationCodeStateImpl implements _VerificationCodeState {
  const _$VerificationCodeStateImpl(
      {this.enumScreenStatus = EnumStatus.init,
      this.enumResultStatus = EnumStatus.init,
      this.email = '',
      this.code = '',
      this.response = const ResponseVerificationCode()});

  factory _$VerificationCodeStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerificationCodeStateImplFromJson(json);

  @override
  @JsonKey()
  final EnumStatus enumScreenStatus;
  @override
  @JsonKey()
  final EnumStatus enumResultStatus;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String code;
  @override
  @JsonKey()
  final ResponseVerificationCode response;

  @override
  String toString() {
    return 'VerificationCodeState(enumScreenStatus: $enumScreenStatus, enumResultStatus: $enumResultStatus, email: $email, code: $code, response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerificationCodeStateImpl &&
            (identical(other.enumScreenStatus, enumScreenStatus) ||
                other.enumScreenStatus == enumScreenStatus) &&
            (identical(other.enumResultStatus, enumResultStatus) ||
                other.enumResultStatus == enumResultStatus) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, enumScreenStatus, enumResultStatus, email, code, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerificationCodeStateImplCopyWith<_$VerificationCodeStateImpl>
      get copyWith => __$$VerificationCodeStateImplCopyWithImpl<
          _$VerificationCodeStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerificationCodeStateImplToJson(
      this,
    );
  }
}

abstract class _VerificationCodeState implements VerificationCodeState {
  const factory _VerificationCodeState(
      {final EnumStatus enumScreenStatus,
      final EnumStatus enumResultStatus,
      final String email,
      final String code,
      final ResponseVerificationCode response}) = _$VerificationCodeStateImpl;

  factory _VerificationCodeState.fromJson(Map<String, dynamic> json) =
      _$VerificationCodeStateImpl.fromJson;

  @override
  EnumStatus get enumScreenStatus;
  @override
  EnumStatus get enumResultStatus;
  @override
  String get email;
  @override
  String get code;
  @override
  ResponseVerificationCode get response;
  @override
  @JsonKey(ignore: true)
  _$$VerificationCodeStateImplCopyWith<_$VerificationCodeStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
