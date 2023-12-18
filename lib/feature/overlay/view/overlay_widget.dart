import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kidneysmart/core/constants/app_text_styles.dart';
import 'package:kidneysmart/core/enum/enum_internet_status.dart';
import 'package:kidneysmart/core/notifier/debug_notifier/debug_notifier.dart';
import 'package:kidneysmart/core/notifier/internet_notifier/internet_notifier.dart';
import 'package:kidneysmart/core/notifier/page_tracker_notifier/page_tracker_notifier.dart';
import 'package:kidneysmart/core/service/network/dio_log/http_log_list_widget.dart';
import 'package:kidneysmart/feature/debug_menu/view/debug_menu_page.dart';
import 'package:kidneysmart/feature/overlay/view/app_update_page.dart';
import 'package:kidneysmart/feature/overlay/view/widget/no_internet_widget.dart';
import 'package:kidneysmart/feature/splash/view/splash_page.dart';
import 'package:kidneysmart/navigation/navigation.dart';

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
    final page = ref.watch(pageTrackerNotifierProvider).page;
    final isNotConnected =
        ref.watch(internerNotifierProvider).enumInternetStatus.isNotConnected;
    final isActiveClickDebug = page == SplashPage.name;

    final isDebugMenuEnabled = ref.watch(
      debugNotifierProvider.select((it) => it.isDebugMenuEnabled),
    );

    return Stack(
      children: [
        widget.child,
        if (isNotConnected) const NoInternetWidget(),
        if (isDebugMenuEnabled)
          Positioned(bottom: 0, left: 0, child: RouteNameWidget(name: page)),
        const AppUpdatePage(),
        if (isDebugMenuEnabled)
          const Positioned(bottom: 0, right: 0, child: DebugBtn()),
        if (isActiveClickDebug)
          Positioned(
            bottom: 0,
            left: 0,
            child: _BtnActivateDebug(
              onTap: ref.read(debugNotifierProvider.notifier).setClickDebug,
            ),
          ),
      ],
    );
  }
}

class DebugBtn extends ConsumerWidget {
  const DebugBtn({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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

class RouteNameWidget extends StatelessWidget {
  const RouteNameWidget({super.key, this.name});
  final String? name;
  @override
  Widget build(BuildContext context) {
    if (name == null || name!.isEmpty) return const SizedBox.shrink();
    return Material(
      child: Text(
        name!,
        style: AppTextStyle.s12w700h16,
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
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Colors.transparent,
        width: 50,
        height: 20,
      ),
    );
  }
}
