import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kidneysmart/app/style/typography/app_text_styles.dart';
import 'package:kidneysmart/core/cubits/debug_cubit/debug_cubit.dart';
import 'package:kidneysmart/core/cubits/internet_cubit/internet_cubit.dart';

import 'package:kidneysmart/core/network/dio_log/http_log_list_widget.dart';
import 'package:kidneysmart/core/network/dio_log/overlay_draggable_button.dart';

import 'package:kidneysmart/feature/debug_menu/view/debug_menu_page.dart';

import 'package:kidneysmart/feature/overlay_widget/view/widget/no_internet_widget.dart';

import 'package:kidneysmart/feature/overlay_widget/view/widget/update_hard_app_page.dart';
import 'package:kidneysmart/feature/overlay_widget/view/widget/update_soft_app_page.dart';
import 'package:kidneysmart/feature/splash/view/splash_page.dart';


class OverlayWidget extends StatefulWidget {
  const OverlayWidget({
    required this.child,
    required this.goRouterState,
    super.key,
  });
  final Widget child;
  final GoRouterState goRouterState;

  @override
  State<OverlayWidget> createState() => _OverlayWidgetState();
}

class _OverlayWidgetState extends State<OverlayWidget> {
  @override
  void initState() {
    super.initState();

    final _ = context.read<InternetCubit>().checkConnectivity();
  }

  @override
  Widget build(BuildContext context) {
    final isDebugMenuEnabled = context.select(
      (DebugCubit cubit) => cubit.state.isDebugMenuEnabled,
    );

    final debugCubit = context.read<DebugCubit>();
    // final debugState = debugCubit.state;
    final location = widget.goRouterState.location;
    final isActiveClickDebug =
        location == SplashPage.path || location == UpdateHardAppPage.path;

    return MultiBlocListener(
      listeners: [
        BlocListener<DebugCubit, DebugState>(
          listenWhen: (p, c) => p.isShowBtnHttpLog != c.isShowBtnHttpLog,
          listener: (context, state) {
            if (state.isShowBtnHttpLog) {
              final _ = showDebugBtn(context);
            } else {
              final _ = dismissDebugBtn();
            }
          },
        ),
      ],
      child: Scaffold(
        body: Stack(
          children: [
            widget.child,
            const NoInternetWidget(),
            if (isDebugMenuEnabled)
              _DebugInfoRouter(location: widget.goRouterState.location),
            if (isDebugMenuEnabled) const _DebugBtn(),
            if (isActiveClickDebug)
              _BtnActivateDebug(onTap: debugCubit.setClickDebug),
          ],
        ),
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

class _DebugInfoRouter extends StatelessWidget {
  const _DebugInfoRouter({
    required this.location,
  });
  final String location;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      child: Text(
        location,
        style: AppTextStyle.s18w600h22.copyWith(color: Colors.red),
      ),
    );
  }
}
