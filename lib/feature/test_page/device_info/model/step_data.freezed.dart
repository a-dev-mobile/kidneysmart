// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'step_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StepData _$StepDataFromJson(Map<String, dynamic> json) {
  return _StepData.fromJson(json);
}

/// @nodoc
mixin _$StepData {
  String get app_id => throw _privateConstructorUsedError;
  String get user_id => throw _privateConstructorUsedError;
  Step get step => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StepDataCopyWith<StepData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StepDataCopyWith<$Res> {
  factory $StepDataCopyWith(StepData value, $Res Function(StepData) then) =
      _$StepDataCopyWithImpl<$Res, StepData>;
  @useResult
  $Res call({String app_id, String user_id, Step step});

  $StepCopyWith<$Res> get step;
}

/// @nodoc
class _$StepDataCopyWithImpl<$Res, $Val extends StepData>
    implements $StepDataCopyWith<$Res> {
  _$StepDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? app_id = null,
    Object? user_id = null,
    Object? step = null,
  }) {
    return _then(_value.copyWith(
      app_id: null == app_id
          ? _value.app_id
          : app_id // ignore: cast_nullable_to_non_nullable
              as String,
      user_id: null == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String,
      step: null == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as Step,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StepCopyWith<$Res> get step {
    return $StepCopyWith<$Res>(_value.step, (value) {
      return _then(_value.copyWith(step: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StepDataImplCopyWith<$Res>
    implements $StepDataCopyWith<$Res> {
  factory _$$StepDataImplCopyWith(
          _$StepDataImpl value, $Res Function(_$StepDataImpl) then) =
      __$$StepDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String app_id, String user_id, Step step});

  @override
  $StepCopyWith<$Res> get step;
}

/// @nodoc
class __$$StepDataImplCopyWithImpl<$Res>
    extends _$StepDataCopyWithImpl<$Res, _$StepDataImpl>
    implements _$$StepDataImplCopyWith<$Res> {
  __$$StepDataImplCopyWithImpl(
      _$StepDataImpl _value, $Res Function(_$StepDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? app_id = null,
    Object? user_id = null,
    Object? step = null,
  }) {
    return _then(_$StepDataImpl(
      app_id: null == app_id
          ? _value.app_id
          : app_id // ignore: cast_nullable_to_non_nullable
              as String,
      user_id: null == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String,
      step: null == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as Step,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StepDataImpl implements _StepData {
  const _$StepDataImpl(
      {required this.app_id, required this.user_id, required this.step});

  factory _$StepDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$StepDataImplFromJson(json);

  @override
  final String app_id;
  @override
  final String user_id;
  @override
  final Step step;

  @override
  String toString() {
    return 'StepData(app_id: $app_id, user_id: $user_id, step: $step)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StepDataImpl &&
            (identical(other.app_id, app_id) || other.app_id == app_id) &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.step, step) || other.step == step));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, app_id, user_id, step);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StepDataImplCopyWith<_$StepDataImpl> get copyWith =>
      __$$StepDataImplCopyWithImpl<_$StepDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StepDataImplToJson(
      this,
    );
  }
}

abstract class _StepData implements StepData {
  const factory _StepData(
      {required final String app_id,
      required final String user_id,
      required final Step step}) = _$StepDataImpl;

  factory _StepData.fromJson(Map<String, dynamic> json) =
      _$StepDataImpl.fromJson;

  @override
  String get app_id;
  @override
  String get user_id;
  @override
  Step get step;
  @override
  @JsonKey(ignore: true)
  _$$StepDataImplCopyWith<_$StepDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Step _$StepFromJson(Map<String, dynamic> json) {
  return _Step.fromJson(json);
}

/// @nodoc
mixin _$Step {
  String get name => throw _privateConstructorUsedError;
  String? get info => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StepCopyWith<Step> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StepCopyWith<$Res> {
  factory $StepCopyWith(Step value, $Res Function(Step) then) =
      _$StepCopyWithImpl<$Res, Step>;
  @useResult
  $Res call({String name, String? info});
}

/// @nodoc
class _$StepCopyWithImpl<$Res, $Val extends Step>
    implements $StepCopyWith<$Res> {
  _$StepCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? info = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StepImplCopyWith<$Res> implements $StepCopyWith<$Res> {
  factory _$$StepImplCopyWith(
          _$StepImpl value, $Res Function(_$StepImpl) then) =
      __$$StepImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String? info});
}

/// @nodoc
class __$$StepImplCopyWithImpl<$Res>
    extends _$StepCopyWithImpl<$Res, _$StepImpl>
    implements _$$StepImplCopyWith<$Res> {
  __$$StepImplCopyWithImpl(_$StepImpl _value, $Res Function(_$StepImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? info = freezed,
  }) {
    return _then(_$StepImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StepImpl implements _Step {
  const _$StepImpl({required this.name, this.info});

  factory _$StepImpl.fromJson(Map<String, dynamic> json) =>
      _$$StepImplFromJson(json);

  @override
  final String name;
  @override
  final String? info;

  @override
  String toString() {
    return 'Step(name: $name, info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StepImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.info, info) || other.info == info));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, info);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StepImplCopyWith<_$StepImpl> get copyWith =>
      __$$StepImplCopyWithImpl<_$StepImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StepImplToJson(
      this,
    );
  }
}

abstract class _Step implements Step {
  const factory _Step({required final String name, final String? info}) =
      _$StepImpl;

  factory _Step.fromJson(Map<String, dynamic> json) = _$StepImpl.fromJson;

  @override
  String get name;
  @override
  String? get info;
  @override
  @JsonKey(ignore: true)
  _$$StepImplCopyWith<_$StepImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
