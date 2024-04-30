import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kidneysmart/core/constants/app_text_styles.dart';
import 'package:kidneysmart/core/notifier/debug_notifier/debug_notifier.dart';
import 'package:kidneysmart/core/notifier/screen_tracker_notifier/screen_tracker_notifier.dart';

import 'package:kidneysmart/core/service/network/dio_log/http_log_list_widget.dart';
import 'package:kidneysmart/feature/debug_menu/view/debug_menu_page.dart';
import 'package:kidneysmart/feature/overlay/view/app_update_page.dart';
import 'package:kidneysmart/feature/overlay/view/widget/http_btn_log.dart';
import 'package:kidneysmart/feature/overlay/view/widget/no_internet_widget.dart';
import 'package:kidneysmart/feature/setting/view/setting_page.dart';
import 'package:kidneysmart/feature/splash/view/splash_page.dart';
import 'package:kidneysmart/navigation/app_router.dart';

class OverlayWidget extends ConsumerStatefulWidget {
  const OverlayWidget({
    required this.child,
    super.key,
  });
  final Widget child;

  @override
  ConsumerState<OverlayWidget> createState() => _OverlayWidgetState();
}

class _OverlayWidgetState extends ConsumerState<OverlayWidget> {
  @override
  void initState() {
    super.initState();

    // final _ = context.read<InternetCubit>().checkConnectivity();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        widget.child,
        const NoInternetWidget(),
        const Positioned(bottom: 0, left: 0, child: RouteNameWidget()),
        const AppUpdatePage(),
        const HttpBtnLog(),
        const Positioned(
          bottom: 0,
          left: 0,
          child: _BtnActivateDebug(),
        ),
        const Positioned(bottom: 0, right: 0, child: DebugBtn()),
      ],
    );
  }
}

class DebugBtn extends ConsumerWidget {
  const DebugBtn({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDebugMenuEnabled = ref.watch(
      debugNotifierProvider.select((it) => it.isDebugMenuEnabled),
    );

    if (!isDebugMenuEnabled) return const SizedBox();
    return OutlinedButton(
      style: TextButton.styleFrom(
        minimumSize: Size.zero,
        padding: EdgeInsets.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      onLongPress: () => ref
          .read(appRouterProvider)
          .router
          .pushNamed<void>(HttpLogListWidget.name),
      onPressed: () => ref
          .read(appRouterProvider)
          .router
          .pushNamed<void>(DebugMenuPage.name),
      child: const Text(
        'debug',
        style: AppTextStyle.s20w600h24,
      ),
    );
  }
}

class RouteNameWidget extends ConsumerWidget {
  const RouteNameWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDebugMenuEnabled = ref.watch(
      debugNotifierProvider.select((it) => it.isDebugMenuEnabled),
    );

    final screen = ref.watch(screenTrackerNotifierProvider).current;

    if (screen == null || screen.isEmpty || !isDebugMenuEnabled) {
      return const SizedBox.shrink();
    }
    return Material(
      child: Text(
        screen,
        style: AppTextStyle.s12w700h16,
      ),
    );
  }
}

class _BtnActivateDebug extends ConsumerWidget {
  const _BtnActivateDebug();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screen = ref.watch(screenTrackerNotifierProvider).current;
    final isActiveClickDebug =
        screen == SplashPage.name || screen == SettingPage.name;

    if (!isActiveClickDebug) return const SizedBox.shrink();
    return GestureDetector(
      onTap: ref.read(debugNotifierProvider.notifier).setClickDebug,
      child: Container(
        color: Colors.transparent,
        width: 50,
        height: 20,
      ),
    );
  }
}
