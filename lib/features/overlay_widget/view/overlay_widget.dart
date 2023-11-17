import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:kidneysmart/common/styles/app_text_styles.dart';
import 'package:kidneysmart/features/debug_menu/view/debug_menu_page.dart';
import 'package:kidneysmart/features/overlay_widget/view/app_update/app_update.dart';
import 'package:kidneysmart/features/overlay_widget/view/app_update/widgets/app_update_hard_page.dart';
import 'package:kidneysmart/features/overlay_widget/view/widget/no_internet_widget.dart';
import 'package:kidneysmart/features/splash/view/splash_page.dart';
import 'package:kidneysmart/providers/debug/app_setting_notifier.dart';
import 'package:kidneysmart/services/network/dio_log/http_log_list_widget.dart';

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
    final location = widget.goRouterState.location;
    final isActiveClickDebug =
        location == SplashPage.path || location == AppUpdateHardPage.path;

    return Scaffold(
      body: Stack(
        children: [
          widget.child,
          //

          //

          const NoInternetWidget(),
          if (isActiveClickDebug)
            _BtnActivateDebug(
              onTap:
                  ref.read(appSettingNotifierProvider.notifier).setClickDebug,
            ),

          const UpdateSoftAppPage(),
          const DebugInfoRouteAndBtn(),
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

class DebugInfoRouteAndBtn extends ConsumerWidget {
  const DebugInfoRouteAndBtn({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDebugMenuEnabled = ref.watch(
      appSettingNotifierProvider
          .select((it) => it.featureToggleSettings.isDebugMenuEnabled),
    );

    if (isDebugMenuEnabled) {
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
    } else {
      return const SizedBox.shrink();
    }
  }
}
