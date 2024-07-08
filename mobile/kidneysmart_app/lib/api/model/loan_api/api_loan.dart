import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_loan.freezed.dart';
part 'api_loan.g.dart';

@freezed
sealed class ApiLoan with _$ApiLoan {
  const factory ApiLoan.success(
    ApiLoanSuccess apiLoanSuccess,
  ) = _Success;
  const factory ApiLoan.error(
    ApiLoanError apiLoanError,
  ) = _Error;

  factory ApiLoan.fromJson(Map<String, Object?> json) =>
      _$ApiLoanFromJson(json);
}

@freezed
class ApiLoanSuccess with _$ApiLoanSuccess {
  const factory ApiLoanSuccess({
    required int id,
  }) = _ApiLoanSuccess;

  factory ApiLoanSuccess.fromJson(Map<String, Object?> json) =>
      _$ApiLoanSuccessFromJson(json);
}

@freezed
class ApiLoanError with _$ApiLoanError {
  const factory ApiLoanError({
    @Default('Ошибка, что-то случилось!') String error,
    @Default('') String message,
  }) = _ApiLoanError;

  factory ApiLoanError.fromJson(Map<String, Object?> json) =>
      _$ApiLoanErrorFromJson(json);
}
