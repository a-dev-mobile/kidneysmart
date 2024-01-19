part of 'password_create_notifier.dart';

@freezed
sealed class PasswordCreateState with _$PasswordCreateState {
  // const SplashState._();

  const factory PasswordCreateState({
    @Default(EnumScreenStatus.init) EnumScreenStatus enumStatus,
  }) = _PasswordCreateState;

  factory PasswordCreateState.fromJson(Map<String, Object?> json) =>
      _$PasswordCreateStateFromJson(json);
}
