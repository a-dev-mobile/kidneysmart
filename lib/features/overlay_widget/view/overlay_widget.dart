import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:kidneysmart/common/styles/app_text_styles.dart';
import 'package:kidneysmart/features/debug_menu/view/debug_menu_page.dart';
import 'package:kidneysmart/features/overlay_widget/view/widget/no_internet_widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kidneysmart/features/overlay_widget/view/widget/update_hard_app_page.dart';
import 'package:kidneysmart/features/splash/view/splash_page.dart';
import 'package:kidneysmart/providers/debug/app_setting_notifier.dart';
import 'package:kidneysmart/providers/internet/internet_notifier.dart';
import 'package:kidneysmart/services/network/dio_log/http_log_list_widget.dart';
import 'package:meta/meta.dart';

class OverlayWidget extends ConsumerStatefulWidget {
  const OverlayWidget({
    required this.child,
    required this.goRouterState,
    super.key,
  });
  final Widget child;
  final GoRouterState goRouterState;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _OverlayWidgetState();
}

/// State for widget OverlayWidget
class _OverlayWidgetState extends ConsumerState<OverlayWidget> {
  /* #region Lifecycle */
  @override
  void initState() {
    super.initState();
    // Initial state initialization
  }

  @override
  void didUpdateWidget(OverlayWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Widget configuration changed
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // The configuration of InheritedWidgets has changed
    // Also called after initState but before build
  }

  @override
  void dispose() {
    // Permanent removal of a tree stent
    super.dispose();
  }
  /* #endregion */

  @override
  Widget build(BuildContext context) {
    final enumInternetStatus = ref
        .watch(internerNotifierProvider.select((it) => it.enumInternetStatus));
    final isDebugMenuEnabled =
        ref.watch(appSettingNotifierProvider.select((it) => it.isDebugMenuEnabled));

    final location = widget.goRouterState.location;
    final isActiveClickDebug =
        location == SplashPage.path || location == UpdateHardAppPage.path;
    return Scaffold(
      body: Stack(
        children: [
          widget.child,
          //
          if (enumInternetStatus.maybeMapValue(
            orElse: false,
            notConnected: true,
          ))
            const NoInternetWidget(),
          //
          if (isDebugMenuEnabled) const _DebugBtn(),

           if (isActiveClickDebug)
              _BtnActivateDebug(onTap: ref.read(appSettingNotifierProvider.notifier).setClickDebug),
        ],
      ),
    );
  }
}

class _BtnActivateDebug extends StatelessWidget {
  const _BtnActivateDebug({
    this.onTap,
  });
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          color: Colors.transparent,
          width: 50,
          height: 20,
        ),
      ),
    );
  }
}

class _DebugBtn extends StatelessWidget {
  const _DebugBtn();
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 2,
      right: 10,
      child: OutlinedButton(
        style: TextButton.styleFrom(
          minimumSize: Size.zero,
          padding: EdgeInsets.zero,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        onLongPress: () => Navigator.of(context).push(
          MaterialPageRoute<void>(
            builder: (context) => const HttpLogListWidget(),
          ),
        ),
        onPressed: () =>
            GoRouter.of(context).pushNamed<void>(DebugMenuPage.name),
        child: const Text(
          'debug',
          style: AppTextStyle.s20w600h24,
        ),
      ),
    );
  }
}
