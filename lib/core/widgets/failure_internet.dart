// ignore_for_file: use_build_context_synchronously

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:kidneysmart/api/api_client.dart';
import 'package:kidneysmart/app/style/color/app_color.dart';
import 'package:kidneysmart/app/style/typography/app_text_styles.dart';
import 'package:kidneysmart/core/enum/enum_project.dart';
import 'package:kidneysmart/core/storage/app_storage.dart';
import 'package:kidneysmart/core/widgets/basic_button.dart';
import 'package:kidneysmart/core/widgets/default_app_bar.dart';
import 'package:kidneysmart/feature/onboarding/vew/onboarding_page.dart';
import 'package:kidneysmart/gen/assets.gen.dart';
import 'package:kidneysmart/navigation/app_router.dart';
import 'package:url_launcher/url_launcher.dart';

class FailureInternet extends StatelessWidget {
  const FailureInternet({
    super.key,
  });

  static const path = '/FailureInternet';
  static const name = 'FailureInternet';

  @override
  Widget build(BuildContext context) {
    final _ = context.read<AppStorage>().setLastScreen(FailureInternet.name);
    return Scaffold(
      appBar: const DefaultAppBar(
        title: '',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(AssetPaths.tryAgainSvg),
              const SizedBox(height: 49),
              Text(
                'Ой! Похоже, что-то сломалось',
                style: AppTextStyle.s20w600h24
                    .copyWith(color: AppColors.mainBlack),
              ),
              const SizedBox(height: 20),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Если активен VPN выключите его и попробуйте еще раз',
                  style: AppTextStyle.s14w400h16,
                ),
              ),
              const SizedBox(height: 32),
              BasicButton(
                onPressed: () {
                  context.read<AppRouter>().toAutoRouter(
                        storage: context.read(),
                        client: context.read(),
                      );
                },
                text: 'Обновить',
              ),
              const SizedBox(height: 10),
              BasicButton(
                isTextBtn: true,
                text: 'Перейти на сайт',
                onPressed: () => launchUrl(
                  Uri.parse(
                    EnumProject.prod_ND.url,
                  ),
                  mode: LaunchMode.externalApplication,
                ),
              ),
              const SizedBox(height: 10),
              BasicButton(
                isTextBtn: true,
                onPressed: () async {
                  final storage = context.read<AppStorage>();
                  final client = context.read<ApiClient>();
                  final appId = await storage.getAppId();
                  await storage.clearAll();
                  await storage.setAppId(appId);
        
                  context.goNamed(OnBoardingPage.name);
                },
                text: 'Перезагрузить приложение',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
