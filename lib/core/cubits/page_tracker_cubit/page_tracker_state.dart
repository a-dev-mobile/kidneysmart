part of 'page_tracker_cubit.dart';

@freezed
sealed class PageTrackerState with _$PageTrackerState {
  // const DebugState._();

  const factory PageTrackerState({
    String? page,
  }) = _PageTrackerState;
}
