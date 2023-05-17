import 'package:flutter/widgets.dart';

class ListenerKeyboard extends WidgetsBindingObserver {
  ListenerKeyboard({
    required this.context,
    required this.onKeyboardStateChanged,
  });

  // ignore: avoid_positional_boolean_parameters
  final void Function(bool isKeyboardOpen) onKeyboardStateChanged;
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
    final isKeyboardOpen = View.of(context).viewInsets.bottom != 0;
    onKeyboardStateChanged(isKeyboardOpen);
  }

  void dispose() {
    _stopListening();
    _isDisposed = true;
  }
}
