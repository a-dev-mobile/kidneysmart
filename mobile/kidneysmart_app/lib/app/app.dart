// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:feedback/feedback.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kidneysmart/app/app_lifecycle_manager.dart';
import 'package:kidneysmart/app/app_theme.dart';
import 'package:kidneysmart/core/notifier/debug_notifier/debug_notifier.dart';
import 'package:kidneysmart/feature/overlay/view/overlay_widget.dart';
import 'package:kidneysmart/feature/setting/enum/enum_theme.dart';
import 'package:kidneysmart/feature/setting/notifier/setting_notifier.dart';
import 'package:kidneysmart/l10n/app_localizations.dart';
import 'package:kidneysmart/l10n/l10n.dart';
import 'package:kidneysmart/navigation/app_router.dart';
import 'package:flash/flash.dart';
import 'package:flash/flash_helper.dart';

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
    final appRouter = ref.read(appRouterProvider);

    debugRepaintRainbowEnabled = ref.watch(
      debugNotifierProvider.select((it) => it.isShowRepaintRainbow),
    );
    debugPaintSizeEnabled = ref.watch(
      debugNotifierProvider.select((it) => it.isShowPaintSizeEnabled),
    );
    final enumTheme = ref.watch(
      settingNotifierProvider.select((it) => it.enumTheme),
    );
    return AppLifecycleManager(
      child: BetterFeedback(
        child: MaterialApp.router(
          routeInformationProvider: appRouter.router.routeInformationProvider,
          routeInformationParser: appRouter.router.routeInformationParser,
          routerDelegate: appRouter.router.routerDelegate,
          builder: (context, child) {
            return OverlayWidget(child: child!);
          },
          onGenerateTitle: (context) => AppLocalizations.of(context).app_name,
          theme: AppThemeFlex.lightThemeData(context).copyWith(
            extensions: [const FlashToastTheme(), const FlashBarTheme()],
          ),
          darkTheme: AppThemeFlex.darkThemeData(context).copyWith(
            extensions: [const FlashToastTheme(), const FlashBarTheme()],
          ),
          title: 'Kidneysmart',
          themeMode: enumTheme.isDark ? ThemeMode.dark : ThemeMode.light,
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
    );
  }
}
