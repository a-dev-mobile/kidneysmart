import 'package:flutter/material.dart';

class CustomCircularProgressIndicator extends StatelessWidget {
  const CustomCircularProgressIndicator({
    super.key,
    this.strokeWidth = 4.0,
    this.color,
    this.value,
  });
  final double strokeWidth;
  final Color? color;
  final double? value;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        strokeWidth: strokeWidth,
        value: value,
        valueColor: AlwaysStoppedAnimation<Color>(color??Theme.of(context).colorScheme.primary),
      ),
    );
  }
}
