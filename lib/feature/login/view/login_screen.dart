import 'package:dartlog/dartlog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:kidneysmart/core/constants/app_text_styles.dart';
import 'package:kidneysmart/core/enum/enum_screen_state.dart';
import 'package:kidneysmart/core/extension/gorouter_extension.dart';
import 'package:kidneysmart/core/widgets/app_error_screen.dart';
import 'package:kidneysmart/core/widgets/app_load_widget.dart';
import 'package:kidneysmart/core/widgets/clean_focus.dart';
import 'package:kidneysmart/core/widgets/default_app_bar.dart';
import 'package:kidneysmart/core/widgets/keyboard_auto_scroll_widget.dart';
import 'package:kidneysmart/core/widgets/load_next_screen.dart';
import 'package:kidneysmart/core/widgets/load_next_screen.dart';
import 'package:kidneysmart/feature/login/enum/enum_backend_status_login.dart';
import 'package:kidneysmart/feature/login/enum/enum_frontend_status_login.dart';
import 'package:kidneysmart/feature/login/view/widget/field_email.dart';
import 'package:kidneysmart/feature/password_create/view/password_create_screen.dart';
import 'package:kidneysmart/feature/password_entry/view/password_entry_page.dart';

import 'package:kidneysmart/feature/splash/notifier/splash_notifier.dart';

import 'package:kidneysmart/feature/login/notifier/login_notifier.dart';
import 'package:kidneysmart/feature/verification_code/view/verification_code_screen.dart';
import 'package:kidneysmart/gen/assets.gen.dart';
import 'package:kidneysmart/navigation/app_router.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  static const path = '/LoginScreen';
  static const name = 'LoginScreen';

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

/// {@template login_screen}
/// _View widget
/// {@endtemplate}
class _View extends ConsumerStatefulWidget {
  /// {@macro login_screen}
  const _View({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ViewState();
}

/// State for widget _View
class _ViewState extends ConsumerState<_View> {
  String? _customErrorFromBackend;

  final GlobalKey<FieldEmailState> _emailFieldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    final status =
        ref.watch(loginNotifierProvider.select((it) => it.enumFrontendStatus));
    final state = ref.read(loginNotifierProvider);
    final notifier = ref.read(loginNotifierProvider.notifier);

    final widthScreen = MediaQuery.of(context).size.width;

    _handleBackendStatus(state.response.enumBackendStatusLogin);

    final scrollController = ScrollController();
    return KeyboardAutoScrollWidget(
      scrollController: scrollController,
      child: LoadNextScreen(
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
          customError: _customErrorFromBackend,
        ),

        TextButton(onPressed: () {}, child: const Text('Пропустить')),
        const SizedBox(height: 80),
      ],
    );
  }

  void _handleBackendStatus(EnumBackendStatusLogin? status) {
    _customErrorFromBackend = null;
    switch (status) {
      case EnumBackendStatusLogin.invalidEmailFormat:
      case EnumBackendStatusLogin.invalidParameters:
        _customErrorFromBackend = 'Неверный e-mail адрес';

      case EnumBackendStatusLogin.emailSendFailed:
      case EnumBackendStatusLogin.invalidRequestBody:
      case EnumBackendStatusLogin.internalError:
        _customErrorFromBackend = 'Ошибка отправки e-mail адреса';

      case EnumBackendStatusLogin.userCreationFailed:
        _customErrorFromBackend = 'Ошибка создания пользователя';
      case EnumBackendStatusLogin.emailVerificationRequired:
      case EnumBackendStatusLogin.registrationSuccessful:
        _navigateAfterBuild(VerificationCodeScreen.name);
      case EnumBackendStatusLogin.passwordSetRequired:
        _navigateAfterBuild(PasswordCreateScreen.name);
      case EnumBackendStatusLogin.passwordEntryRequired:
        _navigateAfterBuild(PasswordEntryScreen.name);
      case null:
        _customErrorFromBackend = null;
    }
  }

  void _navigateAfterBuild(String routeName) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      GoRouter.of(context).pushNamed(routeName);
    });
  }
}
