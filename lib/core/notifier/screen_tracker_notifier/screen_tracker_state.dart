part of 'screen_tracker_notifier.dart';

@freezed
sealed class ScreenTrackerState with _$ScreenTrackerState {
  // const SplashState._();

  const factory ScreenTrackerState({
    String? current,
    String? previous,
  }) = _ScreenTrackerState;

  factory ScreenTrackerState.fromJson(Map<String, Object?> json) =>
      _$ScreenTrackerStateFromJson(json);
}
