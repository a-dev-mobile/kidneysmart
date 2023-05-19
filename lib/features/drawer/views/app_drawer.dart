import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kidneysmart/core/constants/app_const.dart';
import 'package:kidneysmart/core/constants/app_insets.dart';
import 'package:kidneysmart/features/about/views/about.dart';

/// An AppDrawer widget used on two pages in this demo application.
///
/// The Drawer shows that for example that our ThemeModeSwitch() widget can
/// just be dropped in the drawer to control theme mode from there as well.
class AppDrawer extends ConsumerWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    final drawerWidth =
        theme.drawerTheme.width ?? (theme.useMaterial3 ? 360 : 304);

    final screenWidth = MediaQuery.of(context).size.width;

    return Drawer(
      child: GestureDetector(
        // Close Drawer when tapping on background elements.
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
                    AppConst.appName,
                    style: theme.primaryTextTheme.headlineMedium,
                  ),
                  Text(
                    'Screen width: ${screenWidth.toStringAsFixed(0)}',
                    style: theme.primaryTextTheme.labelSmall,
                  ),
                  Text(
                    'Drawer theme: ${drawerWidth.toStringAsFixed(0)}',
                    style: theme.primaryTextTheme.labelSmall,
                  ),
                ],
              ),
            ),
            const _Header('Pages'),
            ListTile(
              title: const Text('Home'),
              trailing: const Icon(Icons.arrow_right),
              onTap: () async {
                Navigator.pop(context);
                // await Navigator.pushReplacementNamed(context, HomePage.route);
              },
            ),
            ListTile(
              title: const Text('Theme showcase'),
              trailing: const Icon(Icons.arrow_right),
              onTap: () async {
                Navigator.pop(context);
                // await Navigator.pushReplacementNamed(
                //     context, ThemeShowcasePage.route);
              },
            ),
            // ListTile(
            //   title: const Text('Bottom sheet'),
            //    trailing: const Icon(Icons.arrow_right),
            //   onTap: () {
            //     Navigator.pop(context);
            //     showBottomSheet<void>(
            //       context: context,
            //       builder: (BuildContext context) =>
            //           const BottomSheetSettings(),
            //     );
            //   },
            // ),

            // The logout option is only shown if we are logged in.
            const Divider(),
            const _Header('Theme'),

            // const ThemeModeListTile(title: Text('Theme')),

            // ListTile(
            //   title: const Text('Reset settings'),
            //   onTap: () async {
            //     final reset = await showDialog<bool?>(
            //       context: context,
            //       builder: (BuildContext context) {
            //         return const ResetSettingsDialog();
            //       },
            //     );
            //     if (reset ?? false) {
            //       Settings.reset(ref);
            //     }
            //   },
            // ),
            const Divider(),
            const _Header('About'),

            ListTile(
              title: const Text('About ${AppConst.appName}'),
              trailing: const Icon(Icons.arrow_right),
              onTap: () {
                Navigator.pop(context);
                showAppAboutDialog(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(
        AppInsets.l,
        AppInsets.s,
        AppInsets.l,
        AppInsets.xs,
      ),
      child: Text(
        title,
        style: TextStyle(
          color: Theme.of(context).colorScheme.primary,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
