import 'package:flutter/material.dart';
import 'package:kidneysmart/shared/widget/widget.dart';

class StepContainer extends StatefulWidget {
  /// {@macro btn_bottom}
  const StepContainer({
    required this.widgets,
    super.key,
    this.bottomPading = 16,
  });

  final List<Widget> widgets;
  final double bottomPading;

  @override
  State<StepContainer> createState() => _StepContainerState();
}

class _StepContainerState extends State<StepContainer> {
  @override
  Widget build(BuildContext context) => SafeArea(
        child: ClearFocus(
          child: Scaffold(
            // resizeToAvoidBottomInset: false,
            appBar: const AppMyAppBar(),
            body: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  right: 16,
                  left: 16,
                  bottom: widget.bottomPading,
                ),
                child: Column(
                  children: widget.widgets,
                ),
              ),
            ),
          ),
        ),
      );
}
