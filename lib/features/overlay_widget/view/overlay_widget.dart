import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:kidneysmart/features/overlay_widget/view/widget/no_internet_widget.dart';

class OverlayWidget extends StatefulWidget {
  const OverlayWidget({
    required this.child,
    required this.goRouterState,
    super.key,
  });
  final Widget child;
  final GoRouterState goRouterState;

  @override
  State<OverlayWidget> createState() => _OverlayWidgetState();
}

class _OverlayWidgetState extends State<OverlayWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            widget.child,
            const NoInternetWidget(),
          
          ],
        ),
      );
  }
}
