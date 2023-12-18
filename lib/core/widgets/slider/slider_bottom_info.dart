import 'package:flutter/material.dart';
import 'package:kidneysmart/core/constants/app_color.dart';
import 'package:kidneysmart/core/constants/app_text_styles.dart';

class SliderBottomInfo extends StatelessWidget {
  const SliderBottomInfo({
    required this.max,
    required this.min,
    super.key,
  });
  final String max;
  final String min;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          min,
          style: AppTextStyle.s12w400h11
              .copyWith(color: AppColors.greyGreyLightText),
        ),
        Text(
          max,
          style: AppTextStyle.s12w400h11
              .copyWith(color: AppColors.greyGreyLightText),
        ),
      ],
    );
  }
}
