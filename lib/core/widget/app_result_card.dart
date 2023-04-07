import 'package:flutter/material.dart';

class AppResultCard extends StatelessWidget {
  const AppResultCard({
    required this.child,
    super.key,
    this.onPressedInfo,
    this.isHaveInfoBtn = false,
  });

  final Widget child;
  final void Function()? onPressedInfo;
  final bool isHaveInfoBtn;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Visibility(
          visible: isHaveInfoBtn,
          child: IconButton(
            icon:  Icon(Icons.info_outline,color: Theme.of(context).colorScheme.primary),
            onPressed: onPressedInfo,
          ),
        ),
        Card(
          elevation: 10,
          child: Padding(padding: const EdgeInsets.all(8), child: child),
        ),
      ],
    );
  }
}
