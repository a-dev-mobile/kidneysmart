import 'package:flutter/material.dart';

extension TextEditingControllerExtension on TextEditingController {
  void updateText(String newText) {
    final currentSelection = selection;

    text = newText;

    if (currentSelection.start > text.length ||
        currentSelection.end > text.length) {
      selection = TextSelection.fromPosition(
        TextPosition(offset: text.length),
      );
    } else {
      selection = currentSelection;
    }
  }
}
