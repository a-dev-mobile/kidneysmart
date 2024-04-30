import 'package:flutter/material.dart';
import 'package:kidneysmart/core/constants/app_text_styles.dart';

class SelectAllCheckboxListTile extends StatelessWidget {
  const SelectAllCheckboxListTile({
    required this.value,
    required this.onChanged,
    required this.title,
    super.key,
  });
  final bool value;
  final ValueChanged<bool?>? onChanged;

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      transform: Matrix4.translationValues(-10, 0, 0),
      child: ListTileTheme(
        horizontalTitleGap: 0,
        minVerticalPadding: 0,
        minLeadingWidth: 0,
        child: CheckboxListTile(
          contentPadding: EdgeInsets.zero,
          value: value,
          controlAffinity: ListTileControlAffinity.leading,
          onChanged: onChanged,
          title: Text(
            title,
            style: AppTextStyle.s14w400h18.copyWith(
              color: const Color(0xff1A231E),
            ),
          ),
        ),
      ),
    );
  }
}
