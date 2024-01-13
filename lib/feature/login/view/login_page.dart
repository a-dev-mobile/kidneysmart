import 'package:dartlog/dartlog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:kidneysmart/core/constants/app_text_styles.dart';
import 'package:kidneysmart/core/enum/enum_page_status.dart';
import 'package:kidneysmart/core/extension/gorouter_extension.dart';
import 'package:kidneysmart/core/widgets/app_error_screen.dart';
import 'package:kidneysmart/core/widgets/app_load_widget.dart';
import 'package:kidneysmart/core/widgets/clean_focus.dart';
import 'package:kidneysmart/core/widgets/default_app_bar.dart';
import 'package:kidneysmart/core/widgets/keyboard_auto_scroll_widget.dart';
import 'package:kidneysmart/core/widgets/load_next_page.dart';
import 'package:kidneysmart/feature/login/enum/enum_response_login.dart';
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
        body: status.maybeMapValue(
          orElse: const AppLoadWidget(),
          success: const _View(),
        ),
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

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ViewState();
}

/// State for widget _View
class _ViewState extends ConsumerState<_View> {
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
      child: LoadNextPage(
        isLoad: status.isLoad,
        child: Stack(
          children: [
            _buildListView(scrollController, widthScreen, state, notifier),
            _buildBottomButton(widthScreen, context, notifier),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomButton(
    double widthScreen,
    BuildContext context,
    LoginNotifier notifier,
  ) {
    return Positioned(
      bottom: 0,
      child: Container(
        width: widthScreen,
        padding: const EdgeInsets.all(8),
        color: Theme.of(context).colorScheme.background,
        child: _continueButton(notifier),
      ),
    );
  }

  Widget _continueButton(LoginNotifier notifier) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              final isValid = _emailFieldKey.currentState?.validate() ?? false;
              if (isValid) {
                // Если валидация успешна, продолжаем обработку
                notifier.login();
              }
            },
            child: const Text('Продолжить'),
          ),
        ),
      ],
    );
  }

  ListView _buildListView(
    ScrollController scrollController,
    double widthScreen,
    LoginState state,
    LoginNotifier notifier,
  ) {
    return ListView(
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

        FieldEmail(
          key: _emailFieldKey,
          initialValue: state.email,
          onChanged: notifier.saveEmailLocal,
          customError: _getCustomErrorFromBackend(
            state.response.enumResponseLoginStatus,
          ),
        ),

        TextButton(onPressed: () {}, child: const Text('Пропустить')),
        const SizedBox(height: 80),
      ],
    );
  }

  String? _getCustomErrorFromBackend(
    EnumResponseLoginStatus? enumResponseLoginStatus,
  ) {
    switch (enumResponseLoginStatus) {
      case EnumResponseLoginStatus.invalidEmailFormat:
      case EnumResponseLoginStatus.invalidParameters:
        return 'Неверный e-mail адрес';
      case EnumResponseLoginStatus.emailSendFailed:
      case EnumResponseLoginStatus.invalidRequestBody:
      case EnumResponseLoginStatus.internalError:
        return 'Ошибка отправки e-mail адреса';
      case EnumResponseLoginStatus.userCreationFailed:
        return 'Ошибка создания пользователя';

      case EnumResponseLoginStatus.registrationSuccessful:
      case EnumResponseLoginStatus.emailVerificationRequired:
      case EnumResponseLoginStatus.passwordSetRequired:
      case EnumResponseLoginStatus.passwordEntryRequired:
      case null:
    }
    return null;
  }
}
