// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_create_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PasswordCreateState _$PasswordCreateStateFromJson(Map<String, dynamic> json) {
  return _PasswordCreateState.fromJson(json);
}

/// @nodoc
mixin _$PasswordCreateState {
  EnumScreenStatus get enumScreenStatus => throw _privateConstructorUsedError;
  EnumFrontendStatusPasswordCreate get enumFrontendStatus =>
      throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  ResponsePasswordCreate get response => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PasswordCreateStateCopyWith<PasswordCreateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordCreateStateCopyWith<$Res> {
  factory $PasswordCreateStateCopyWith(
          PasswordCreateState value, $Res Function(PasswordCreateState) then) =
      _$PasswordCreateStateCopyWithImpl<$Res, PasswordCreateState>;
  @useResult
  $Res call(
      {EnumScreenStatus enumScreenStatus,
      EnumFrontendStatusPasswordCreate enumFrontendStatus,
      String? email,
      String? code,
      ResponsePasswordCreate response});

  $ResponsePasswordCreateCopyWith<$Res> get response;
}

/// @nodoc
class _$PasswordCreateStateCopyWithImpl<$Res, $Val extends PasswordCreateState>
    implements $PasswordCreateStateCopyWith<$Res> {
  _$PasswordCreateStateCopyWithImpl(this._value, this._then);

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
    Object? code = freezed,
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
              as EnumFrontendStatusPasswordCreate,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as ResponsePasswordCreate,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResponsePasswordCreateCopyWith<$Res> get response {
    return $ResponsePasswordCreateCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PasswordCreateStateImplCopyWith<$Res>
    implements $PasswordCreateStateCopyWith<$Res> {
  factory _$$PasswordCreateStateImplCopyWith(_$PasswordCreateStateImpl value,
          $Res Function(_$PasswordCreateStateImpl) then) =
      __$$PasswordCreateStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EnumScreenStatus enumScreenStatus,
      EnumFrontendStatusPasswordCreate enumFrontendStatus,
      String? email,
      String? code,
      ResponsePasswordCreate response});

  @override
  $ResponsePasswordCreateCopyWith<$Res> get response;
}

/// @nodoc
class __$$PasswordCreateStateImplCopyWithImpl<$Res>
    extends _$PasswordCreateStateCopyWithImpl<$Res, _$PasswordCreateStateImpl>
    implements _$$PasswordCreateStateImplCopyWith<$Res> {
  __$$PasswordCreateStateImplCopyWithImpl(_$PasswordCreateStateImpl _value,
      $Res Function(_$PasswordCreateStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enumScreenStatus = null,
    Object? enumFrontendStatus = null,
    Object? email = freezed,
    Object? code = freezed,
    Object? response = null,
  }) {
    return _then(_$PasswordCreateStateImpl(
      enumScreenStatus: null == enumScreenStatus
          ? _value.enumScreenStatus
          : enumScreenStatus // ignore: cast_nullable_to_non_nullable
              as EnumScreenStatus,
      enumFrontendStatus: null == enumFrontendStatus
          ? _value.enumFrontendStatus
          : enumFrontendStatus // ignore: cast_nullable_to_non_nullable
              as EnumFrontendStatusPasswordCreate,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as ResponsePasswordCreate,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PasswordCreateStateImpl implements _PasswordCreateState {
  const _$PasswordCreateStateImpl(
      {this.enumScreenStatus = EnumScreenStatus.init,
      this.enumFrontendStatus = EnumFrontendStatusPasswordCreate.init,
      this.email,
      this.code,
      this.response = const ResponsePasswordCreate()});

  factory _$PasswordCreateStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$PasswordCreateStateImplFromJson(json);

  @override
  @JsonKey()
  final EnumScreenStatus enumScreenStatus;
  @override
  @JsonKey()
  final EnumFrontendStatusPasswordCreate enumFrontendStatus;
  @override
  final String? email;
  @override
  final String? code;
  @override
  @JsonKey()
  final ResponsePasswordCreate response;

  @override
  String toString() {
    return 'PasswordCreateState(enumScreenStatus: $enumScreenStatus, enumFrontendStatus: $enumFrontendStatus, email: $email, code: $code, response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordCreateStateImpl &&
            (identical(other.enumScreenStatus, enumScreenStatus) ||
                other.enumScreenStatus == enumScreenStatus) &&
            (identical(other.enumFrontendStatus, enumFrontendStatus) ||
                other.enumFrontendStatus == enumFrontendStatus) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, enumScreenStatus, enumFrontendStatus, email, code, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordCreateStateImplCopyWith<_$PasswordCreateStateImpl> get copyWith =>
      __$$PasswordCreateStateImplCopyWithImpl<_$PasswordCreateStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PasswordCreateStateImplToJson(
      this,
    );
  }
}

abstract class _PasswordCreateState implements PasswordCreateState {
  const factory _PasswordCreateState(
      {final EnumScreenStatus enumScreenStatus,
      final EnumFrontendStatusPasswordCreate enumFrontendStatus,
      final String? email,
      final String? code,
      final ResponsePasswordCreate response}) = _$PasswordCreateStateImpl;

  factory _PasswordCreateState.fromJson(Map<String, dynamic> json) =
      _$PasswordCreateStateImpl.fromJson;

  @override
  EnumScreenStatus get enumScreenStatus;
  @override
  EnumFrontendStatusPasswordCreate get enumFrontendStatus;
  @override
  String? get email;
  @override
  String? get code;
  @override
  ResponsePasswordCreate get response;
  @override
  @JsonKey(ignore: true)
  _$$PasswordCreateStateImplCopyWith<_$PasswordCreateStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
