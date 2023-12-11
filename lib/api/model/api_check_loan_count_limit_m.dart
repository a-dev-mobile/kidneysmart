// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_check_loan_count_limit_m.freezed.dart';

part 'api_check_loan_count_limit_m.g.dart';

@freezed
class ApiCheckLoanCountLimit with _$ApiCheckLoanCountLimit {
  const factory ApiCheckLoanCountLimit({
    @JsonKey(name: 'loan_achieved_limit')
    @Default(false)
    bool loanAchievedLimit,
    @JsonKey(name: 'allow_wide_term') @Default(false) bool allowWideTerm,
    @JsonKey(name: 'required_loan_31_day')
    @Default(false)
    bool requiredLoan31Day,
  }) = _ApiCheckLoanCountLimit;

  const ApiCheckLoanCountLimit._();

  factory ApiCheckLoanCountLimit.fromJson(Map<String, dynamic> json) =>
      _$ApiCheckLoanCountLimitFromJson(json);

  bool get isRequiredLoan => requiredLoan31Day || loanAchievedLimit;
}
