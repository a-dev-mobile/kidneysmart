// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_user_auth_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiUserAuthInfo _$ApiUserAuthInfoFromJson(Map<String, dynamic> json) {
  return _ApiUserAuthInfo.fromJson(json);
}

/// @nodoc
mixin _$ApiUserAuthInfo {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError; //
  @JsonKey(
      name: 'authorization_status',
      toJson: authorizationStatusToJson,
      fromJson: authorizationStatusFromJson)
  EnumAuthStatus get enumAuthStatus => throw _privateConstructorUsedError; //
  @JsonKey(name: 'step', toJson: stepToJson, fromJson: stepFromJson)
  EnumStep? get enumStep => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiUserAuthInfoCopyWith<ApiUserAuthInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiUserAuthInfoCopyWith<$Res> {
  factory $ApiUserAuthInfoCopyWith(
          ApiUserAuthInfo value, $Res Function(ApiUserAuthInfo) then) =
      _$ApiUserAuthInfoCopyWithImpl<$Res, ApiUserAuthInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(
          name: 'authorization_status',
          toJson: authorizationStatusToJson,
          fromJson: authorizationStatusFromJson)
      EnumAuthStatus enumAuthStatus,
      @JsonKey(name: 'step', toJson: stepToJson, fromJson: stepFromJson)
      EnumStep? enumStep});
}

/// @nodoc
class _$ApiUserAuthInfoCopyWithImpl<$Res, $Val extends ApiUserAuthInfo>
    implements $ApiUserAuthInfoCopyWith<$Res> {
  _$ApiUserAuthInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? enumAuthStatus = null,
    Object? enumStep = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      enumAuthStatus: null == enumAuthStatus
          ? _value.enumAuthStatus
          : enumAuthStatus // ignore: cast_nullable_to_non_nullable
              as EnumAuthStatus,
      enumStep: freezed == enumStep
          ? _value.enumStep
          : enumStep // ignore: cast_nullable_to_non_nullable
              as EnumStep?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiUserAuthInfoImplCopyWith<$Res>
    implements $ApiUserAuthInfoCopyWith<$Res> {
  factory _$$ApiUserAuthInfoImplCopyWith(_$ApiUserAuthInfoImpl value,
          $Res Function(_$ApiUserAuthInfoImpl) then) =
      __$$ApiUserAuthInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(
          name: 'authorization_status',
          toJson: authorizationStatusToJson,
          fromJson: authorizationStatusFromJson)
      EnumAuthStatus enumAuthStatus,
      @JsonKey(name: 'step', toJson: stepToJson, fromJson: stepFromJson)
      EnumStep? enumStep});
}

/// @nodoc
class __$$ApiUserAuthInfoImplCopyWithImpl<$Res>
    extends _$ApiUserAuthInfoCopyWithImpl<$Res, _$ApiUserAuthInfoImpl>
    implements _$$ApiUserAuthInfoImplCopyWith<$Res> {
  __$$ApiUserAuthInfoImplCopyWithImpl(
      _$ApiUserAuthInfoImpl _value, $Res Function(_$ApiUserAuthInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? enumAuthStatus = null,
    Object? enumStep = freezed,
  }) {
    return _then(_$ApiUserAuthInfoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      enumAuthStatus: null == enumAuthStatus
          ? _value.enumAuthStatus
          : enumAuthStatus // ignore: cast_nullable_to_non_nullable
              as EnumAuthStatus,
      enumStep: freezed == enumStep
          ? _value.enumStep
          : enumStep // ignore: cast_nullable_to_non_nullable
              as EnumStep?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiUserAuthInfoImpl implements _ApiUserAuthInfo {
  const _$ApiUserAuthInfoImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(
          name: 'authorization_status',
          toJson: authorizationStatusToJson,
          fromJson: authorizationStatusFromJson)
      this.enumAuthStatus = EnumAuthStatus.activeOrRequestLoan,
      @JsonKey(name: 'step', toJson: stepToJson, fromJson: stepFromJson)
      this.enumStep});

  factory _$ApiUserAuthInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiUserAuthInfoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
//
  @override
  @JsonKey(
      name: 'authorization_status',
      toJson: authorizationStatusToJson,
      fromJson: authorizationStatusFromJson)
  final EnumAuthStatus enumAuthStatus;
//
  @override
  @JsonKey(name: 'step', toJson: stepToJson, fromJson: stepFromJson)
  final EnumStep? enumStep;

  @override
  String toString() {
    return 'ApiUserAuthInfo(id: $id, enumAuthStatus: $enumAuthStatus, enumStep: $enumStep)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiUserAuthInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.enumAuthStatus, enumAuthStatus) ||
                other.enumAuthStatus == enumAuthStatus) &&
            (identical(other.enumStep, enumStep) ||
                other.enumStep == enumStep));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, enumAuthStatus, enumStep);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiUserAuthInfoImplCopyWith<_$ApiUserAuthInfoImpl> get copyWith =>
      __$$ApiUserAuthInfoImplCopyWithImpl<_$ApiUserAuthInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiUserAuthInfoImplToJson(
      this,
    );
  }
}

abstract class _ApiUserAuthInfo implements ApiUserAuthInfo {
  const factory _ApiUserAuthInfo(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(
          name: 'authorization_status',
          toJson: authorizationStatusToJson,
          fromJson: authorizationStatusFromJson)
      final EnumAuthStatus enumAuthStatus,
      @JsonKey(name: 'step', toJson: stepToJson, fromJson: stepFromJson)
      final EnumStep? enumStep}) = _$ApiUserAuthInfoImpl;

  factory _ApiUserAuthInfo.fromJson(Map<String, dynamic> json) =
      _$ApiUserAuthInfoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override //
  @JsonKey(
      name: 'authorization_status',
      toJson: authorizationStatusToJson,
      fromJson: authorizationStatusFromJson)
  EnumAuthStatus get enumAuthStatus;
  @override //
  @JsonKey(name: 'step', toJson: stepToJson, fromJson: stepFromJson)
  EnumStep? get enumStep;
  @override
  @JsonKey(ignore: true)
  _$$ApiUserAuthInfoImplCopyWith<_$ApiUserAuthInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
