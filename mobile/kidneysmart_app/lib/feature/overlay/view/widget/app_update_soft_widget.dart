import 'package:app_updater/app_updater.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:kidneysmart/core/constants/app_text_styles.dart';
import 'package:kidneysmart/core/notifier/app_update_check/app_update_notifier.dart';
import 'package:kidneysmart/core/service/url_launcher/url_launcher_service.dart';
import 'package:kidneysmart/core/utils/converters/convert_bytes_to_megabytes.dart';
import 'package:kidneysmart/core/widgets/basic_button.dart';

import 'package:kidneysmart/gen/assets.gen.dart';

class AppUpdateSoftWidget extends ConsumerWidget {
  const AppUpdateSoftWidget(
    this.successResponse, {
    super.key,
  });
  final ApiAppUpdateCheckResSuccess successResponse;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final update = successResponse.latestVersion;
    if (update == null) {
      Navigator.of(context).pop();
      return const SizedBox.shrink();
    }

    return Padding(
      padding: const EdgeInsets.only(right: 15, top: 30, left: 15, bottom: 30),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Доступно обновление',
            style: AppTextStyle.s20w600h24,
          ),
          Text(
            'Версия ${update.versionName}',
            style: AppTextStyle.s14w400h16,
          ),
          Text(
            update.updateDescription,
            style: AppTextStyle.s14w500h16,
          ),
          const SizedBox(height: 20),
          BasicButton(
            onPressed: () {
              UrlLauncherService.launchExternal(update.url);
              Navigator.of(context).pop();
              // ref.read(appUpdateNotifierProvider.notifier).downloadApk();
            },
            text: 'Загрузить • ${convertBytesToMegabytes(update.fileSize)} МБ',
          ),
          const SizedBox(height: 15),
          const Text(
            'Загрузка начнется в фоновом режиме',
            style: AppTextStyle.s12w400h17,
          ),
        ],
      ),
    );
  }
}
