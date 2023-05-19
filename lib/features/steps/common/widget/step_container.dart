import 'package:flutter/material.dart';
import 'package:kidneysmart/core/widget/universal/page_body.dart';
import 'package:kidneysmart/core/widget/widget.dart';
import 'package:kidneysmart/features/drawer/views/app_drawer.dart';

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
            drawer: const AppDrawer(),
            extendBodyBehindAppBar: true,
            extendBody: true,
            // resizeToAvoidBottomInset: false,
            appBar: const AppMyAppBar(),
            body: PageBody(
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
