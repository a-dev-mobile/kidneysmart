import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kidneysmart/core/constants/app_insets.dart';
import 'package:kidneysmart/core/enum/enum.dart';

import 'package:kidneysmart/core/widget/widget.dart';
import 'package:kidneysmart/features/drawer/views/app_drawer.dart';

class StepContainer extends StatefulWidget {
  /// {@macro btn_bottom}
  const StepContainer({
    required this.widgets,
    this.isShowBtnNextBack = true,
    this.enumValid = EnumValid.valid,
    super.key,
    this.backPressed,
    this.nextPressed,
    this.titleAppBar,
  });

  final List<Widget> widgets;
  final EnumValid enumValid;
  final void Function()? backPressed;
  final void Function()? nextPressed;
  final bool isShowBtnNextBack;
  final String? titleAppBar;
  @override
  State<StepContainer> createState() => _StepContainerState();
}

class _StepContainerState extends State<StepContainer> {
  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          drawer: const AppDrawer(),
          extendBodyBehindAppBar: true,
          extendBody: true,
          // resizeToAvoidBottomInset: false,
          appBar: AppMyAppBar(title: widget.titleAppBar),
          body: AnnotatedRegion<SystemUiOverlayStyle>(
            value: FlexColorScheme.themedSystemNavigationBar(context),
            child: Column(
              children: [
                Expanded(
                  child: PageBody(
                    child: Container(
                      padding: const EdgeInsets.all(AppInsets.l),
                      child: ListView(
                        children: widget.widgets,
                      ),
                    ),
                  ),
                ),
                if (widget.isShowBtnNextBack)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: BtnStepNextBack(
                      isValid: widget.enumValid
                          .maybeMapValue(orElse: false, valid: true),
                      backPressed: widget.backPressed,
                      nextPressed: widget.nextPressed,
                    ),
                  ),
              ],
            ),
          ),
        ),
      );
}
