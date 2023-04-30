import 'dart:async';

import 'package:flutter/material.dart';

import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:nutrition/shared/data/remote/dadata/dadata.dart';

class FieldName extends StatefulWidget {
  const FieldName({
    required this.onChangedName,
    required this.suggestionsCallback,
    required this.onChangedGender,
    super.key,
    this.initValue = '',
    this.errorText,
  });

  final String initValue;

  final String? errorText;
  final void Function(String value) onChangedName;
  final void Function(String value) onChangedGender;

  final FutureOr<Iterable<DataFio>> Function(String value) suggestionsCallback;
  @override
  State<FieldName> createState() => _FieldNameState();
}

class _FieldNameState extends State<FieldName> {
  late final TextEditingController controller;

  @override
  void initState() {
    controller = TextEditingController(text: widget.initValue);

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TypeAheadField<DataFio>(
      hideOnEmpty: true,
      hideOnLoading: true,
      hideOnError: true,
      suggestionsBoxDecoration: const SuggestionsBoxDecoration(
        constraints: BoxConstraints(maxHeight: 100),
      ),
      textFieldConfiguration: TextFieldConfiguration(
        autofocus: true,
        decoration: InputDecoration(
          labelText: 'Введите имя',
          errorMaxLines: 3,
          errorText: widget.errorText,
        ),
        controller: controller,
        onChanged: widget.onChangedName,
        keyboardType: TextInputType.name,
        minLines: 1,
        maxLines: 5,
        textInputAction: TextInputAction.done,
      ),
      suggestionsCallback: (pattern) async =>
          widget.suggestionsCallback(pattern),
      itemBuilder: (context, DataFio suggestion) {
        return ListTile(
          visualDensity: const VisualDensity(vertical: -4),
          title: Text(suggestion.name),
        );
      },

      // ignore: prefer-extracting-callbacks
      onSuggestionSelected: (DataFio suggestion) {
        widget.onChangedName(suggestion.name);
        widget.onChangedGender(suggestion.gender);
        controller.text = suggestion.name;
      },
    );
  }
}
