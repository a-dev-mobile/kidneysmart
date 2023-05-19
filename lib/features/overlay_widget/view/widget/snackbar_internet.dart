import 'package:flutter/material.dart';
import 'package:kidneysmart/core/theme/app_text_style.dart';
import 'package:kidneysmart/core/utils/utils.dart';
import 'package:kidneysmart/localization/localization.dart';

class SnackbarInternet extends StatelessWidget {
  const SnackbarInternet({super.key, this.isVisible});
  final bool? isVisible;
  @override
  Widget build(BuildContext context) {
    final l = context.l10n;

    if (isVisible == null) return const SizedBox.shrink();

    return Visibility(
      visible: !isVisible!,
      child: Positioned(
        top: 0,
        child: Container(
          color: context.theme.colorScheme.error,
          width: context.widthPx,
          height: 50,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              l.no_internet,
              style: AppTextStyles.bodyLarge.copyWith(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
