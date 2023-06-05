import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:kidneysmart/core/constants/app_insets.dart';
import 'package:kidneysmart/core/data/local/shared_prefs/storage.dart';
import 'package:kidneysmart/core/widget/widget.dart';

import 'package:kidneysmart/features/setting/setting.dart';
import 'package:kidneysmart/localization/localization.dart';

/// An AppDrawer widget used on two pages in this demo application.
///
/// The Drawer shows that for example that our ThemeModeSwitch() widget can
/// just be dropped in the drawer to control theme mode from there as well.
class AppDrawer extends ConsumerWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final l = context.l10n;

    return Drawer(
      child: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: ListView(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: AlignmentDirectional.topStart,
                  end: AlignmentDirectional.bottomEnd,
                  colors: <Color>[
                    theme.colorScheme.primary,
                    theme.primaryColorLight,
                  ],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    l.app_name,
                    style: theme.primaryTextTheme.headlineMedium,
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Настройки'),
              onTap: () =>
                  {Navigator.pop(context), context.pushNamed(SettingPage.name)},
            ),
            const Divider(),
            ListTile(
              title: Text(l.about),
              leading: const Icon(Icons.info_outline),
              onTap: () {
                Navigator.pop(context);
                _showAppAboutDialog(context, ref);
              },
            ),
          ],
        ),
      ),
    );
  }
}

void _showAppAboutDialog(BuildContext context, WidgetRef ref) {
  final themeData = Theme.of(context);
  final aboutTextStyle = themeData.textTheme.bodyLarge!;
  final footerStyle = themeData.textTheme.bodySmall!;
  final linkStyle =
      themeData.textTheme.bodyLarge!.copyWith(color: themeData.primaryColor);
  final l = context.l10n;

  final storage = ref.read(appStorageProvider);
  final appState = storage.getAppState();

  showAboutDialog(
    context: context,
    applicationName: l.app_name,
    applicationVersion: appState.appVersion,
    applicationIcon: const AppLogo(size: 36),
    applicationLegalese: '@ 2023 Dmitriy Trofimov',
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(top: AppInsets.l),
        child: RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                style: aboutTextStyle,
                text: '''
Диета для умных почек - это приложение, разработанное для людей, которые хотят улучшить здоровье своих почек и поддерживать их оптимальное функционирование. 
''',
              ),
              // LinkTextSpan(
              //   style: linkStyle,
              //   uri: AppConst.packageUri,
              //   text: 'pub.dev',
              // ),
              // TextSpan(
              //   style: aboutTextStyle,
              //   text: '.\n\n',
              // ),
              // TextSpan(
              //   style: footerStyle,
              //   text: 'Built with Flutter ${AppConst.flutterVersion}, using '
              //       'FlexColorScheme package ${AppConst.packageVersion}\n\n',
              // ),
            ],
          ),
        ),
      ),
    ],
  );
}
