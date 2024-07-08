import 'package:flutter/widgets.dart';

class ListenerKeyboard extends WidgetsBindingObserver {
  ListenerKeyboard({
    required this.context,
    required this.onKeyboardStateChanged,
  });

  // ignore: avoid_positional_boolean_parameters
  final void Function(bool isKeyboardOpen, double height)
      onKeyboardStateChanged;
  final BuildContext context;

  bool _isDisposed = false;

  void startListening() {
    if (!_isDisposed) {
      WidgetsBinding.instance.addObserver(this);
    }
  }

  void _stopListening() {
    if (!_isDisposed) {
      final _ = WidgetsBinding.instance.removeObserver(this);
    }
  }

  @override
  void didChangeMetrics() {
    super.didChangeMetrics();

    final view = View.of(context);
    final viewInsetsBottom = view.viewInsets.bottom;
    final isKeyboardOpen = viewInsetsBottom != 0;

    onKeyboardStateChanged(
      isKeyboardOpen,
      viewInsetsBottom / view.devicePixelRatio,
    );
  }

  void dispose() {
    _stopListening();
    _isDisposed = true;
  }
}
