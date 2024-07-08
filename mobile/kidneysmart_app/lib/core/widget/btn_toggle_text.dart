import 'package:flutter/material.dart';

class BtnToggleText extends StatelessWidget {
  const BtnToggleText({
    required this.textList,
    required this.isSelected,
    required this.onPressed,
    super.key,
    this.errorText = '',
    this.textStyle,
  });
  final List<String> textList;

  final String? errorText;
  final TextStyle? textStyle;

  final List<bool> isSelected;
  final void Function(int)? onPressed;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        return Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ToggleButtons(
              textStyle: textStyle,
              constraints: BoxConstraints.expand(
                height: 40,
                // number 3 = becouse if less - ovverflow
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
