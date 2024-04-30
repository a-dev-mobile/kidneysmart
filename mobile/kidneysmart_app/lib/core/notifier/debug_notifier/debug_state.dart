part of 'debug_notifier.dart';

@freezed
sealed class DebugState with _$DebugState {
  // const DebugState._();

  const factory DebugState({
    @Default(EnumProject.prod) EnumProject enumProject,
    @Default(EnumStore.unknown) EnumStore enumStore,
    @Default(false) bool isDebugMenuEnabled,
    @Default(false) bool isShowBtnHttpLog,
    @Default(false) bool isShowRepaintRainbow,
    @Default(false) bool isShowPaintSizeEnabled,
    @Default(false) bool isShowUrlPdfPage,
    @Default(false) bool forceUpdate,
  }) = _DebugState;

  factory DebugState.fromJson(Map<String, Object?> json) =>
      _$DebugStateFromJson(json);
}
