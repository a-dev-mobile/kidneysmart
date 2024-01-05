import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:kidneysmart/core/constants/app_text_styles.dart';
import 'package:kidneysmart/core/extension/common.dart';
import 'package:kidneysmart/core/widgets/btn_toggle_text.dart';
import 'package:kidneysmart/feature/setting/enum/enum_theme.dart';
import 'package:kidneysmart/feature/splash/notifier/splash_notifier.dart';

import 'package:kidneysmart/feature/setting/notifier/setting_notifier.dart';
import 'package:kidneysmart/gen/assets.gen.dart';
import 'package:kidneysmart/navigation/app_router.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  static const path = '/SettingPage';
  static const name = 'SettingPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Настройки'),
      ),
      body: const _View(),
    );
  }
}

class _View extends ConsumerWidget {
  const _View();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(settingNotifierProvider);
    final widthScreen = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const Text('Тема приложения'),
        SwitchListTile(
          title: const Text('Темная тема'),
          value: state
              .enumTheme.isDark, // Assuming you have a bool for theme state
          onChanged: (bool value) {
            ref
                .read(settingNotifierProvider.notifier)
                .toggleTheme(); // Toggle theme function in your notifier
          },
          secondary:
              Icon(state.enumTheme.isDark ? Icons.dark_mode : Icons.light_mode),
        ),
      ],
    );
  }
}
