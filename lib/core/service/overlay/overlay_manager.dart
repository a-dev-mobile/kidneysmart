import 'package:flutter/material.dart';

class OverlayManager {
  OverlayManager(this.overlayState);
  final OverlayState overlayState;

  void showOverlay(Widget widget) {
    final overlayEntry = OverlayEntry(builder: (context) => widget);
    overlayState.insert(overlayEntry);

    // Метод для удаления оверлея
    Future.delayed(const Duration(seconds: 5), overlayEntry.remove);
  }
}
