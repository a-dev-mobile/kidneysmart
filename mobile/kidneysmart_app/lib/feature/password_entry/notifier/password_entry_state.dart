part of 'password_entry_notifier.dart';

@freezed
sealed class PasswordEntryState with _$PasswordEntryState {
  // const SplashState._();

  const factory PasswordEntryState({
    @Default(EnumScreenStatus.init) EnumScreenStatus enumStatus,
  }) = _PasswordEntryState;

  factory PasswordEntryState.fromJson(Map<String, Object?> json) =>
      _$PasswordEntryStateFromJson(json);
}
