import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:nutrition/core/services/locale/locale_provider.dart';
import 'package:nutrition/core/services/theme/theme_providers.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';

/// {@template health_profile_page}
/// HealthProfilePage widget
/// {@endtemplate}
class HealthProfilePage extends ConsumerWidget {
  /// {@macro health_profile_page}
  const HealthProfilePage({super.key});
  static const path = '/HealthProfilePage';
  static const name = 'HealthProfilePage';

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    // final state = ref.watch(healthProfileProvider);
    final notifier = ref.watch(healthProfileProvider.notifier);

   
    return Scaffold(
      appBar: AppBar(
        title: const Text('Введите данные'),
        actions: [
          IconButton(
            onPressed: () => ref.read(localeProvider.notifier).changeLocale(),
            icon: const Icon(Icons.language),
          ),
          IconButton(
            onPressed: () => ref.read(themeProvider.notifier).changeTheme(),
            icon: const Icon(Icons.brightness_4_outlined),
          ),
        ],
      ),
      body: ListView(

        padding: const EdgeInsets.all(10),
        children: [
          const BtnGender(),
          const DropBirthday(),
          const DropHeight(),
          const BtnActivity(),
          const BtnHypertension(),
          const BtnDiabetes(),
          const BtnDailyDiuresis(),
           const BtnCkd(),
   
          ElevatedButton(
            onPressed: notifier.check,
            child: const Text('Проверить'),
          ),
        ],
      ),
    );
  }
}
