// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'req_res_password_create.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestPasswordCreate _$RequestPasswordCreateFromJson(
    Map<String, dynamic> json) {
  return _RequestPasswordCreate.fromJson(json);
}

/// @nodoc
mixin _$RequestPasswordCreate {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestPasswordCreateCopyWith<RequestPasswordCreate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestPasswordCreateCopyWith<$Res> {
  factory $RequestPasswordCreateCopyWith(RequestPasswordCreate value,
          $Res Function(RequestPasswordCreate) then) =
      _$RequestPasswordCreateCopyWithImpl<$Res, RequestPasswordCreate>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$RequestPasswordCreateCopyWithImpl<$Res,
        $Val extends RequestPasswordCreate>
    implements $RequestPasswordCreateCopyWith<$Res> {
  _$RequestPasswordCreateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestPasswordCreateImplCopyWith<$Res>
    implements $RequestPasswordCreateCopyWith<$Res> {
  factory _$$RequestPasswordCreateImplCopyWith(
          _$RequestPasswordCreateImpl value,
          $Res Function(_$RequestPasswordCreateImpl) then) =
      __$$RequestPasswordCreateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$RequestPasswordCreateImplCopyWithImpl<$Res>
    extends _$RequestPasswordCreateCopyWithImpl<$Res,
        _$RequestPasswordCreateImpl>
    implements _$$RequestPasswordCreateImplCopyWith<$Res> {
  __$$RequestPasswordCreateImplCopyWithImpl(_$RequestPasswordCreateImpl _value,
      $Res Function(_$RequestPasswordCreateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$RequestPasswordCreateImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestPasswordCreateImpl implements _RequestPasswordCreate {
  const _$RequestPasswordCreateImpl(
      {required this.email, required this.password});

  factory _$RequestPasswordCreateImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestPasswordCreateImplFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'RequestPasswordCreate(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestPasswordCreateImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestPasswordCreateImplCopyWith<_$RequestPasswordCreateImpl>
      get copyWith => __$$RequestPasswordCreateImplCopyWithImpl<
          _$RequestPasswordCreateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestPasswordCreateImplToJson(
      this,
    );
  }
}

abstract class _RequestPasswordCreate implements RequestPasswordCreate {
  const factory _RequestPasswordCreate(
      {required final String email,
      required final String password}) = _$RequestPasswordCreateImpl;

  factory _RequestPasswordCreate.fromJson(Map<String, dynamic> json) =
      _$RequestPasswordCreateImpl.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$RequestPasswordCreateImplCopyWith<_$RequestPasswordCreateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ResponsePasswordCreate _$ResponsePasswordCreateFromJson(
    Map<String, dynamic> json) {
  return _ResponsePasswordCreate.fromJson(json);
}

/// @nodoc
mixin _$ResponsePasswordCreate {
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'status', toJson: _statusToJson, fromJson: _statusFromJson)
  EnumBackendStatusPasswordCreate? get enumBackendStatus =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponsePasswordCreateCopyWith<ResponsePasswordCreate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponsePasswordCreateCopyWith<$Res> {
  factory $ResponsePasswordCreateCopyWith(ResponsePasswordCreate value,
          $Res Function(ResponsePasswordCreate) then) =
      _$ResponsePasswordCreateCopyWithImpl<$Res, ResponsePasswordCreate>;
  @useResult
  $Res call(
      {String? message,
      @JsonKey(name: 'status', toJson: _statusToJson, fromJson: _statusFromJson)
      EnumBackendStatusPasswordCreate? enumBackendStatus});
}

/// @nodoc
class _$ResponsePasswordCreateCopyWithImpl<$Res,
        $Val extends ResponsePasswordCreate>
    implements $ResponsePasswordCreateCopyWith<$Res> {
  _$ResponsePasswordCreateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? enumBackendStatus = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      enumBackendStatus: freezed == enumBackendStatus
          ? _value.enumBackendStatus
          : enumBackendStatus // ignore: cast_nullable_to_non_nullable
              as EnumBackendStatusPasswordCreate?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponsePasswordCreateImplCopyWith<$Res>
    implements $ResponsePasswordCreateCopyWith<$Res> {
  factory _$$ResponsePasswordCreateImplCopyWith(
          _$ResponsePasswordCreateImpl value,
          $Res Function(_$ResponsePasswordCreateImpl) then) =
      __$$ResponsePasswordCreateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? message,
      @JsonKey(name: 'status', toJson: _statusToJson, fromJson: _statusFromJson)
      EnumBackendStatusPasswordCreate? enumBackendStatus});
}

/// @nodoc
class __$$ResponsePasswordCreateImplCopyWithImpl<$Res>
    extends _$ResponsePasswordCreateCopyWithImpl<$Res,
        _$ResponsePasswordCreateImpl>
    implements _$$ResponsePasswordCreateImplCopyWith<$Res> {
  __$$ResponsePasswordCreateImplCopyWithImpl(
      _$ResponsePasswordCreateImpl _value,
      $Res Function(_$ResponsePasswordCreateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? enumBackendStatus = freezed,
  }) {
    return _then(_$ResponsePasswordCreateImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      enumBackendStatus: freezed == enumBackendStatus
          ? _value.enumBackendStatus
          : enumBackendStatus // ignore: cast_nullable_to_non_nullable
              as EnumBackendStatusPasswordCreate?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponsePasswordCreateImpl implements _ResponsePasswordCreate {
  const _$ResponsePasswordCreateImpl(
      {this.message,
      @JsonKey(name: 'status', toJson: _statusToJson, fromJson: _statusFromJson)
      this.enumBackendStatus});

  factory _$ResponsePasswordCreateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponsePasswordCreateImplFromJson(json);

  @override
  final String? message;
  @override
  @JsonKey(name: 'status', toJson: _statusToJson, fromJson: _statusFromJson)
  final EnumBackendStatusPasswordCreate? enumBackendStatus;

  @override
  String toString() {
    return 'ResponsePasswordCreate(message: $message, enumBackendStatus: $enumBackendStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponsePasswordCreateImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.enumBackendStatus, enumBackendStatus) ||
                other.enumBackendStatus == enumBackendStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, enumBackendStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponsePasswordCreateImplCopyWith<_$ResponsePasswordCreateImpl>
      get copyWith => __$$ResponsePasswordCreateImplCopyWithImpl<
          _$ResponsePasswordCreateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponsePasswordCreateImplToJson(
      this,
    );
  }
}

abstract class _ResponsePasswordCreate implements ResponsePasswordCreate {
  const factory _ResponsePasswordCreate(
          {final String? message,
          @JsonKey(
              name: 'status', toJson: _statusToJson, fromJson: _statusFromJson)
          final EnumBackendStatusPasswordCreate? enumBackendStatus}) =
      _$ResponsePasswordCreateImpl;

  factory _ResponsePasswordCreate.fromJson(Map<String, dynamic> json) =
      _$ResponsePasswordCreateImpl.fromJson;

  @override
  String? get message;
  @override
  @JsonKey(name: 'status', toJson: _statusToJson, fromJson: _statusFromJson)
  EnumBackendStatusPasswordCreate? get enumBackendStatus;
  @override
  @JsonKey(ignore: true)
  _$$ResponsePasswordCreateImplCopyWith<_$ResponsePasswordCreateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
