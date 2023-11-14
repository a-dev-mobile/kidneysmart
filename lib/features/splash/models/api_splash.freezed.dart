// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_splash.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiSplash _$ApiSplashFromJson(Map<String, dynamic> json) {
  return _ApiSplash.fromJson(json);
}

/// @nodoc
mixin _$ApiSplash {
  @JsonKey(name: 'value')
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiSplashCopyWith<ApiSplash> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiSplashCopyWith<$Res> {
  factory $ApiSplashCopyWith(ApiSplash value, $Res Function(ApiSplash) then) =
      _$ApiSplashCopyWithImpl<$Res, ApiSplash>;
  @useResult
  $Res call({@JsonKey(name: 'value') String value});
}

/// @nodoc
class _$ApiSplashCopyWithImpl<$Res, $Val extends ApiSplash>
    implements $ApiSplashCopyWith<$Res> {
  _$ApiSplashCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiSplashImplCopyWith<$Res>
    implements $ApiSplashCopyWith<$Res> {
  factory _$$ApiSplashImplCopyWith(
          _$ApiSplashImpl value, $Res Function(_$ApiSplashImpl) then) =
      __$$ApiSplashImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'value') String value});
}

/// @nodoc
class __$$ApiSplashImplCopyWithImpl<$Res>
    extends _$ApiSplashCopyWithImpl<$Res, _$ApiSplashImpl>
    implements _$$ApiSplashImplCopyWith<$Res> {
  __$$ApiSplashImplCopyWithImpl(
      _$ApiSplashImpl _value, $Res Function(_$ApiSplashImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$ApiSplashImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiSplashImpl implements _ApiSplash {
  const _$ApiSplashImpl({@JsonKey(name: 'value') required this.value});

  factory _$ApiSplashImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiSplashImplFromJson(json);

  @override
  @JsonKey(name: 'value')
  final String value;

  @override
  String toString() {
    return 'ApiSplash(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiSplashImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiSplashImplCopyWith<_$ApiSplashImpl> get copyWith =>
      __$$ApiSplashImplCopyWithImpl<_$ApiSplashImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiSplashImplToJson(
      this,
    );
  }
}

abstract class _ApiSplash implements ApiSplash {
  const factory _ApiSplash(
      {@JsonKey(name: 'value') required final String value}) = _$ApiSplashImpl;

  factory _ApiSplash.fromJson(Map<String, dynamic> json) =
      _$ApiSplashImpl.fromJson;

  @override
  @JsonKey(name: 'value')
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$ApiSplashImplCopyWith<_$ApiSplashImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
