// ignore_for_file: noop_primitive_operations, avoid_print

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kidneysmart/core/storage/app_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'screen_tracker_notifier.freezed.dart';
part 'screen_tracker_notifier.g.dart';
part 'screen_tracker_state.dart';

// @Riverpod(keepAlive: true)
// ScreenTrackerNotifier screenTrackerNotifier(ScreenTrackerNotifierRef ref) {
//   return throw UnimplementedError('init with override');
// }

@Riverpod(keepAlive: true)
class ScreenTrackerNotifier extends _$ScreenTrackerNotifier {
  @override
  ScreenTrackerState build() {
    // Future.microtask(load);
    return const ScreenTrackerState();
  }

  late final _storage = ref.read(appStorageProvider);
  void setScreen(String? current) {
    final statePrevious = _storage.getScreenTrackerState();
    state = state.copyWith(
      previous: statePrevious.current,
      current: current,
    );

    _storage.setScreenTrackerState(state);
  }
}
