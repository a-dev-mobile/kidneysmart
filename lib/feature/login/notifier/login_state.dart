part of 'login_notifier.dart';

@freezed
sealed class LoginState with _$LoginState {
  const factory LoginState({
    @Default(EnumStatus.init) EnumStatus enumScreenStatus,
    @Default(EnumStatus.init) EnumStatus enumResultStatus,
    @Default('') String email,
    @Default(ResponseLogin()) ResponseLogin response,
  }) = _LoginState;

  factory LoginState.fromJson(Map<String, Object?> json) =>
      _$LoginStateFromJson(json);
}
