import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/core/widget/widget.dart';
import 'package:nutrition/features/update_db/update_db.dart';

/// {@template update_db_page}
/// UpdateDbPage widget
/// {@endtemplate}
class UpdateDbPage extends ConsumerWidget {
  /// {@macro update_db_page}
  const UpdateDbPage({super.key});

  static const path = '/UpdateDbPage';
  static const name = 'UpdateDbPage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final l = context.l10n;

    final state = ref.watch(updateDbProvider);
    // ignore: unused_local_variable
    final notifier = ref.watch(updateDbProvider.notifier);

    return Scaffold(
      body: SafeArea(
        child: state.enumResult.maybeMapValue(
          error: const AppErrorPage(),
          orElse: const AppLoadPage(title: 'Обновление базы данных'),
        ),
      ),
    );
  }
}
