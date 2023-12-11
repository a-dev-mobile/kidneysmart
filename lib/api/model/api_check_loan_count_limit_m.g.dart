// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_check_loan_count_limit_m.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiCheckLoanCountLimitImpl _$$ApiCheckLoanCountLimitImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiCheckLoanCountLimitImpl(
      loanAchievedLimit: json['loan_achieved_limit'] as bool? ?? false,
      allowWideTerm: json['allow_wide_term'] as bool? ?? false,
      requiredLoan31Day: json['required_loan_31_day'] as bool? ?? false,
    );

Map<String, dynamic> _$$ApiCheckLoanCountLimitImplToJson(
        _$ApiCheckLoanCountLimitImpl instance) =>
    <String, dynamic>{
      'loan_achieved_limit': instance.loanAchievedLimit,
      'allow_wide_term': instance.allowWideTerm,
      'required_loan_31_day': instance.requiredLoan31Day,
    };
