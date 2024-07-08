import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kidneysmart/core/theme/theme.dart';
import 'package:kidneysmart/core/widget/widget.dart';
import 'package:kidneysmart/features/setting/setting.dart';

/// {@template setting_page}
/// SettingPage widget
/// {@endtemplate}
class SettingPage extends ConsumerWidget {
  /// {@macro setting_page}
  const SettingPage({super.key});

  static const path = '/SettingPage';
  static const name = 'SettingPage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(settingProvider);
    final stateTheme = state.themeSetting;
    final notifier = ref.watch(settingProvider.notifier);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('Настройки')),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            const Text(
              'Тема приложения',
              textAlign: TextAlign.center,
              style: AppTextStyles.titleLarge,
            ),
            const SizedBox(height: 16),
            BtnToggleText(
              textList: stateTheme.listTheme.map((e) => e.value).toList(),
              isSelected: stateTheme.listSelected,
              onPressed: notifier.setTheme,
            ),
          ],
        ),
      ),
    );
  }
}
