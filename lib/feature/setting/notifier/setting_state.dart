part of 'setting_notifier.dart';

@freezed
sealed class SettingState with _$SettingState {
  // const SplashState._();

  const factory SettingState({
    @Default(EnumTheme.light) EnumTheme enumTheme,
  }) = _SettingState;

  factory SettingState.fromJson(Map<String, Object?> json) =>
      _$SettingStateFromJson(json);
}
