// ignore_for_file: noop_primitive_operations, avoid_print

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kidneysmart/core/enum/enum_screen_state.dart';
import 'package:kidneysmart/feature/welcome/view/welcome_page.dart';
import 'package:kidneysmart/navigation/app_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'splash_notifier.freezed.dart';
part 'splash_notifier.g.dart';
part 'splash_state.dart';

@riverpod
class SplashNotifier extends _$SplashNotifier {
  @override
  SplashState build() {
    Future.microtask(load);
    return const SplashState();
  }

  Future<void> load() async {
    state = state.copyWith(enumStatus: EnumScreenStatus.load);

    await Future<void>.delayed(const Duration(seconds: 2));

    state = state.copyWith(enumStatus: EnumScreenStatus.success);

    ref.read(appRouterProvider).router.goNamed(WelcomeScreen.name);
  }
}
