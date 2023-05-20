import 'package:flutter/material.dart';

class BtnStepNextBack extends StatelessWidget {
  /// {@macro btn_bottom}
  const BtnStepNextBack({
    required this.isValid,
    super.key,
    this.backPressed,
    this.nextPressed,
  });

  final void Function()? backPressed;
  final void Function()? nextPressed;
  final bool isValid;

  @override
  Widget build(BuildContext context) => Row(
        children: [
          Expanded(
            child: OutlinedButton(
              onPressed: backPressed,
              child: const Text('Назад'),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: ElevatedButton(
              onPressed: isValid ? nextPressed : null,
              child: const Text('Продолжить'),
            ),
          ),
        ],
      );
}
