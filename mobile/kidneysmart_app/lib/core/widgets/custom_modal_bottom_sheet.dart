import 'package:flutter/material.dart';
import 'package:kidneysmart/core/constants/app_color.dart';

void showCustomModalBottomSheet({
  required BuildContext context,
  required Widget content,
  Color? barrierColor,
}) {
  showModalBottomSheet<void>(
    barrierColor: barrierColor ?? AppColors.mainBlack.withOpacity(0.8),
    context: context,
    builder: (BuildContext bc) {
      return Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: content,
          ),
          Positioned(
            right: 10,
            top: 10,
            child: IconButton(
              icon: const Icon(
                Icons.close,
                color: AppColors.greyText,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      );
    },
  );
}
