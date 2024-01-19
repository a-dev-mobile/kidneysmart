part of 'splash_notifier.dart';

@freezed
sealed class SplashState with _$SplashState {
  // const SplashState._();

  const factory SplashState({
    @Default(EnumScreenStatus.init) EnumScreenStatus enumStatus,
  }) = _SplashState;

  factory SplashState.fromJson(Map<String, Object?> json) =>
      _$SplashStateFromJson(json);
}
