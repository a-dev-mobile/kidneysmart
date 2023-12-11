import 'package:flutter/material.dart';
import 'package:kidneysmart/app/style/color/app_color.dart';
import 'package:kidneysmart/app/style/typography/app_text_styles.dart';
import 'package:kidneysmart/core/widgets/field/common_btn_photo.dart';

import 'package:kidneysmart/gen/assets.gen.dart';

class ItemLoadPhotoCard extends StatelessWidget {
  const ItemLoadPhotoCard({
    required this.isShowDeleteButton,
    required this.cardNumber,
    super.key,
    this.onLoad,
    this.onCreate,
    this.image,
    this.onDelete,
  });
  final void Function()? onLoad;
  final void Function()? onCreate;
  final void Function()? onDelete;
  final Widget? image;
  final bool isShowDeleteButton;
  final String cardNumber;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        color: Color(0XffFEFEFE),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 76,
            height: 76,
            child: image ??
                Image.asset(
                  AssetPaths.fotoCardImage,
                ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Фото номера банковской карты $cardNumber',
                  style: AppTextStyle.s14w600h16,
                ),
                const SizedBox(height: 5),
                Text(
                  'Сфотографируйте банковскую карту, чтобы было видно номер карты',
                  style: AppTextStyle.s12w400h18.copyWith(
                    color: AppColors.greyGreyLightText,
                  ),
                ),
                CommonBtnPhoto(
                  onLoad: onLoad,
                  onDelete: onDelete,
                  isShowDeleteButton: isShowDeleteButton,
                  onCreate: onCreate,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
