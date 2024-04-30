import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:kidneysmart/core/constants/app_text_styles.dart';
import 'package:kidneysmart/core/utils/screen_scaller.dart';

enum IconProgress { done, progress, inactive }

extension _AssetsPatchProgressBarExtension on IconProgress {
  String get path {
    switch (this) {
      case IconProgress.done:
        return 'assets/svg/step_done.svg';
      case IconProgress.inactive:
        return 'assets/svg/step_inactive.svg';
      case IconProgress.progress:
        return 'assets/svg/step_progress.svg';
    }
  }
}

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    required this.progress,
    required this.icon1,
    required this.icon2,
    required this.icon3,
    required this.text,
    super.key,
  });

  final double progress;
  final String text;

  final IconProgress icon1;
  final IconProgress icon2;
  final IconProgress icon3;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    final w15 = ScreenScaler.getScaledWidth(context, 15);
    final h5 = ScreenScaler.getScaledHeight(context, 5);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: screenWidth,
              height: h5,
              color: const Color(0xffE8F3F1),
            ),
            Positioned(
              left: 0,
              child: Container(
                width: progress * screenWidth / 110,
                height: h5,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: Color(0xff00856E),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: SvgPicture.asset(
                icon1.path,
                width: w15,
                height: w15,
              ),
            ),
            Align(
              child: SvgPicture.asset(
                icon2.path,
                width: w15,
                height: w15,
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: SvgPicture.asset(
                icon3.path,
                width: ScreenScaler.getScaledWidth(context, 15),
                height: ScreenScaler.getScaledHeight(context, 15),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'Вероятность одобрения займа: $text%',
          style: AppTextStyle.s12w400h18.copyWith(
            color: const Color(0xff00856E),
          ),
        ),
      ],
    );
  }
}
