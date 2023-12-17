// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_check_loan_count_limit_m.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiCheckLoanCountLimit _$ApiCheckLoanCountLimitFromJson(
    Map<String, dynamic> json) {
  return _ApiCheckLoanCountLimit.fromJson(json);
}

/// @nodoc
mixin _$ApiCheckLoanCountLimit {
  @JsonKey(name: 'loan_achieved_limit')
  bool get loanAchievedLimit => throw _privateConstructorUsedError;
  @JsonKey(name: 'allow_wide_term')
  bool get allowWideTerm => throw _privateConstructorUsedError;
  @JsonKey(name: 'required_loan_31_day')
  bool get requiredLoan31Day => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiCheckLoanCountLimitCopyWith<ApiCheckLoanCountLimit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiCheckLoanCountLimitCopyWith<$Res> {
  factory $ApiCheckLoanCountLimitCopyWith(ApiCheckLoanCountLimit value,
          $Res Function(ApiCheckLoanCountLimit) then) =
      _$ApiCheckLoanCountLimitCopyWithImpl<$Res, ApiCheckLoanCountLimit>;
  @useResult
  $Res call(
      {@JsonKey(name: 'loan_achieved_limit') bool loanAchievedLimit,
      @JsonKey(name: 'allow_wide_term') bool allowWideTerm,
      @JsonKey(name: 'required_loan_31_day') bool requiredLoan31Day});
}

/// @nodoc
class _$ApiCheckLoanCountLimitCopyWithImpl<$Res,
        $Val extends ApiCheckLoanCountLimit>
    implements $ApiCheckLoanCountLimitCopyWith<$Res> {
  _$ApiCheckLoanCountLimitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loanAchievedLimit = null,
    Object? allowWideTerm = null,
    Object? requiredLoan31Day = null,
  }) {
    return _then(_value.copyWith(
      loanAchievedLimit: null == loanAchievedLimit
          ? _value.loanAchievedLimit
          : loanAchievedLimit // ignore: cast_nullable_to_non_nullable
              as bool,
      allowWideTerm: null == allowWideTerm
          ? _value.allowWideTerm
          : allowWideTerm // ignore: cast_nullable_to_non_nullable
              as bool,
      requiredLoan31Day: null == requiredLoan31Day
          ? _value.requiredLoan31Day
          : requiredLoan31Day // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiCheckLoanCountLimitImplCopyWith<$Res>
    implements $ApiCheckLoanCountLimitCopyWith<$Res> {
  factory _$$ApiCheckLoanCountLimitImplCopyWith(
          _$ApiCheckLoanCountLimitImpl value,
          $Res Function(_$ApiCheckLoanCountLimitImpl) then) =
      __$$ApiCheckLoanCountLimitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'loan_achieved_limit') bool loanAchievedLimit,
      @JsonKey(name: 'allow_wide_term') bool allowWideTerm,
      @JsonKey(name: 'required_loan_31_day') bool requiredLoan31Day});
}

/// @nodoc
class __$$ApiCheckLoanCountLimitImplCopyWithImpl<$Res>
    extends _$ApiCheckLoanCountLimitCopyWithImpl<$Res,
        _$ApiCheckLoanCountLimitImpl>
    implements _$$ApiCheckLoanCountLimitImplCopyWith<$Res> {
  __$$ApiCheckLoanCountLimitImplCopyWithImpl(
      _$ApiCheckLoanCountLimitImpl _value,
      $Res Function(_$ApiCheckLoanCountLimitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loanAchievedLimit = null,
    Object? allowWideTerm = null,
    Object? requiredLoan31Day = null,
  }) {
    return _then(_$ApiCheckLoanCountLimitImpl(
      loanAchievedLimit: null == loanAchievedLimit
          ? _value.loanAchievedLimit
          : loanAchievedLimit // ignore: cast_nullable_to_non_nullable
              as bool,
      allowWideTerm: null == allowWideTerm
          ? _value.allowWideTerm
          : allowWideTerm // ignore: cast_nullable_to_non_nullable
              as bool,
      requiredLoan31Day: null == requiredLoan31Day
          ? _value.requiredLoan31Day
          : requiredLoan31Day // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiCheckLoanCountLimitImpl extends _ApiCheckLoanCountLimit {
  const _$ApiCheckLoanCountLimitImpl(
      {@JsonKey(name: 'loan_achieved_limit') this.loanAchievedLimit = false,
      @JsonKey(name: 'allow_wide_term') this.allowWideTerm = false,
      @JsonKey(name: 'required_loan_31_day') this.requiredLoan31Day = false})
      : super._();

  factory _$ApiCheckLoanCountLimitImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiCheckLoanCountLimitImplFromJson(json);

  @override
  @JsonKey(name: 'loan_achieved_limit')
  final bool loanAchievedLimit;
  @override
  @JsonKey(name: 'allow_wide_term')
  final bool allowWideTerm;
  @override
  @JsonKey(name: 'required_loan_31_day')
  final bool requiredLoan31Day;

  @override
  String toString() {
    return 'ApiCheckLoanCountLimit(loanAchievedLimit: $loanAchievedLimit, allowWideTerm: $allowWideTerm, requiredLoan31Day: $requiredLoan31Day)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiCheckLoanCountLimitImpl &&
            (identical(other.loanAchievedLimit, loanAchievedLimit) ||
                other.loanAchievedLimit == loanAchievedLimit) &&
            (identical(other.allowWideTerm, allowWideTerm) ||
                other.allowWideTerm == allowWideTerm) &&
            (identical(other.requiredLoan31Day, requiredLoan31Day) ||
                other.requiredLoan31Day == requiredLoan31Day));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, loanAchievedLimit, allowWideTerm, requiredLoan31Day);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiCheckLoanCountLimitImplCopyWith<_$ApiCheckLoanCountLimitImpl>
      get copyWith => __$$ApiCheckLoanCountLimitImplCopyWithImpl<
          _$ApiCheckLoanCountLimitImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiCheckLoanCountLimitImplToJson(
      this,
    );
  }
}

abstract class _ApiCheckLoanCountLimit extends ApiCheckLoanCountLimit {
  const factory _ApiCheckLoanCountLimit(
      {@JsonKey(name: 'loan_achieved_limit') final bool loanAchievedLimit,
      @JsonKey(name: 'allow_wide_term') final bool allowWideTerm,
      @JsonKey(name: 'required_loan_31_day')
      final bool requiredLoan31Day}) = _$ApiCheckLoanCountLimitImpl;
  const _ApiCheckLoanCountLimit._() : super._();

  factory _ApiCheckLoanCountLimit.fromJson(Map<String, dynamic> json) =
      _$ApiCheckLoanCountLimitImpl.fromJson;

  @override
  @JsonKey(name: 'loan_achieved_limit')
  bool get loanAchievedLimit;
  @override
  @JsonKey(name: 'allow_wide_term')
  bool get allowWideTerm;
  @override
  @JsonKey(name: 'required_loan_31_day')
  bool get requiredLoan31Day;
  @override
  @JsonKey(ignore: true)
  _$$ApiCheckLoanCountLimitImplCopyWith<_$ApiCheckLoanCountLimitImpl>
      get copyWith => throw _privateConstructorUsedError;
}
