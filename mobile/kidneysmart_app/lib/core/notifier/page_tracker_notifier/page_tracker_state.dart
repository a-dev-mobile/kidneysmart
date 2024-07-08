part of 'page_tracker_notifier.dart';

@freezed
sealed class PageTrackerState with _$PageTrackerState {
  // const SplashState._();

  const factory PageTrackerState({
    String? page,
  }) = _PageTrackerState;

  factory PageTrackerState.fromJson(Map<String, Object?> json) =>
      _$PageTrackerStateFromJson(json);
}
