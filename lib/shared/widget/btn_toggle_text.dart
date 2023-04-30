import 'package:flutter/material.dart';
import 'package:nutrition/shared/widget/widget.dart';

class BtnToggleText extends StatelessWidget {
  const BtnToggleText({
    required this.textList,
    required this.isSelected,
    required this.onPressed,
    super.key,
    this.title = '',
    this.errorText = '',
    this.onPressedInfo,
    this.textStyle,
  });
  final List<String> textList;
  final String title;
  final String? errorText;
  final TextStyle? textStyle;

  final List<bool> isSelected;
  final void Function(int)? onPressed;
  final void Function()? onPressedInfo;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        return Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (title.isNotEmpty)
                  Expanded(
                    child: TitleSub(
                      text: title,
                    ),
                  ),
                if (onPressedInfo != null)
                  IconButton(
                    onPressed: onPressedInfo,
                    icon: Icon(
                      Icons.info_outline,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
              ],
            ),
            if (onPressedInfo == null) const SizedBox(height: 10),
            ToggleButtons(
              textStyle: textStyle,
              constraints: BoxConstraints.expand(
                // number 3 = becouse if less - ovverflow
                height: 40,

                width: (constraint.maxWidth / textList.length) - 3,
              ),
              isSelected: isSelected,
              onPressed: onPressed,
              children: [
                for (var i in textList) Text(i),
              ],
            ),
            if (errorText?.isNotEmpty ?? false) ...[
              const SizedBox(height: 6),
              Align(
                child: Text(
                  errorText!,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: Theme.of(context).colorScheme.error),
                ),
              ),
            ],
          ],
        );
      },
    );
  }
}
