import 'package:flutter/material.dart';
import 'package:kidneysmart/core/enum/enum_state_checkbox.dart';

const IconData _checkedIcon = Icons.check_box;
const IconData _uncheckedIcon = Icons.check_box_outline_blank;
const IconData _indeterminateIcon = Icons.indeterminate_check_box;
const IconData _errorIcon = Icons.check_box_outline_blank;

class AppCheckbox extends StatelessWidget {
  const AppCheckbox({
    required this.stateValue,
    required this.onChanged,
    super.key,
  });

  final EnumStateCheckboxValue stateValue;
  final ValueChanged<EnumStateCheckboxValue>? onChanged;

  @override
  Widget build(BuildContext context) {
    IconData currentIcon;
    var currentOpacity = 1.0;
    var tapEnabled = true;

    switch (stateValue) {
      case EnumStateCheckboxValue.checked:
        currentIcon = _checkedIcon;
      case EnumStateCheckboxValue.unchecked:
        currentIcon = _uncheckedIcon;
      case EnumStateCheckboxValue.indeterminate:
        currentIcon = _indeterminateIcon;
      case EnumStateCheckboxValue.disabled:
        currentOpacity = 0.4;
        tapEnabled = false;
        currentIcon = _uncheckedIcon;
      case EnumStateCheckboxValue.error:
        currentIcon = _errorIcon;
    }

    return Opacity(
      opacity: currentOpacity,
      child: InkWell(
        onTap: tapEnabled && onChanged != null
            ? () => onChanged!(stateValue)
            : null,
        child: Icon(
          currentIcon,
          color: stateValue.isError
              ? Theme.of(context).colorScheme.error
              : Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }
}
