import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

/// {@template keyboard_auto_scroll_widget}
/// KeyboardAutoScrollWidget widget
/// {@endtemplate}
class KeyboardAutoScrollWidget extends StatefulWidget {
  const KeyboardAutoScrollWidget({
    required this.child,
    required this.scrollController,
    super.key,
  });
  final Widget child;
  final ScrollController scrollController;

  @override
  State<KeyboardAutoScrollWidget> createState() =>
      _KeyboardAutoScrollWidgetState();
}

/// State for widget KeyboardAutoScrollWidget
class _KeyboardAutoScrollWidgetState extends State<KeyboardAutoScrollWidget> {
  late KeyboardVisibilityController _keyboardVisibilityController;

  @override
  void initState() {
    super.initState();
    _keyboardVisibilityController = KeyboardVisibilityController();
    _keyboardVisibilityController.onChange.listen(handleKeyboardVisibility);
  }

  // ignore: avoid_positional_boolean_parameters
  void handleKeyboardVisibility(bool isKeyboardVisible) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (widget.scrollController.hasClients) {
        final targetScrollPosition = isKeyboardVisible
            ? widget.scrollController.position.maxScrollExtent
            : 0.0;

        widget.scrollController.animateTo(
          targetScrollPosition,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }

  @override
  void dispose() {
    super.dispose();
  }
}
