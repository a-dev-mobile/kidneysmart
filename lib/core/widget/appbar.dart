// ignore: prefer-single-widget-per-file
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kidneysmart/core/constants/app_const.dart';
import 'package:kidneysmart/features/setting/setting.dart';

class AppMyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AppMyAppBar({
    super.key,
  });
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(AppConst.appName),
      actions: [
        IconButton(
          onPressed: () => context.pushNamed(SettingPage.name),
          icon: const Icon(Icons.settings_outlined),
        ),
      ],
    );
  }
}
