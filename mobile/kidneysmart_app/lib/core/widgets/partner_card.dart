import 'package:flutter/material.dart';
import 'package:kidneysmart/core/constants/app_color.dart';
import 'package:kidneysmart/core/constants/app_text_styles.dart';

class PartnerCard extends StatelessWidget {
  const PartnerCard({
    required this.imageUrl,
    required this.title,
    required this.rate,
    required this.sum,
    required this.term,
    required this.onTap,
    super.key,
  });

  final String imageUrl;
  final String title;
  final String rate;
  final String sum;
  final String term;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final styleNameRow =
        AppTextStyle.s12w400h18.copyWith(color: AppColors.blueDisabled);
    final styleTextRow =
        AppTextStyle.s14w500h18.copyWith(color: AppColors.mainBlack);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: const BoxDecoration(
          color: AppColors.white,
          border: Border.fromBorderSide(
            BorderSide(color: AppColors.blueBorder),
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 40,
              child: Row(
                children: [
                  Image.network(
                    imageUrl,
                    width: 40,
                    height: 40,
                    frameBuilder: (
                      context,
                      child,
                      frame,
                      wasSynchronouslyLoaded,
                    ) =>
                        Container(
                      margin: const EdgeInsets.only(right: 5),
                      child: child,
                    ),
                    errorBuilder: (context, error, stackTrace) =>
                        const SizedBox.shrink(),
                  ),
                  Expanded(
                    child: Text(
                      title,
                      style: AppTextStyle.s14w600
                          .copyWith(color: AppColors.mainBlack),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Table(
              columnWidths: const {
                0: FlexColumnWidth(),
                1: FlexColumnWidth(3),
              },
              children: [
                if (rate.isNotEmpty)
                  TableRow(
                    children: [
                      Text(
                        'Ставка',
                        style: styleNameRow,
                      ),
                      Text(
                        rate,
                        style: styleTextRow,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                if (sum.isNotEmpty)
                  TableRow(
                    children: [
                      Text(
                        'Сумма',
                        style: styleNameRow,
                      ),
                      Text(
                        sum,
                        style: styleTextRow,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                if (term.isNotEmpty)
                  TableRow(
                    children: [
                      Text(
                        'Срок',
                        style: styleNameRow,
                      ),
                      Text(
                        term,
                        style: styleTextRow,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
              ],
            ),
            const SizedBox(height: 16),
            Container(
              width: double.infinity,
              height: 40,
              decoration: const BoxDecoration(
                color: AppColors.greenMain,
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: Center(
                child: Text(
                  'Получить деньги',
                  style:
                      AppTextStyle.s16w500h21.copyWith(color: AppColors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
