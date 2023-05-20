// ignore: prefer-single-widget-per-file
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:kidneysmart/features/setting/setting.dart';
// import 'package:kidneysmart/localization/localization.dart';

class AppMyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AppMyAppBar({
    super.key,
    this.title,
  });
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  final String? title;
  @override
  Widget build(BuildContext context) {
    // final l = context.l10n;

    return AppBar(
      centerTitle: true,
      title: Text(
        title ?? '',
        overflow: TextOverflow.visible,
        textAlign: TextAlign.center,
        softWrap: true,
      ),
      actions: [
        IconButton(
          onPressed: () => context.pushNamed(SettingPage.name),
          icon: const Icon(Icons.settings_outlined),
        ),
      ],
    );
  }
}
