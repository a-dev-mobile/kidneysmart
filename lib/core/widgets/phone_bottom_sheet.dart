import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:kidneysmart/core/valid/enum_valid.dart';
import 'package:kidneysmart/core/widgets/basic_button.dart';
import 'package:kidneysmart/core/widgets/field/common_field_phone.dart';
import 'package:kidneysmart/core/widgets/title_registration.dart';

class PhoneBottomSheet extends StatefulWidget {
  const PhoneBottomSheet({
    required this.enumValid,
    required this.value,
    required this.isLoadBtn,
    required this.onPressed,
    required this.error,
    required this.onChange,
    super.key,
  });
  final String value;
  final String error;
  final EnumValid enumValid;
  final bool isLoadBtn;
  final void Function()? onPressed;
  final void Function(String notFormatValue, String formatValue) onChange;

  @override
  State<PhoneBottomSheet> createState() => _PhoneBottomSheetState();
}

class _PhoneBottomSheetState extends State<PhoneBottomSheet> {
  late final TextEditingController _controller;
  late final MaskTextInputFormatter _maska;

  @override
  void initState() {
    super.initState();
    _maska = MaskTextInputFormatter(
      mask: '(###) ###-##-##',
      filter: {
        '#': RegExp('[0-9]'),
      },
    );
    if (widget.value.isEmpty) {
      _controller = TextEditingController();
    } else {
      _maska.formatEditUpdate(
        TextEditingValue.empty,
        TextEditingValue(text: widget.value),
      );
      _controller = TextEditingController(text: _maska.getMaskedText());
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
        top: 20,
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const TitleRegistration('Смена номера телефона'),
          const SizedBox(height: 20),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text('Введите новый номер телефона'),
          ),
          const SizedBox(height: 20),
          CommonFieldPhone(
            controller: _controller,
            maska: _maska,
            onChanged: (v) => widget.onChange(_maska.getUnmaskedText(), v),
            enumValid: widget.enumValid,
            error: widget.error,
          ),
          const SizedBox(height: 20),
          BasicButton(
            isLoad: widget.isLoadBtn,
            onPressed: widget.onPressed,
            text: 'Изменить',
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
