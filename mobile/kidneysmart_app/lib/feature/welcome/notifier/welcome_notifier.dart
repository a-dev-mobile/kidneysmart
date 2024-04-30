import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kidneysmart/core/enum/enum_screen_state.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'welcome_notifier.freezed.dart';
part 'welcome_notifier.g.dart';
part 'welcome_state.dart';

@riverpod
class WelcomeNotifier extends _$WelcomeNotifier {
  @override
  WelcomeState build() {
    Future.microtask(load);
    return const WelcomeState();
  }

  Future<void> load() async {
    state = state.copyWith(enumStatus: EnumScreenStatus.success);
  }
}
