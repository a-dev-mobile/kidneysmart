import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:kidneysmart/core/constants/app_text_styles.dart';
import 'package:kidneysmart/core/enum/enum_screen_state.dart';
import 'package:kidneysmart/core/extension/gorouter_extension.dart';
import 'package:kidneysmart/core/widgets/app_load_widget.dart';
import 'package:kidneysmart/core/widgets/clean_focus.dart';
import 'package:kidneysmart/core/widgets/default_app_bar.dart';
import 'package:kidneysmart/core/widgets/keyboard_auto_scroll_widget.dart';
import 'package:kidneysmart/core/widgets/load_next_screen.dart';

import 'package:kidneysmart/feature/login/view/login_screen.dart';
import 'package:kidneysmart/feature/password_create/view/password_create_screen.dart';
import 'package:kidneysmart/feature/password_entry/view/password_entry_page.dart';

import 'package:kidneysmart/feature/splash/notifier/splash_notifier.dart';
import 'package:kidneysmart/feature/verification_code/enum/enum_backend_status_verification_code.dart';
import 'package:kidneysmart/feature/verification_code/enum/enum_frontend_status_verification_code.dart';

import 'package:kidneysmart/feature/verification_code/notifier/verification_code_notifier.dart';
import 'package:kidneysmart/feature/verification_code/view/widget/field_code.dart';
import 'package:kidneysmart/gen/assets.gen.dart';
import 'package:kidneysmart/navigation/app_router.dart';

class VerificationCodeScreen extends ConsumerWidget {
  const VerificationCodeScreen({super.key});

  static const path = '/VerificationCodeScreen';
  static const name = 'VerificationCodeScreen';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final status = ref.watch(
      verificationCodeNotifierProvider.select((it) => it.enumScreenStatus),
    );
    return ClearFocus(
      child: Scaffold(
        appBar: const CustomAppBar(title: 'Проверьте почту'),
        body: status.maybeMapValue(
          orElse: const AppLoadWidget(),
          success: const _View(),
        ),
      ),
    );
  }
}

class _View extends ConsumerStatefulWidget {
  const _View();
  @override
  ConsumerState<_View> createState() => _ViewState();
}

class _ViewState extends ConsumerState<_View> {
  final GlobalKey<FieldCodeState> _codeFieldKey = GlobalKey();
  String? _customErrorFromBackend;
  @override
  Widget build(BuildContext context) {
    final status = ref.watch(
      verificationCodeNotifierProvider.select((it) => it.enumFrontendStatus),
    );
    final state = ref.read(verificationCodeNotifierProvider);
    final notifier = ref.read(verificationCodeNotifierProvider.notifier);

    final sizeScreen = MediaQuery.of(context).size;
    _handleBackendStatus(state.response.enumBackendStatusVerificationCode);
    final scrollController = ScrollController();

    return KeyboardAutoScrollWidget(
      scrollController: scrollController,
      child: LoadNextScreen(
        isLoad: status.isLoad,
        child: Stack(
          children: [
            _buildListView(scrollController, sizeScreen, state, notifier),
            _buildBottomButton(sizeScreen.width, context, notifier),
          ],
        ),
      ),
    );
  }

  ListView _buildListView(
    ScrollController scrollController,
    Size sizeScreen,
    VerificationCodeState state,
    VerificationCodeNotifier notifier,
  ) {
    return ListView(
      controller: scrollController,
      children: [
        SvgPicture.asset(
          AssetPaths.checkEmailSvg,
          width: sizeScreen.width / 2,
          height: sizeScreen.height / 2,
        ),
        const SizedBox(height: 16),
        Text(
          'Пожалуйста введите 4 цифры, которые мы  отправили на почту ${state.email}',
        ),
        const SizedBox(height: 16),
        FieldCode(
          key: _codeFieldKey,
          onChanged: notifier.setCode,
          customError: _customErrorFromBackend,
        ),
        const SizedBox(height: 16),
        TextButton(
          onPressed: () {},
          child: const Text('Повторно отправить код'),
        ),
        const SizedBox(height: 150),
      ],
    );
  }

  Widget _buildBottomButton(
    double widthScreen,
    BuildContext context,
    VerificationCodeNotifier notifier,
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

  Widget _continueButton(VerificationCodeNotifier notifier) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              final isValid = _codeFieldKey.currentState?.validate() ?? false;
              if (isValid) {
                // Если валидация успешна, продолжаем обработку
                notifier.verificationCode();
              }
            },
            child: const Text('Продолжить'),
          ),
        ),
      ],
    );
  }

  void _handleBackendStatus(
    EnumBackendStatusVerificationCode? enumResponseVerificationCodeStatus,
  ) {
    _customErrorFromBackend = null;
    switch (enumResponseVerificationCodeStatus) {
      case EnumBackendStatusVerificationCode.invalidCode:
      case EnumBackendStatusVerificationCode.invalidRequestBody:
      case EnumBackendStatusVerificationCode.invalidParameters:
        _customErrorFromBackend = 'Неверный код';

      case EnumBackendStatusVerificationCode.tooManyAttempts:
        _customErrorFromBackend = 'Слишком много попыток, попробуйте позже';
      case EnumBackendStatusVerificationCode.validationFailed:
        _customErrorFromBackend =
            'Неправильный формат, пожалуйста введите 4 цифры';

      case EnumBackendStatusVerificationCode.accessTokenGenerationFailed:
      case EnumBackendStatusVerificationCode.refreshTokenGenerationFailed:
      case EnumBackendStatusVerificationCode.refreshTokenSavingFailed:
      case EnumBackendStatusVerificationCode.updateVerificationStatusFailed:
      case EnumBackendStatusVerificationCode.userNotFound:
        _customErrorFromBackend = 'Неизвестная ошибка';
      case EnumBackendStatusVerificationCode.verificationSuccessful:
      case EnumBackendStatusVerificationCode.emailVerifiedPasswordNotSet:
        _navigateAfterBuild(PasswordCreateScreen.name);
      case EnumBackendStatusVerificationCode.emailAndPasswordVerified:
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
