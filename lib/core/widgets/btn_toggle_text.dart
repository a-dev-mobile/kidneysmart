import 'package:flutter/material.dart';

class BtnToggleText extends StatelessWidget {
  const BtnToggleText({
    required this.widgetList,
    required this.isSelected,
    required this.onPressed,
    super.key,
    this.errorText,
  });
  final List<Widget> widgetList;

  final String? errorText;

  final List<bool> isSelected;
  final void Function(int)? onPressed;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        return Column(
          children: [
            ToggleButtons(
              // direction: Axis.vertical,
              constraints: BoxConstraints.expand(
                height: 40,
                width: (constraint.maxWidth / widgetList.length) - 3,
              ),
              isSelected: isSelected,
              onPressed: onPressed,
              children: widgetList,
            ),
            if (errorText?.trim().isNotEmpty ?? false) ...[
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
