import 'package:flutter/material.dart';

/// {@template field_email}
/// FieldEmail widget with email validation.
/// {@endtemplate}
class FieldEmail extends StatefulWidget {
  /// {@macro field_email}
  const FieldEmail({
    required this.onChanged,
    super.key,
    this.initialValue,
  });

  /// Initial value for the email field.
  final String? initialValue;

  /// Callback function that returns the entered text.
  final ValueChanged<String> onChanged;

  @override
  FieldEmailState createState() => FieldEmailState();
}

class FieldEmailState extends State<FieldEmail> {
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
    if (_formKey.currentState!.validate()) {
      return true;
    }
    return false;
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
            _formKey.currentState!.validate();
          }
        },
        decoration: const InputDecoration(
          labelText: 'Email',
          hintText: 'Enter your email',
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter an email';
          }
          if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
            return 'Please enter a valid email address';
          }
          return null;
        },
        keyboardType: TextInputType.emailAddress,
        autovalidateMode: _autovalidateMode,
      ),
    );
  }
}
