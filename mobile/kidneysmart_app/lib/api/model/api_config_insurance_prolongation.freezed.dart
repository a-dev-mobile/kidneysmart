// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_config_insurance_prolongation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiConfigInsuranceProlongation _$ApiConfigInsuranceProlongationFromJson(
    Map<String, dynamic> json) {
  return _ApiConfigInsuranceProlongation.fromJson(json);
}

/// @nodoc
mixin _$ApiConfigInsuranceProlongation {
// ignore: invalid_annotation_target
  @JsonKey(name: 'is_three_month_insurance_enabled')
  bool? get isThreeMonthInsuranceEnabled => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiConfigInsuranceProlongationCopyWith<ApiConfigInsuranceProlongation>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiConfigInsuranceProlongationCopyWith<$Res> {
  factory $ApiConfigInsuranceProlongationCopyWith(
          ApiConfigInsuranceProlongation value,
          $Res Function(ApiConfigInsuranceProlongation) then) =
      _$ApiConfigInsuranceProlongationCopyWithImpl<$Res,
          ApiConfigInsuranceProlongation>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is_three_month_insurance_enabled')
      bool? isThreeMonthInsuranceEnabled});
}

/// @nodoc
class _$ApiConfigInsuranceProlongationCopyWithImpl<$Res,
        $Val extends ApiConfigInsuranceProlongation>
    implements $ApiConfigInsuranceProlongationCopyWith<$Res> {
  _$ApiConfigInsuranceProlongationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isThreeMonthInsuranceEnabled = freezed,
  }) {
    return _then(_value.copyWith(
      isThreeMonthInsuranceEnabled: freezed == isThreeMonthInsuranceEnabled
          ? _value.isThreeMonthInsuranceEnabled
          : isThreeMonthInsuranceEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiConfigInsuranceProlongationImplCopyWith<$Res>
    implements $ApiConfigInsuranceProlongationCopyWith<$Res> {
  factory _$$ApiConfigInsuranceProlongationImplCopyWith(
          _$ApiConfigInsuranceProlongationImpl value,
          $Res Function(_$ApiConfigInsuranceProlongationImpl) then) =
      __$$ApiConfigInsuranceProlongationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is_three_month_insurance_enabled')
      bool? isThreeMonthInsuranceEnabled});
}

/// @nodoc
class __$$ApiConfigInsuranceProlongationImplCopyWithImpl<$Res>
    extends _$ApiConfigInsuranceProlongationCopyWithImpl<$Res,
        _$ApiConfigInsuranceProlongationImpl>
    implements _$$ApiConfigInsuranceProlongationImplCopyWith<$Res> {
  __$$ApiConfigInsuranceProlongationImplCopyWithImpl(
      _$ApiConfigInsuranceProlongationImpl _value,
      $Res Function(_$ApiConfigInsuranceProlongationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isThreeMonthInsuranceEnabled = freezed,
  }) {
    return _then(_$ApiConfigInsuranceProlongationImpl(
      isThreeMonthInsuranceEnabled: freezed == isThreeMonthInsuranceEnabled
          ? _value.isThreeMonthInsuranceEnabled
          : isThreeMonthInsuranceEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiConfigInsuranceProlongationImpl
    implements _ApiConfigInsuranceProlongation {
  const _$ApiConfigInsuranceProlongationImpl(
      {@JsonKey(name: 'is_three_month_insurance_enabled')
      this.isThreeMonthInsuranceEnabled});

  factory _$ApiConfigInsuranceProlongationImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApiConfigInsuranceProlongationImplFromJson(json);

// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'is_three_month_insurance_enabled')
  final bool? isThreeMonthInsuranceEnabled;

  @override
  String toString() {
    return 'ApiConfigInsuranceProlongation(isThreeMonthInsuranceEnabled: $isThreeMonthInsuranceEnabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiConfigInsuranceProlongationImpl &&
            (identical(other.isThreeMonthInsuranceEnabled,
                    isThreeMonthInsuranceEnabled) ||
                other.isThreeMonthInsuranceEnabled ==
                    isThreeMonthInsuranceEnabled));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isThreeMonthInsuranceEnabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiConfigInsuranceProlongationImplCopyWith<
          _$ApiConfigInsuranceProlongationImpl>
      get copyWith => __$$ApiConfigInsuranceProlongationImplCopyWithImpl<
          _$ApiConfigInsuranceProlongationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiConfigInsuranceProlongationImplToJson(
      this,
    );
  }
}

abstract class _ApiConfigInsuranceProlongation
    implements ApiConfigInsuranceProlongation {
  const factory _ApiConfigInsuranceProlongation(
          {@JsonKey(name: 'is_three_month_insurance_enabled')
          final bool? isThreeMonthInsuranceEnabled}) =
      _$ApiConfigInsuranceProlongationImpl;

  factory _ApiConfigInsuranceProlongation.fromJson(Map<String, dynamic> json) =
      _$ApiConfigInsuranceProlongationImpl.fromJson;

  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'is_three_month_insurance_enabled')
  bool? get isThreeMonthInsuranceEnabled;
  @override
  @JsonKey(ignore: true)
  _$$ApiConfigInsuranceProlongationImplCopyWith<
          _$ApiConfigInsuranceProlongationImpl>
      get copyWith => throw _privateConstructorUsedError;
}
