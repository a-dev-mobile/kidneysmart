import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:kidneysmart/core/notifier/app_update_check/app_update_notifier.dart';
import 'package:kidneysmart/feature/overlay/view/widget/app_update_hard_page.dart';
import 'package:kidneysmart/feature/overlay/view/widget/app_update_soft_widget.dart';

class AppUpdatePage extends ConsumerWidget {
  const AppUpdatePage({
    super.key,
  });

  static const path = '/AppUpdatePage';
  static const name = 'AppUpdatePage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(appUpdateNotifierProvider);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      state.apiAppUpdateCheckRes.map(
        init: (_) {
          const SizedBox.shrink();
        },
        success: (v) {
          final url = v.successResponse.latestVersion?.url;
          v.successResponse.enumAppUpdateType.map(
            hard: () {
              context.goNamed(
                AppUpdateHardPage.name,
              );
            },
            none: () {},
            soft: () {
              _showSoftUpdateBottomSheet(context, url);
            },
          );
        },
        error: (v) {
          const SizedBox.shrink();
        },
      );
    });

    return const SizedBox.shrink();
  }

  // Method to show the bottom sheet
  void _showSoftUpdateBottomSheet(BuildContext context, String? url) {
    if (url == null) return;
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return AppUpdateSoftWidget(url);
      },
    );
  }
}
