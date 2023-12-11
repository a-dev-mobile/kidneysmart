import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kidneysmart/app/style/typography/app_text_styles.dart';
import 'package:kidneysmart/gen/assets.gen.dart';

class InputDecorationWidgets {
  static Widget getSuffixField({required bool isSuccess}) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: SvgPicture.asset(
        isSuccess ? AssetPaths.doneSvg : AssetPaths.validErrorSvg,
      ),
    );
  }

  static Widget clearIconButton(void Function() onPressed) {
    return IconButton(
      icon: const Icon(Icons.clear),
      onPressed: onPressed,
    );
  }

  static Widget getPrefixPhoneField() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: const BoxDecoration(
            color: Color(0xffF5F5F5),
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          height: 33,
          child: const Align(child: Text('+7', style: AppTextStyle.s16w600h23)),
        ),
        const SizedBox(width: 5),
      ],
    );
  }
}
