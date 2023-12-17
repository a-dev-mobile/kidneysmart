import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:kidneysmart/app/style/typography/app_text_styles.dart';

import 'package:kidneysmart/gen/assets.gen.dart';

class NoInternetWidget extends StatelessWidget {
  const NoInternetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  return SvgPicture.asset(
                    AssetPaths.noInternetSvg,
                    width: constraints.maxWidth,
                    fit: BoxFit.cover, // using BoxFit.cover to scale the image
                  );
                },
              ),
              const SizedBox(height: 50),
              Text(
                'Нет подключения к интернету',
                style: AppTextStyle.s20w600h24.copyWith(
                  letterSpacing: -0.004,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Проверьте соединение',
                textAlign: TextAlign.center,
                style: AppTextStyle.s14w400h18,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
