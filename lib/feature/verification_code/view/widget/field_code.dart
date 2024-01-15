import 'package:flutter/material.dart';

/// {@template field_code}
/// FieldCode widget for 4-digit code input with custom error messages.
/// {@endtemplate}
class FieldCode extends StatefulWidget {
  /// {@macro field_code}
  const FieldCode({
    required this.onChanged,
    super.key,
    this.initialValue,
    this.customError,
  });

  /// Initial value for the code field.
  final String? initialValue;

  /// Custom error message for validation.
  final String? customError;

  /// Callback function that returns the entered text.
  final ValueChanged<String> onChanged;

  @override
  FieldCodeState createState() => FieldCodeState();
}

class FieldCodeState extends State<FieldCode> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late TextEditingController _controller;
  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;
  String? _customError;
  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.initialValue);
    _customError = widget
        .customError; // Initialize _customError with the widget's custom error
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  void didUpdateWidget(covariant FieldCode oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.customError != oldWidget.customError) {
      setState(() {
        _customError = widget.customError;
      });
    }
  }
  bool validate() {
    setState(() {
      _autovalidateMode = AutovalidateMode.always;
    });
    return _formKey.currentState?.validate() ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: TextFormField(
        controller: _controller,
        onChanged: (value) {
          widget.onChanged(value);
          // Reset the custom error when the text changes
          if (_customError != null) {
            setState(() {
              _customError = null;
            });
          }
          if (_autovalidateMode == AutovalidateMode.always) {
            _formKey.currentState?.validate();
          }
        },
        textAlign: TextAlign.center,
        decoration: const InputDecoration(
          labelText: 'Код',
          hintText: 'Введите 4 цифры',
          errorMaxLines: 5,
           
        ),
        validator: (value) {
          // Check for custom error first
          if (_customError?.isNotEmpty ?? false) {
            return _customError;
          }
          // Standard validation for 4-digit code
          if (value == null || value.isEmpty) {
            return 'Введите код';
          }
          if (!RegExp(r'^\d{4}$').hasMatch(value)) {
            return 'Пожалуйста, введите 4-х значный код';
          }
          return null;
        },
        keyboardType: TextInputType.number,
        maxLength: 4,
        autovalidateMode: _autovalidateMode,
      ),
    );
  }
}
