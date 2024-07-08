// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';

import 'package:kidneysmart/core/constants/app_color.dart';
import 'package:kidneysmart/core/constants/app_text_styles.dart';
import 'package:kidneysmart/core/widgets/basic_button.dart';
import 'package:kidneysmart/core/widgets/default_app_bar.dart';

class AppErrorWidget extends StatelessWidget {
  const AppErrorWidget({
    super.key,
  });

  static const path = '/AppErrorWidget ';
  static const name = 'AppErrorWidget ';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
                  // context.read<AppRouter>().toAutoRouter(
                  // storage: context.read(),
                  // client: context.read(),
                  // );
                },
                text: 'Обновить',
              ),
              const SizedBox(height: 10),
              const SizedBox(height: 10),
              BasicButton(
                isTextBtn: true,
                onPressed: () async {
                  // final storage = context.read<LocalStorage>();
                  // final client = context.read<ApiClient>();
                  // final appId = await storage.getAppId();
                  //  storage.clearAll();
                  // await storage.setAppId(appId);
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
