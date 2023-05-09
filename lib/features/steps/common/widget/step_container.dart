import 'package:flutter/material.dart';
import 'package:nutrition/shared/widget/widget.dart';

class StepContainer extends StatelessWidget {
  /// {@macro btn_bottom}
  const StepContainer({
    required this.widgets,
    super.key,
  });

  final List<Widget> widgets;

  @override
  Widget build(BuildContext context) => SafeArea(
        child: ClearFocus(
          child: Scaffold(
            appBar: const AppMyAppBar(),
            body: Padding(
              padding: const EdgeInsets.only(right: 16, left: 16, bottom: 8),
              child: Column(
                children: widgets,
              ),
            ),
          ),
        ),
      );
}
