import 'package:flutter/material.dart';
import 'package:kidneysmart/app/style/color/app_color.dart';
import 'package:kidneysmart/app/style/typography/app_text_styles.dart';
import 'package:kidneysmart/core/enum/enum_state_checkbox.dart';
import 'package:kidneysmart/core/widgets/checkbox/app_checkbox_title.dart';

class MainDocStandartCheckbox extends StatelessWidget {
  const MainDocStandartCheckbox({
    required this.onChanged,
    required this.leadingText,
    required this.actionText,
    required this.onActionPressed,
    required this.enumStateCheckboxValue,
    super.key,
  });

  final EnumStateCheckboxValue enumStateCheckboxValue;
  final void Function(EnumStateCheckboxValue) onChanged;

  final String leadingText;
  final String actionText;
  final VoidCallback onActionPressed;
  @override
  Widget build(BuildContext context) {
    return AppCheckboxTitle(
      stateValue: enumStateCheckboxValue,
      onChanged: onChanged,
      titleStyle: AppTextStyle.s14w400h18.copyWith(color: AppColors.mainBlack),
      text: leadingText,
      clickableSegments: [
        ClickableSegment(text: actionText, onClicked: onActionPressed),
      ],
    );
  }
}
/* 
RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: leadingText,
                  style: AppTextStyle.s14w400h18
                      .copyWith(color: AppColors.mainBlack),
                ),
                TextSpan(
                  text: ' $actionText',
                  style: AppTextStyle.s14w400h18.copyWith(
                    color: AppColors.greenMain,
                    decoration: TextDecoration.underline,
                  ),
                  recognizer: TapGestureRecognizer()..onTap = onActionPressed,
                ),
              ],
            ),
          )

 */
