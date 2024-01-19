import 'package:flutter/material.dart';

/// {@template field_code}
/// FieldCode widget for 6-digit password input with custom error messages.
/// {@endtemplate}
class FieldPassword extends StatefulWidget {
  /// {@macro field_code}
  const FieldPassword({
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
  FieldPasswordState createState() => FieldPasswordState();
}

class FieldPasswordState extends State<FieldPassword> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late TextEditingController _controller;
  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;
  String? _customError;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.initialValue);
    _customError = widget.customError;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant FieldPassword oldWidget) {
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
          labelText: 'Пароль',
          hintText: 'Введите 6 цифр',
          errorMaxLines: 5,
        ),
        validator: (value) {
          if (_customError?.isNotEmpty ?? false) {
            return _customError;
          }
          if (value == null || value.isEmpty) {
            return 'Введите пароль';
          }
          if (!RegExp(r'^\d{6}$').hasMatch(value)) {
            return 'Пожалуйста, введите 6-значный пароль';
          }
          return null;
        },
        keyboardType: TextInputType.number,
        maxLength: 6,
        autovalidateMode: _autovalidateMode,
      ),
    );
  }
}
