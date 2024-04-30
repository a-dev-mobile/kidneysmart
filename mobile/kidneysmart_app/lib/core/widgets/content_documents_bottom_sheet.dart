import 'package:flutter/material.dart';

class ContentDocumentsBottomSheet extends StatelessWidget {
  const ContentDocumentsBottomSheet({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        border: Border.fromBorderSide(
          BorderSide(width: 0.5, color: Colors.grey),
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: child,
    );
  }
}
