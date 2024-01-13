import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:kidneysmart/core/constants/app_text_styles.dart';
import 'package:kidneysmart/core/enum/enum_page_status.dart';
import 'package:kidneysmart/core/extension/gorouter_extension.dart';
import 'package:kidneysmart/core/widgets/app_load_widget.dart';
import 'package:kidneysmart/core/widgets/clean_focus.dart';
import 'package:kidneysmart/core/widgets/default_app_bar.dart';
import 'package:kidneysmart/core/widgets/keyboard_auto_scroll_widget.dart';
import 'package:kidneysmart/core/widgets/load_next_page.dart';
import 'package:kidneysmart/feature/login/view/login_page.dart';
import 'package:kidneysmart/feature/setting/view/setting_page.dart';
import 'package:kidneysmart/feature/splash/notifier/splash_notifier.dart';
import 'package:kidneysmart/feature/verification_code/enum/enum_response_verification_code.dart';

import 'package:kidneysmart/feature/verification_code/notifier/verification_code_notifier.dart';
import 'package:kidneysmart/feature/verification_code/view/widget/field_code.dart';
import 'package:kidneysmart/gen/assets.gen.dart';
import 'package:kidneysmart/navigation/app_router.dart';

class VerificationCodePage extends ConsumerWidget {
  const VerificationCodePage({super.key});

  static const path = '/VerificationCodePage';
  static const name = 'VerificationCodePage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final status = ref.watch(
        verificationCodeNotifierProvider.select((it) => it.enumScreenStatus));
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
  @override
  Widget build(BuildContext context) {
    final status = ref.watch(
        verificationCodeNotifierProvider.select((it) => it.enumResultStatus));
    final state = ref.read(verificationCodeNotifierProvider);
    final notifier = ref.read(verificationCodeNotifierProvider.notifier);

    final widthScreen = MediaQuery.of(context).size.width;
    final scrollController = ScrollController();
    return KeyboardAutoScrollWidget(
      scrollController: scrollController,
      child: LoadNextPage(
        isLoad: status.isLoad,
        child: Stack(
          children: [
            ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Пожалуйста введите 4 цифры, которые мы  отправили на почту a.dev.mobile.kz@gmail.com',
                      style: AppTextStyle.s30w400h40,
                    ),
                    SvgPicture.asset(AssetPaths.logoSvg),
                  ],
                ),
                const SizedBox(height: 16),
                SvgPicture.asset(
                  AssetPaths.remindYouSvg,
                  width: 200,
                ),
                FieldCode(
                  key: _codeFieldKey,
                  initialValue: state.email,
                  onChanged: notifier.saveCodeLocal,
                  customError: _getCustomErrorFromBackend(
                    state.response.enumResponseVerificationCodeStatus,
                  ),
                ),
                const SizedBox(height: 150),
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
                          ref
                              .read(appRouterProvider)
                              .router
                              .pushNamed<void>(LoginPage.name);
                        },
                        child: const Text('Проверить'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String? _getCustomErrorFromBackend(
    EnumResponseVerificationCodeStatus? enumResponseLoginStatus,
  ) {
    switch (enumResponseLoginStatus) {
      case EnumResponseVerificationCodeStatus.invalidRequestBody:
      case null:
    }
    return null;
  }
}
