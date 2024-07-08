import 'package:dio_log/dio_log.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:kidneysmart/core/data/local/shared_prefs/storage.dart';
import 'package:kidneysmart/core/info/info.dart';
import 'package:kidneysmart/core/theme/app_text_style.dart';
import 'package:kidneysmart/features/debug_menu/debug_menu.dart';
import 'package:kidneysmart/features/splash/splash.dart';
import 'package:kidneysmart/global/global.dart';
import 'package:kidneysmart/navigation/app_router.dart';

class OverlayWidget extends ConsumerWidget {
  const OverlayWidget({
    required this.child,
    required this.goRouterState,
    super.key,
  });
  final Widget child;
  final GoRouterState goRouterState;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<DebugState>(debugProvider, (p, c) {
      if (c.isShowBtnHttpLog) {
        final _ = showDebugBtn(context);
      } else {
        final _ = dismissDebugBtn();
      }
    });
// save last page
    final path = goRouterState.location;
    if (path != SplashPage.path) {
      AppInfo.setLastPageName(
        storage: ref.read(appStorageProvider),
        name: goRouterState.location,
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          child,
          // Consumer(
          //   builder: (context, ref, child) {
          //     final state = ref.watch(connectivityStatusProvider);

          //     return state.maybeMap(
          //       orElse: () => const SizedBox.shrink(),
          //       isConnected: (v) => const SnackbarInternet(isVisible: true),
          //     );
          //   },
          // ),
          if (DartDefineConst.IS_DEBUG_MENU_ENABLED)
            Positioned(
              left: 0,
              bottom: 0,
              child: Text(
                goRouterState.location,
                style: AppTextStyles.bodyLarge.copyWith(color: Colors.red),
              ),
            ),
          if (DartDefineConst.IS_DEBUG_MENU_ENABLED)
            Positioned(
              right: 10,
              bottom: 2,
              child: OutlinedButton(
                onPressed: () => ref
                    .read(appRouterProvider)
                    .router
                    .pushNamed(DebugMenuPage.name),
                style: TextButton.styleFrom(
                  minimumSize: Size.zero,
                  padding: EdgeInsets.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                child: const Text('debug', style: AppTextStyles.bodyLarge),
              ),
            ),
        ],
      ),
    );
  }
}
