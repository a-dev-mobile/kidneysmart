import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kidneysmart/core/constants/app_text_styles.dart';
import 'package:kidneysmart/core/notifier/screen_tracker_notifier/screen_tracker_notifier.dart';
import 'package:kidneysmart/core/widgets/default_app_bar.dart';
import 'package:kidneysmart/feature/splash/view/splash_page.dart';
import 'package:kidneysmart/gen/assets.gen.dart';
import 'package:kidneysmart/navigation/app_router.dart';

/// {@template app_error}
/// AppError widget
/// {@endtemplate}
class AppErrorScreen extends ConsumerWidget {
  /// {@macro app_error}
  const AppErrorScreen({
    this.error,
    super.key,
  });

  /// Error
  final Object? error;
  static const path = '/AppErrorScreen';
  static const name = 'AppErrorScreen';
  @override
  Widget build(BuildContext context, WidgetRef ref) => Scaffold(
        appBar: const CustomAppBar(title: ''),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                SvgPicture.asset(AssetPaths.boredSvg),
                const SizedBox(height: 16),
                const Text('Ошибка!', style: AppTextStyle.s20w600h24),
                Text(
                  // ErrorUtil.formatMessage(error)
                  error?.toString() ?? 'Что-то пошло не так!',
                ),
                const Spacer(),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      final go = ref.read(appRouterProvider);
                      final screenState =
                          ref.read(screenTrackerNotifierProvider);

                      go.clearAndNavigate(
                        screenState.previous ?? SplashPage.name,
                      );
                    },
                    child: const Text('Повторить'),
                  ),
                ),
                const Spacer(),
                TextButton(
                  onPressed: () async {
                    final go = ref.read(appRouterProvider);

                    await go.savingDebugStateAndCleanLocalStorage(ref);

                    go.router.goNamed(SplashPage.name);
                  },
                  child: const Text('Перезагрузить приложение'),
                )
              ],
            ),
          ),
        ),
      );
}
