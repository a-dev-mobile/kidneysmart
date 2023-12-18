// ignore_for_file: noop_primitive_operations, avoid_print

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kidneysmart/core/storage/local_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'page_tracker_notifier.freezed.dart';
part 'page_tracker_notifier.g.dart';
part 'page_tracker_state.dart';

// @Riverpod(keepAlive: true)
// PageTrackerNotifier pageTrackerNotifier(PageTrackerNotifierRef ref) {
//   return throw UnimplementedError('init with override');
// }

@Riverpod(keepAlive: true)
class PageTrackerNotifier extends _$PageTrackerNotifier {
  @override
  PageTrackerState build() {
    // Future.microtask(load);
    return const PageTrackerState();
  }

  late final _storage = ref.read(localStorageProvider);
  void setPage(String? page) {
    state = state.copyWith(page: page);

    _storage.setString(key: 'key', value: page ?? '');
  }
}
