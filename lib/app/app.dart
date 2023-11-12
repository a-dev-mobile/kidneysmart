// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:device_preview/device_preview.dart';
import 'package:feedback/feedback.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:kidneysmart/app/app_lifecycle_manager.dart';
import 'package:kidneysmart/common/styles/app_theme.dart';
import 'package:kidneysmart/l10n/app_localizations.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {


    return const _MobileApp();
  }
}

class _MobileApp extends StatelessWidget {
  const _MobileApp();

  @override
  Widget build(BuildContext context) {



    return AppLifecycleManager(
      child: BetterFeedback(
        child: DevicePreview(
          // enabled: debugCubit.state.isShowDevicePreview,
          builder: (context) => MaterialApp.router(
        
              // routeInformationProvider:
              //     appRouter.router.routeInformationProvider,
              // routeInformationParser: appRouter.router.routeInformationParser,
              // routerDelegate: appRouter.router.routerDelegate,
              builder: DevicePreview.appBuilder,
              // onGenerateTitle: (context) =>
              //     AppLocalizations.of(context).app_name,
              theme: AppThemeFlex.lightThemeData(context),
              title: 'Надо Денег',
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



