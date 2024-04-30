import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kidneysmart/core/notifier/debug_notifier/debug_notifier.dart';
import 'package:kidneysmart/core/service/network/dio_log/overlay_draggable_button.dart';

/// {@template http_btn_log}
/// HttpBtnLog widget
/// {@endtemplate}
class HttpBtnLog extends ConsumerWidget {
  /// {@macro http_btn_log}
  const HttpBtnLog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isShowBtnHttpLog = ref.watch(
      debugNotifierProvider.select((it) => it.isShowBtnHttpLog),
    );

    if (isShowBtnHttpLog) {
      final _ = showDebugBtn(context);
    } else {
      final _ = dismissDebugBtn();
    }

    return const SizedBox.shrink();
  }
}
