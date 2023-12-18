import 'package:flutter/material.dart';

import 'package:kidneysmart/core/constants/app_text_styles.dart';
import 'package:kidneysmart/core/service/url_launcher/url_launcher_service.dart';
import 'package:kidneysmart/core/widgets/basic_button.dart';

import 'package:kidneysmart/gen/assets.gen.dart';

class AppUpdateSoftWidget extends StatelessWidget {
  const AppUpdateSoftWidget(
    this.url, {
    super.key,
  });
  final String url;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15, top: 30, left: 15, bottom: 30),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            AssetPaths.logoImage,
            height: 48,
          ),
          const SizedBox(height: 20),
          const Text(
            'Доступна новая версия приложения!',
            style: AppTextStyle.s20w600h24,
          ),
          const SizedBox(height: 15),
          const SizedBox(height: 20),
          const SizedBox(height: 15),
          BasicButton(
            onPressed: () {
              UrlLauncherService.launchExternal(url);
            },
            text: 'Обновить',
          ),
          BasicButton(
            isTextBtn: true,
            onPressed: () => Navigator.of(context).pop(),
            text: 'Позже',
          ),
        ],
      ),
    );
  }
}
