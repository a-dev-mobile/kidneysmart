import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:nutrition/core/services/locale/locale_provider.dart';
import 'package:nutrition/core/services/theme/theme_providers.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';

/// {@template health_profile_page}
/// HealthProfilePage widget
/// {@endtemplate}
class HealthProfilePage extends ConsumerStatefulWidget {
  /// {@macro health_profile_page}
  const HealthProfilePage({super.key});
  static const path = '/HealthProfilePage';
  static const name = 'HealthProfilePage';
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _HealthProfilePageState();
}

/// State for widget HealthProfilePage
class _HealthProfilePageState extends ConsumerState<HealthProfilePage> {
  /* #region Lifecycle */
  final ScrollController _controller = ScrollController();

  @override
  void initState() {
    super.initState();
  }

  void _scrolToEnd() {


    _controller.jumpTo(
      _controller.position.maxScrollExtent + 70,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  /* #endregion */
  bool isShowOne = false;
  bool isShowTwo = false;
  @override
  Widget build(BuildContext context) {
    // final state = ref.watch(healthProfileProvider);
    final notifier = ref.watch(healthProfileProvider.notifier);

    ref
      ..listen<DailyDiuresisState>(dailyDiuresisProvider, (p, c) {
        isShowOne = c.isShowInput;
        if (c.isShowInput) _scrolToEnd();
      })
      ..listen<CkdState>(ckdProvider, (p, c) {
        isShowTwo = c.isShowInput;
        if (c.isShowInput) _scrolToEnd();
      });

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
        controller: _controller,
        padding: const EdgeInsets.all(10),
        children: [
          const BtnGender(),
          const DropBirthday(),
          const DropHeight(),
          const FieldUrineOutput(),
          const BtnActivity(),
          const BtnHypertension(),
          const BtnDiabetes(),
          const BtnDailyDiuresis(),
          const FieldUrineOutput(),
          const BtnCkd(),
          const FieldCreatinine(),
          ElevatedButton(
            onPressed: notifier.check,
            child: const Text('Проверить'),
          ),
        ],
      ),
    );
  }
}
