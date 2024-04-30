part of 'app_update_notifier.dart';

@freezed
sealed class AppUpdateState with _$AppUpdateState {
  // const DebugState._();

  const factory AppUpdateState({
    @Default(EnumScreenStatus.init) EnumScreenStatus enumStatus,
    @Default(ApiAppUpdateCheckRes.init())
    ApiAppUpdateCheckRes apiAppUpdateCheckRes,
  }) = _AppUpdateState;

  factory AppUpdateState.fromJson(Map<String, Object?> json) =>
      _$AppUpdateStateFromJson(json);
}
