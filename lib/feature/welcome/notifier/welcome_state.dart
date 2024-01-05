part of 'welcome_notifier.dart';

@freezed
sealed class WelcomeState with _$WelcomeState {
  // const SplashState._();

  const factory WelcomeState({
    @Default(EnumStatus.init) EnumStatus enumStatus,
  }) = _WelcomeState;

  factory WelcomeState.fromJson(Map<String, Object?> json) =>
      _$WelcomeStateFromJson(json);
}
