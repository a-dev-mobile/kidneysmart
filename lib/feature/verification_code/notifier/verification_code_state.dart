part of 'verification_code_notifier.dart';

@freezed
sealed class VerificationCodeState with _$VerificationCodeState {
  // const SplashState._();

  const factory VerificationCodeState({
    @Default(EnumScreenStatus.init) EnumScreenStatus enumScreenStatus,
    @Default(EnumFrontendStatusVerificationCode.init)
    EnumFrontendStatusVerificationCode enumFrontendStatus,
    String? email,
    String? code,
    @Default(ResponseVerificationCode()) ResponseVerificationCode response,
  }) = _VerificationCodeState;

  factory VerificationCodeState.fromJson(Map<String, Object?> json) =>
      _$VerificationCodeStateFromJson(json);
}
