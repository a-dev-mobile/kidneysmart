import 'package:flutter/material.dart';

import 'package:kidneysmart/core/constants/app_text_styles.dart';
import 'package:kidneysmart/core/service/url_launcher/url_launcher_service.dart';
import 'package:kidneysmart/core/widgets/basic_button.dart';
import 'package:kidneysmart/gen/assets.gen.dart';

class AppUpdateHardPage extends StatelessWidget {
  const AppUpdateHardPage({
    required this.url,
    super.key,
  });
  static const path = '/AppUpdateHardPage';
  static const name = 'AppUpdateHardPage';

  final String url;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Center(
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height -
                    2 * 15, // минимальная высота, с учетом отступов Padding
              ),
              child: IntrinsicHeight(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      AssetPaths.logoImage,
                      height: 48,
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Приложение устарело!',
                      style: AppTextStyle.s20w600h24,
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      'Для продолжения корректной работы приложения, пожалуйста, обновите приложение',
                      style: AppTextStyle.s16w400h20,
                    ),
                    const SizedBox(height: 20),
                    BasicButton(
                      onPressed: () {
                        UrlLauncherService.launchExternal(url);
                      },
                      text: 'Обновить',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
