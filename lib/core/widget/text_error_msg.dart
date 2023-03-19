import 'package:flutter/material.dart';

class ErrorMsg extends StatelessWidget {
  const ErrorMsg({
    required this.error,
    super.key,
  });
  final String? error;
  @override
  Widget build(BuildContext context) {
    if (error?.isEmpty ?? true) return const SizedBox.shrink();

    return Column(
      children: [
        const SizedBox(height: 6),
        Text(
          error!,
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(color: Theme.of(context).colorScheme.error),
        ),
      ],
    );
  }
}
