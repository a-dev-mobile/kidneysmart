import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:kidneysmart/core/constants/app_text_styles.dart';
import 'package:kidneysmart/core/extension/gorouter_extension.dart';
import 'package:kidneysmart/core/utils/enum_utils.dart';
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
    return const SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: ThemeSelectionSection(),
          ),
          // Add more settings sections here
        ],
      ),
    );
  }
}

class ThemeSelectionSection extends ConsumerWidget {
  const ThemeSelectionSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final enumTheme = ref.watch(
      settingNotifierProvider.select((it) => it.enumTheme),
    );
    return Column(
      children: [
        const Text(
          'Тема приложения',
          style: AppTextStyle.s22w400h30,
        ),
        const SizedBox(height: 16),
        BtnToggleText(
          widgetList: const [
            _ThemeOption(Icons.light_mode, 'Светлая'),
            _ThemeOption(Icons.dark_mode, 'Темная'),
          ],
          isSelected: EnumUtils.enumToBooleanList(EnumTheme.values, enumTheme),
          onPressed: (index) {
            ref
                .read(settingNotifierProvider.notifier)
                .setTheme(EnumTheme.values[index]);
          },
        ),
      ],
    );
  }
}

class _ThemeOption extends StatelessWidget {
  const _ThemeOption(this.icon, this.text);
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon),
        const SizedBox(width: 5),
        Text(text),
      ],
    );
  }
}
