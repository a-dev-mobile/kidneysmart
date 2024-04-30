import 'package:flutter/material.dart';
import 'package:kidneysmart/core/widgets/spinning_svg.dart';

/// Cupertino-styled rectangle button with rounded corners

class BasicButton extends StatelessWidget {
  const BasicButton({
    required this.onPressed,
    required this.text,
    super.key,
    this.isLoad = false,
    this.disabled = false,
    this.isTextBtn = false,
    this.isUnderlinedText = false,
    this.colorText,
    this.isMin = false,
    this.elevation = 0,
  });

  final void Function()? onPressed;
  final bool isLoad;
  final bool disabled;
  final bool isTextBtn;
  final bool isMin;
  final bool isUnderlinedText;
  final Color? colorText;
  final String text;
  final double? elevation;

  @override
  Widget build(BuildContext context) {
    final textStyle = isUnderlinedText
        ? TextStyle(decoration: TextDecoration.underline, color: colorText)
        : TextStyle(color: colorText);

    return AbsorbPointer(
      absorbing: isLoad,
      child: SizedBox(
        height: isMin ? null : 50,
        width: isMin ? null : double.infinity,
        child: isTextBtn
            ? TextButton(
                onPressed: isLoad
                    ? null
                    : disabled
                        ? null
                        : onPressed,
                style: isMin
                    ? TextButton.styleFrom(
                        minimumSize: Size.zero,
                        padding: EdgeInsets.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      )
                    : null,
                child: isLoad
                    ? const SpinningSvg()
                    : Text(
                        text,
                        style: textStyle,
                      ),
              )
            : ElevatedButton(
                style: ElevatedButton.styleFrom(elevation: elevation),
                onPressed: isLoad
                    ? () {}
                    : disabled
                        ? null
                        : onPressed,
                child: isLoad
                    ? const SpinningSvg()
                    : Text(
                        text,
                        style: textStyle,
                      ),
              ),
      ),
    );
  }
}
