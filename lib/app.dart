import 'package:device_preview/device_preview.dart';
import 'package:feedback/feedback.dart';
import 'package:flash/flash_helper.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:nutrition/features/debug_menu/debug_menu.dart';
import 'package:nutrition/features/setting/setting.dart';
import 'package:nutrition/localization/gen/app_localizations.dart';
import 'package:nutrition/navigation/app_router.dart';
import 'package:nutrition/shared/domain/locale/locale_provider.dart';

import 'package:nutrition/shared/theme/flex_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
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
    // Initial state initialization
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

  void initStatusBar({required EnumTheme enumTheme}) {
    final isDark = enumTheme.maybeMapValue(orElse: false, dark: true);

    final flexScheme = isDark
        ? FlexColorScheme.dark(scheme: FlexScheme.materialBaseline).toTheme
        : FlexColorScheme.light(scheme: FlexScheme.materialBaseline).toTheme;

    Brightness? statusBarIconBrightness;

    statusBarIconBrightness = isDark ? Brightness.light : Brightness.dark;
    final colorOnPrimary = flexScheme.colorScheme.onPrimary;
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarIconBrightness: statusBarIconBrightness,
        statusBarColor: colorOnPrimary,
        systemNavigationBarColor: colorOnPrimary,
      ),
    );
  }

  final navigatorKey = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    // final go = context.read<AppRouterService>();

    final settingState = ref.watch(settingProvider);
    final settingNotifier = ref.watch(settingProvider.notifier);
    final navigator = ref.watch(appRouterProvider);
    final debug = ref.watch(debugProvider);
    final locale = ref.watch(localeProvider);

    debugRepaintRainbowEnabled = debug.isShowRepaintRainbow;

    debugPaintSizeEnabled = debug.isShowPaintSizeEnabled;

    //  global
    Intl.defaultLocale = locale.value;
    initStatusBar(enumTheme: settingState.themeSetting.enumTheme);

    return BetterFeedback(
      child: DevicePreview(
        enabled: debug.isShowDevice,
        builder: (context) => MaterialApp.router(
          useInheritedMediaQuery: true,
          routeInformationProvider: navigator.router.routeInformationProvider,
          routeInformationParser: navigator.router.routeInformationParser,
          routerDelegate: navigator.router.routerDelegate,

          // routerConfig: go.router,
          builder: (context, _) {
            var child = _!;
            child = DevicePreview.appBuilder(context, _);
            // Wrap with toast.
            child = Toast(navigatorKey: navigatorKey, child: child);

            return DevicePreview.appBuilder(context, child);
          },
          onGenerateTitle: (context) => AppLocalizations.of(context).app_name,
          theme: FlexTheme.lightThemeData(),
          darkTheme: FlexTheme.darkThemeData(),
          themeMode: settingNotifier.themeMode,
          locale: Locale(locale.name),
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
