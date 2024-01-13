part of 'verification_code_notifier.dart';

@freezed
sealed class VerificationCodeState with _$VerificationCodeState {
  // const SplashState._();

  const factory VerificationCodeState({
    @Default(EnumStatus.init) EnumStatus enumScreenStatus,
    @Default(EnumStatus.init) EnumStatus enumResultStatus,
    @Default('') String email,
    @Default(ResponseVerificationCode()) ResponseVerificationCode response,
  }) = _VerificationCodeState;

  factory VerificationCodeState.fromJson(Map<String, Object?> json) =>
      _$VerificationCodeStateFromJson(json);
}
