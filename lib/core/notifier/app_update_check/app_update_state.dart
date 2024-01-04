part of 'app_update_notifier.dart';

@freezed
sealed class AppUpdateState with _$AppUpdateState {
  // const DebugState._();

  const factory AppUpdateState({
     @Default(EnumStatus.init) EnumStatus enumStatus,
    @Default(ApiAppUpdateCheckRes.init())
    ApiAppUpdateCheckRes apiAppUpdateCheckRes,
    @Default(UpdateProgress.init()) UpdateProgress updateProgress,
  }) = _AppUpdateState;

  factory AppUpdateState.fromJson(Map<String, Object?> json) =>
      _$AppUpdateStateFromJson(json);
}

@freezed
class UpdateProgress with _$UpdateProgress {
  const factory UpdateProgress.init() = UpdateProgressInit;
  const factory UpdateProgress.load({
    @Default(0) int received,
    @Default(0) int total,
 
  }) = UpdateProgressLoad;
  const factory UpdateProgress.success({required String filePath}) =
      UpdateProgressSuccess;
  const factory UpdateProgress.error({required String msg}) =
      UpdateProgressError;

  factory UpdateProgress.fromJson(Map<String, Object?> json) =>
      _$UpdateProgressFromJson(json);
}
