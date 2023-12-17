import 'package:flutter/material.dart';

class OverlayManager {
  OverlayManager(this.overlayState);
  final OverlayState overlayState;
  OverlayEntry? _currentOverlayEntry;

  void showOverlay(Widget widget) {
    _currentOverlayEntry = OverlayEntry(builder: (context) => widget);
    overlayState.insert(_currentOverlayEntry!);
  }

  void removeOverlay() {
    _currentOverlayEntry?.remove();
    _currentOverlayEntry = null;
  }
}
