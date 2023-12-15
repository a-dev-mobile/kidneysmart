import 'package:flutter/material.dart';
import 'package:kidneysmart/core/service/overlay/overlay_manager.dart';


class OverlayManagerProvider extends InheritedWidget {
  const OverlayManagerProvider({
    required super.child,
    required this.manager,
    super.key,
  });
  final OverlayManager manager;

  static OverlayManager of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<OverlayManagerProvider>()!
        .manager;
  }

  @override
  bool updateShouldNotify(OverlayManagerProvider oldWidget) {
    return oldWidget.manager != manager;
  }
}
