import 'package:flutter/material.dart';
import 'package:kidneysmart/core/constants/app_color.dart';
import 'package:kidneysmart/core/constants/app_text_styles.dart';
import 'package:kidneysmart/core/widgets/basic_button.dart';

class FailureTryAgain extends StatelessWidget {
  const FailureTryAgain({
    required this.onUpdate,
    super.key,
  });

  final VoidCallback onUpdate;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 49),
              Text(
                'Ой! Похоже, что-то сломалось. Попробуйте еще раз',
                style: AppTextStyle.s20w600h24
                    .copyWith(color: AppColors.mainBlack),
              ),
              const SizedBox(height: 32),
              BasicButton(
                onPressed: onUpdate,
                text: 'Обновить',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
