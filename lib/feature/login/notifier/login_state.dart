part of 'login_notifier.dart';

@freezed
sealed class LoginState with _$LoginState {
  const factory LoginState({
    @Default(EnumScreenStatus.init) EnumScreenStatus enumScreenStatus,
    @Default(EnumFrontendStatusLogin.init)
    EnumFrontendStatusLogin enumFrontendStatus,
    String? email,
    @Default(ResponseLogin()) ResponseLogin response,
  }) = _LoginState;

  factory LoginState.fromJson(Map<String, Object?> json) =>
      _$LoginStateFromJson(json);
}
