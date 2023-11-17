import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kidneysmart/common/styles/app_text_styles.dart';
import 'package:kidneysmart/common/widgets/basic_button.dart';
import 'package:kidneysmart/gen/assets.gen.dart';
import 'package:kidneysmart/providers/debug/app_setting_notifier.dart';
import 'package:kidneysmart/services/url_launcher/url_launcher_service.dart';

class AppUpdateHardPage extends ConsumerWidget {
  const AppUpdateHardPage({
    super.key,
  });
  static const path = '/AppUpdateHardPage';
  static const name = 'AppUpdateHardPage';
  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                        UrlLauncherService.launchExternal(
                          ref
                              .read(appSettingNotifierProvider)
                              .apiAppUpdateCheckResSuccess
                              .latestVersion
                              ?.url,
                        );
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
