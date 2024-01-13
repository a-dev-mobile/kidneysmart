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

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.initialValue);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
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
          if (_autovalidateMode == AutovalidateMode.always) {
            _formKey.currentState?.validate();
          }
        },
        decoration: const InputDecoration(
          labelText: 'Code',
          hintText: 'Enter your 4-digit code',
        ),
        validator: (value) {
          // Check for custom error first
          if ((widget.customError?.isNotEmpty ?? false) &&
              value == widget.initialValue) {
            return widget.customError;
          }
          // Standard validation for 4-digit code
          if (value == null || value.isEmpty) {
            return 'Please enter a code';
          }
          if (!RegExp(r'^\d{4}$').hasMatch(value)) {
            return 'Please enter a valid 4-digit code';
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
