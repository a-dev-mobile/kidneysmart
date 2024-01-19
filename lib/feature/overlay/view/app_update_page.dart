import 'package:app_updater/src/models/api_app_update_check_res.dart';
import 'package:dartlog/dartlog.dart';
import 'package:flash/flash.dart';
import 'package:flash/flash_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:kidneysmart/core/notifier/app_update_check/app_update_notifier.dart';
import 'package:kidneysmart/core/notifier/debug_notifier/debug_notifier.dart';
import 'package:kidneysmart/feature/overlay/view/widget/app_update_hard_page.dart';
import 'package:kidneysmart/feature/overlay/view/widget/app_update_soft_widget.dart';

class AppUpdatePage extends ConsumerStatefulWidget {
  const AppUpdatePage({
    super.key,
  });

  static const path = '/AppUpdatePage';
  static const name = 'AppUpdatePage';
  @override
  ConsumerState<AppUpdatePage> createState() => _AppUpdatePageState();
}

class _AppUpdatePageState extends ConsumerState<AppUpdatePage> {
  bool isBottomSheetShown = false;

  @override
  Widget build(BuildContext context) {
    final apiAppUpdateCheckRes = ref.watch(
      appUpdateNotifierProvider.select((it) => it.apiAppUpdateCheckRes),
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      apiAppUpdateCheckRes.mapOrNull(
        success: (v) {
          v.successResponse.enumAppUpdateType.map(
            hard: () {
              context.goNamed(
                AppUpdateHardPage.name,
              );
            },
            none: () {},
            soft: () {
              _showSoftUpdateBottomSheet(context, v.successResponse);
            },
          );
        },
      );
    });

    return const SizedBox.shrink();
  }

  // Method to show the bottom sheet
  void _showSoftUpdateBottomSheet(
    BuildContext context,
    ApiAppUpdateCheckResSuccess successResponse,
  ) {
    if (isBottomSheetShown) return;
    isBottomSheetShown = true;
    final url = successResponse.latestVersion?.url;
    if (url == null || url.trim().isEmpty) {
      isBottomSheetShown = false;
      return;
    }
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return AppUpdateSoftWidget(successResponse);
      },
    ).then((_) {
      // Сбросите флаг, когда лист закрыт
      isBottomSheetShown = false;
      ref.read(appUpdateNotifierProvider.notifier).resetState();
    });
  }
}
