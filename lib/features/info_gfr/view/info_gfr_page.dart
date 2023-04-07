import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/core/widget/widget.dart';
import 'package:nutrition/features/info_gfr/info_gfr.dart';

/// {@template info_gfr_page}
/// InfoGfrPage widget
/// {@endtemplate}
class InfoGfrPage extends ConsumerWidget {
  /// {@macro info_gfr_page}
  const InfoGfrPage({super.key});

  static const path = '/InfoGfrPage';
  static const name = 'InfoGfrPage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final l = context.l10n;

    final state = ref.watch(infoGfrProvider);
    // ignore: unused_local_variable
    final notifier = ref.watch(infoGfrProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Информация'),
      ),
      body: SafeArea(
        child: state.enumResult.mapValue(
          init: const AppLoadPage(),
          // success: AppWebViewPage(url:state.url),
          success: AppMarkDownPage(text: state.textMarkdown),
          error: const AppErrorPage(),
        ),
      ),
    );
  }
}
