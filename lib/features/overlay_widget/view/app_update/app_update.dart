import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:kidneysmart/features/overlay_widget/view/app_update/widgets/app_update_hard_page.dart';
import 'package:kidneysmart/features/overlay_widget/view/app_update/widgets/app_update_soft_widget.dart';
import 'package:kidneysmart/providers/debug/app_setting_notifier.dart';

class UpdateSoftAppPage extends ConsumerWidget {
  const UpdateSoftAppPage({
    super.key,
  });

  static const path = '/UpdateSoftAppPage';
  static const name = 'UpdateSoftAppPage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final api = ref.watch(
      appSettingNotifierProvider.select((it) => it.apiAppUpdateCheckResSuccess),
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      api.enumAppUpdateType.map(
        hard: () {
          context.goNamed(AppUpdateHardPage.name);
        },
        none: () {},
        soft: () {
          _showSoftUpdateBottomSheet(context);
        },
      );
    });

    return const SizedBox.shrink();
  }

  // Method to show the bottom sheet
  void _showSoftUpdateBottomSheet(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return const AppUpdateSoftWidget();
      },
    );
  }
}
