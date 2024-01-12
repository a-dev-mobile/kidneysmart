import 'package:dartlog/dartlog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:kidneysmart/core/constants/app_text_styles.dart';
import 'package:kidneysmart/core/extension/common.dart';
import 'package:kidneysmart/core/widgets/app_load_widget.dart';
import 'package:kidneysmart/core/widgets/clean_focus.dart';
import 'package:kidneysmart/core/widgets/default_app_bar.dart';
import 'package:kidneysmart/core/widgets/keyboard_auto_scroll_widget.dart';
import 'package:kidneysmart/feature/login/view/widget/field_email.dart';
import 'package:kidneysmart/feature/setting/view/setting_page.dart';
import 'package:kidneysmart/feature/splash/notifier/splash_notifier.dart';

import 'package:kidneysmart/feature/login/notifier/login_notifier.dart';
import 'package:kidneysmart/gen/assets.gen.dart';
import 'package:kidneysmart/navigation/app_router.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  static const path = '/LoginPage';
  static const name = 'LoginPage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final status =
        ref.watch(loginNotifierProvider.select((it) => it.enumScreenStatus));
    return ClearFocus(
      child: Scaffold(
        appBar: const CustomAppBar(title: 'Войти/регистрация'),
        body: status.mapValue(
            init: const AppLoadWidget(),
            load: const AppLoadWidget(),
            success: const _View(),
            error: const AppLoadWidget()),
      ),
    );
  }
}

/// {@template login_page}
/// _View widget
/// {@endtemplate}
class _View extends ConsumerStatefulWidget {
  /// {@macro login_page}
  const _View({super.key});

  static const path = '/_View';
  static const name = '_View';

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => __ViewState();
}

/// State for widget _View
class __ViewState extends ConsumerState<_View> {
  /* #region Lifecycle */
  @override
  void initState() {
    super.initState();
    // Initial state initialization
  }

  @override
  void didUpdateWidget(_View oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Widget configuration changed
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // The configuration of InheritedWidgets has changed
    // Also called after initState but before build
  }

  @override
  void dispose() {
    // Permanent removal of a tree stent
    super.dispose();
  }

  /* #endregion */
  final GlobalKey<FieldEmailState> _emailFieldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    final status =
        ref.watch(loginNotifierProvider.select((it) => it.enumResultStatus));

    final state = ref.read(loginNotifierProvider);
    final notifier = ref.read(loginNotifierProvider.notifier);
    
    final widthScreen = MediaQuery.of(context).size.width;

    final scrollController = ScrollController();
    return KeyboardAutoScrollWidget(
      scrollController: scrollController,
      child: Stack(
        children: [
          ListView(
            controller: scrollController,
            children: [
              SvgPicture.asset(
                AssetPaths.logoSvg,
                width: widthScreen / 1,
              ),
              const Text(
                'Войдите или зарегистрируйтесь, чтобы сохранить прогресс',
                style: AppTextStyle.s14w500h16,
              ),

              const Text(
                'Поздравляем! Вы сделали новый шаг на пути к более здоровому образу жизни',
              ),
              // Email TextField
              const SizedBox(height: 16),
              const SizedBox(height: 16),
              const SizedBox(height: 16),
              const SizedBox(height: 16),
              const SizedBox(height: 16),
              const SizedBox(height: 16),
              const SizedBox(height: 16),
              const SizedBox(height: 16),
              const SizedBox(height: 16),
              const SizedBox(height: 16),
              const SizedBox(height: 16),

              FieldEmail(
                key: _emailFieldKey,
                initialValue: state.email,
                onChanged: notifier.saveEmailLocal,
              ),

              TextButton(onPressed: () {}, child: const Text('Пропустить')),
              const SizedBox(height: 80),
            ],
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: widthScreen,
              padding: const EdgeInsets.all(8),
              color: Theme.of(context).colorScheme.background,
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        final isValid =
                            _emailFieldKey.currentState?.validate() ?? false;
                        if (isValid) {
                          // Если валидация успешна, продолжаем обработку
                          notifier.login();
                        }
                      },
                      child: const Text('Продолжить'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
