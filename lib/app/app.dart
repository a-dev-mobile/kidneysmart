// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:device_preview/device_preview.dart';

import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kidneysmart/common/styles/app_theme.dart';
import 'package:kidneysmart/l10n/app_localizations.dart';
import 'package:kidneysmart/providers/debug/app_setting_notifier.dart';

import 'package:kidneysmart/providers/internet/internet_notifier.dart';
import 'package:kidneysmart/services/navigation/app_router.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref
      ..read(appSettingNotifierProvider)
      ..read(internerNotifierProvider);
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
    // final l = context.l10n;
    final appRouter = ref.watch(appRouterProvider);
    return MaterialApp.router(
      routeInformationProvider: appRouter.router.routeInformationProvider,
      routeInformationParser: appRouter.router.routeInformationParser,
      routerDelegate: appRouter.router.routerDelegate,
      builder: DevicePreview.appBuilder,
      onGenerateTitle: (context) => AppLocalizations.of(context).app_name,
      theme: AppThemeFlex.lightThemeData(context),
      title: 'KidneySmart',
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
    );
  }
}
