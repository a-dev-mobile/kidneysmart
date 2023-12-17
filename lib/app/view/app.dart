// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:device_preview/device_preview.dart';
import 'package:feedback/feedback.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:kidneysmart/app/style/theme/app_theme.dart';
import 'package:kidneysmart/app/view/app_lifecycle_manager.dart';
import 'package:kidneysmart/core/notifier/debug_notifier/debug_notifier.dart';

import 'package:kidneysmart/core/notifier/internet_notifier/internet_notifier.dart';
import 'package:kidneysmart/core/cubits/page_tracker_cubit/page_tracker_cubit.dart';

import 'package:kidneysmart/core/service/overlay/overlay_manager.dart';
import 'package:kidneysmart/core/service/overlay/overlay_manager_initializer.dart';

import 'package:kidneysmart/core/storage/local_storage.dart';
import 'package:kidneysmart/feature/overlay_widget/view/overlay_widget.dart';
import 'package:kidneysmart/feature/overlay_widget/view/widget/no_internet_widget.dart';

import 'package:kidneysmart/l10n/app_localizations.dart';
import 'package:kidneysmart/l10n/l10n.dart';

import 'package:kidneysmart/navigation/navigation.dart';

class App extends ConsumerWidget {
  const App({
    super.key,
  });
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const _MobileApp();
  }
}

/// {@template app}
/// _MobileApp widget
/// {@endtemplate}
class _MobileApp extends ConsumerStatefulWidget {
  /// {@macro app}
  const _MobileApp();

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => __MobileAppState();
}

/// State for widget _MobileApp
class __MobileAppState extends ConsumerState<_MobileApp> {
  /* #region Lifecycle */

  @override
  void initState() {
    super.initState();
  }

  @override
  void didUpdateWidget(_MobileApp oldWidget) {
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
    final debugNotifier = ref.watch(debugNotifierProvider);
    final appRouter = ref.read(navigationProvider);

    debugRepaintRainbowEnabled = debugNotifier.isShowRepaintRainbow;
    debugPaintSizeEnabled = debugNotifier.isShowPaintSizeEnabled;
    return AppLifecycleManager(
      child: BetterFeedback(
        child: DevicePreview(
          enabled: debugNotifier.isShowDevicePreview,
          builder: (context) => MaterialApp.router(
            routeInformationProvider: appRouter.router.routeInformationProvider,
            routeInformationParser: appRouter.router.routeInformationParser,
            routerDelegate: appRouter.router.routerDelegate,
            builder: (context, child) {
              return DevicePreview.appBuilder(
                context,
                OverlayWidget(child: child!),
              );
            },
            onGenerateTitle: (context) => AppLocalizations.of(context).app_name,
            theme: AppThemeFlex.lightThemeData(context),
            title: 'Kidneysmart',
            themeMode: ThemeMode.light,
            locale: const Locale('ru', 'RU'),
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: AppLocalizations.supportedLocales,
            debugShowCheckedModeBanner: false,
          ),
        ),
      ),
    );
  }
}
