import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:kidneysmart/app/style/color/app_color.dart';
import 'package:kidneysmart/app/style/typography/app_text_styles.dart';
import 'package:kidneysmart/core/storage/app_storage.dart';
import 'package:kidneysmart/core/utils/status_bar_nav_helper.dart';

import 'package:kidneysmart/core/widgets/basic_button.dart';
import 'package:kidneysmart/feature/first_step/set_pin/login_first/login_page.dart';
import 'package:kidneysmart/feature/onboarding/cubit/onboarding_cubit.dart';
import 'package:kidneysmart/feature/onboarding/vew/widget/onboarding_item_image.dart';
import 'package:kidneysmart/feature/splash/view/splash_page.dart';
import 'package:kidneysmart/l10n/l10n.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  static const path = '/onboarding';
  static const name = 'onboarding';

  @override
  Widget build(BuildContext context) {
    final _ = context.read<AppStorage>().setLastScreen(OnBoardingPage.name);
    return BlocProvider(
      create: (context) => OnboardingCubit(
        storage: context.read<AppStorage>(),
      ),
      child: const _OnBoardingView(),
    );
  }
}

class _OnBoardingView extends StatefulWidget {
  const _OnBoardingView();

  @override
  _OnBoardingViewState createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<_OnBoardingView> {
  final introKey = GlobalKey<IntroductionScreenState>();
  int _indexPage = 0;
  void _onIntroEnd() {
    // introKey.currentState?.animateScroll(3);
    context.read<OnboardingCubit>().complectOnboarding();
    GoRouter.of(context).goNamed(LoginPage.name);
  }

  void _nextPage(BuildContext context) {
    context.read<OnboardingCubit>().complectOnboarding();
    GoRouter.of(context).goNamed(LoginPage.name);
  }

  @override
  void initState() {
    super.initState();
    StatusBarNavHelpers.setDarkIconsStatusBar();
  }

  @override
  Widget build(BuildContext context) {
    final pageDecoration = PageDecoration(
      titleTextStyle: AppTextStyle.s20w600h24.copyWith(height: 1.25),
      bodyTextStyle: AppTextStyle.s20w600h24.copyWith(height: 1.25),
      bodyPadding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      imagePadding: EdgeInsets.zero,
    );
    const textStyleBlack = TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w600,
      color: Color(0xff191E1D),
    );

    const textStyleColor = TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w600,
      color: Color(0xff00856E),
    );
    const heightFont = 1.3;

    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) => GoRouter.of(context).goNamed(SplashPage.name),
      child: IntroductionScreen(
        key: introKey,

        onChange: (index) => setState(() => _indexPage = index),

        globalFooter: SizedBox(
          width: double.infinity,
          height: 80,
          child: _indexPage != 2
              ? Padding(
                  padding:
                      const EdgeInsets.only(right: 20, left: 20, bottom: 30),
                  child: BasicButton(
                    onPressed: _onIntroEnd,
                    text: 'Пропустить',
                    isTextBtn: true,
                    colorText: AppColors.greyText,
                    isUnderlinedText: true,
                  ),
                )
              : Padding(
                  padding:
                      const EdgeInsets.only(right: 20, left: 20, bottom: 30),
                  child: BasicButton(
                    onPressed: () => _nextPage(context),
                    text: context.l10n.continueTo,
                  ),
                ),
        ),
        pages: [
          PageViewModel(
            title: '',
            body: 'Получение займа\nдо 7 минут на карту',
            image: const OnboardingItemImage(
              assetName: 'assets/image/onb_1.png',
            ),
            decoration: pageDecoration,
          ),
          PageViewModel(
            bodyWidget: RichText(
              text: const TextSpan(
                style: TextStyle(height: heightFont),
                children: [
                  TextSpan(
                    text: 'Первый заём',
                    style: textStyleBlack,
                  ),
                  TextSpan(
                    text: ' бесплатно*',
                    style: textStyleColor,
                  ),
                ],
              ),
            ),
            title: '',
            image: const OnboardingItemImage(
              assetName: 'assets/image/onb_2.png',
            ),
            decoration: pageDecoration,
          ),
          PageViewModel(
            titleWidget: Image.asset(
              'assets/image/logo.png',
              width: 150,
            ),
            bodyWidget: Text(
              'Возможность перенести\nдату возврата займа',
              textAlign: TextAlign.center,
              style: AppTextStyle.s20w600h24.copyWith(height: 1.5),
            ),
            image: Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                'assets/image/onb_3.png',
                scale: 0.5,
              ),
            ),
            decoration: pageDecoration,
          ),
        ],

        onDone: _onIntroEnd,
        onSkip: _onIntroEnd, // You can override onSkip callback
        skipOrBackFlex: 0,
        showDoneButton: false,
        nextFlex: 0,
        showNextButton: false,

        done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
        curve: Curves.fastLinearToSlowEaseIn,
        controlsMargin: const EdgeInsets.all(16),
        controlsPadding: kIsWeb
            ? const EdgeInsets.all(12)
            : const EdgeInsets.fromLTRB(8, 4, 8, 4),
        dotsDecorator: const DotsDecorator(
          size: Size(10, 10),
          activeSize: Size(22, 10),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25)),
          ),
        ),
        dotsContainerDecorator: const ShapeDecoration(
          // color: Colors.black87,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
        ),
      ),
    );
  }
}
