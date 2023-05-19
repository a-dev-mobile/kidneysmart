import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kidneysmart/core/constants/app_const.dart';
import 'package:kidneysmart/core/constants/app_insets.dart';
import 'package:kidneysmart/core/widget/universal/link_text_span.dart';

/// An about icon button used on the example's app bar.
class AboutIconButton extends StatelessWidget {
  const AboutIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.info_outline),
      onPressed: () {
        showAppAboutDialog(context);
      },
    );
  }
}

/// This [showAppAboutDialog] function is based on the [AboutDialog] example
/// that exist(ed) in the Flutter Gallery App.
void showAppAboutDialog(BuildContext context) {
  final themeData = Theme.of(context);
  final aboutTextStyle = themeData.textTheme.bodyLarge!;
  final footerStyle = themeData.textTheme.bodySmall!;
  final linkStyle =
      themeData.textTheme.bodyLarge!.copyWith(color: themeData.primaryColor);

  showAboutDialog(
    context: context,
    applicationName: AppConst.appName,
    applicationVersion: AppConst.version,
    applicationIcon: const _AboutAppIcon(),
    applicationLegalese:
        '${AppConst.copyright} ${AppConst.author} ${AppConst.license}',
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(top: AppInsets.l),
        child: RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                style: aboutTextStyle,
                text: 'This app demos FlexColorScheme theming, '
                    'together with Riverpod and three different '
                    'settings persistence implementations, volatile memory, '
                    'SharedPreferences and Hive.\n\n'
                    'Check out FlexColorScheme package on ',
              ),
              LinkTextSpan(
                style: linkStyle,
                uri: AppConst.packageUri,
                text: 'pub.dev',
              ),
              TextSpan(
                style: aboutTextStyle,
                text: '.\n\n',
              ),
              TextSpan(
                style: footerStyle,
                text: 'Built with Flutter ${AppConst.flutterVersion}, using '
                    'FlexColorScheme package ${AppConst.packageVersion}\n\n',
              ),
            ],
          ),
        ),
      ),
    ],
  );
}

// Using the FlexThemeModeOptionButton to make something that looks like
// a themed icon for this demo application that we show in the About box.
class _AboutAppIcon extends ConsumerWidget {
  const _AboutAppIcon();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scheme = Theme.of(context).colorScheme;

    return FlexThemeModeOptionButton(
      flexSchemeColor: FlexSchemeColor(
        primary: scheme.primary,
        primaryContainer: scheme.primaryContainer,
        secondary: scheme.secondary,
        secondaryContainer: scheme.secondaryContainer,
        tertiary: scheme.tertiary,
        tertiaryContainer: scheme.tertiaryContainer,
      ),
      selected: false,
      unselectedBorder: BorderSide.none,
      backgroundColor: scheme.background,
      width: AppInsets.xl,
      height: AppInsets.xl,
      padding: EdgeInsets.zero,
      borderRadius: 0,
      optionButtonPadding: EdgeInsets.zero,
      optionButtonMargin: EdgeInsets.zero,
    );
  }
}
