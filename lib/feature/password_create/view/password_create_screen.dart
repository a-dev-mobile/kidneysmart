import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:kidneysmart/core/constants/app_text_styles.dart';
import 'package:kidneysmart/core/extension/gorouter_extension.dart';
import 'package:kidneysmart/core/widgets/app_load_widget.dart';
import 'package:kidneysmart/core/widgets/clean_focus.dart';
import 'package:kidneysmart/core/widgets/default_app_bar.dart';
import 'package:kidneysmart/core/widgets/keyboard_auto_scroll_widget.dart';
import 'package:kidneysmart/core/widgets/load_next_screen.dart';
import 'package:kidneysmart/feature/login/view/login_screen.dart';
import 'package:kidneysmart/feature/password_create/enum/enum_backend_status_password_create.dart';
import 'package:kidneysmart/feature/password_create/enum/enum_frontend_status_password_create.dart';
import 'package:kidneysmart/feature/password_create/view/widget/field_password.dart';

import 'package:kidneysmart/feature/splash/notifier/splash_notifier.dart';

import 'package:kidneysmart/feature/password_create/notifier/password_create_notifier.dart';
import 'package:kidneysmart/gen/assets.gen.dart';
import 'package:kidneysmart/navigation/app_router.dart';

class PasswordCreateScreen extends ConsumerWidget {
  const PasswordCreateScreen({super.key});

  static const path = '/PasswordCreateScreen';
  static const name = 'PasswordCreateScreen';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final status = ref.watch(
      passwordCreateNotifierProvider.select((it) => it.enumScreenStatus),
    );
    return ClearFocus(
      child: Scaffold(
        appBar: const CustomAppBar(title: 'Создать пароль'),
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
  final GlobalKey<FieldPasswordState> _passwordFieldKey = GlobalKey();
  final GlobalKey<FieldPasswordState> _confirmPasswordFieldKey = GlobalKey();
  String? _customErrorConfirmPasswordField;
  @override
  Widget build(BuildContext context) {
    final status = ref.watch(
      passwordCreateNotifierProvider.select((it) => it.enumFrontendStatus),
    );
    final state = ref.read(passwordCreateNotifierProvider);
    final notifier = ref.read(passwordCreateNotifierProvider.notifier);

    final sizeScreen = MediaQuery.of(context).size;
    _handleBackendStatus(state.response.enumBackendStatus);
    _handleFrontendStatus(state.enumFrontendStatus);
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
    PasswordCreateState state,
    PasswordCreateNotifier notifier,
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
        const Text(
          'Пожалуйста введите новый пароль',
        ),
        const SizedBox(height: 16),
        FieldPassword(
          key: _passwordFieldKey,
          onChanged: (val) {
            _customErrorConfirmPasswordField = null;
            notifier.savePassword(value: val);
          },
        ),
        FieldPassword(
          key: _confirmPasswordFieldKey,
          customError: _customErrorConfirmPasswordField,
          onChanged: (val) {
            _customErrorConfirmPasswordField = null;
            notifier.savePassword(value: val, isConfirmation: true);
          },
          isConfirmation: true,
        ),
        const SizedBox(height: 16),
        TextButton(
          onPressed: () {},
          child: const Text('Повторно отправить код'),
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  Widget _buildBottomButton(
    double widthScreen,
    BuildContext context,
    PasswordCreateNotifier notifier,
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

  Widget _continueButton(PasswordCreateNotifier notifier) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              final isPrimaryPasswordValid =
                  _passwordFieldKey.currentState?.validate() ?? false;
              final isConfirmPasswordValid =
                  _confirmPasswordFieldKey.currentState?.validate() ?? false;
              if (isPrimaryPasswordValid && isConfirmPasswordValid) {
                notifier.setPassword();
              }
            },
            child: const Text('Продолжить'),
          ),
        ),
      ],
    );
  }

  void _handleFrontendStatus(
    EnumFrontendStatusPasswordCreate? status,
  ) {
    switch (status) {
      case EnumFrontendStatusPasswordCreate.passwordMismatch:
        _customErrorConfirmPasswordField = 'Пароли не совпадают';
      case EnumFrontendStatusPasswordCreate.init:
      case EnumFrontendStatusPasswordCreate.load:
      case EnumFrontendStatusPasswordCreate.success:
      case null:
      case EnumFrontendStatusPasswordCreate.emailOrPasswordIsNull:
        // TODO: Handle this case.
    }
  }

  void _handleBackendStatus(
    EnumBackendStatusPasswordCreate? status,
  ) {
    switch (status) {
      case EnumBackendStatusPasswordCreate.invalidEmailFormat:
      case EnumBackendStatusPasswordCreate.invalidRequestBody:
      case EnumBackendStatusPasswordCreate.invalidParameters:
        _navigateAfterBuild(PasswordCreateScreen.name);
        _customErrorConfirmPasswordField = 'Неверный код';

      case null:
    }
  }

  void _navigateAfterBuild(String routeName) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      GoRouter.of(context).pushNamed(routeName);
    });
  }
}
