// turnGen
enum EnumStateCheckboxValue implements Comparable<EnumStateCheckboxValue> {
  checked('checked'),
  unchecked('unchecked'),
  indeterminate('indeterminate'),
  disabled('disabled'),
  error('error');

  const EnumStateCheckboxValue(this.value);
  final String value;

// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumStateCheckboxValue fromValue(
    String? value, {
    EnumStateCheckboxValue? fallback,
  }) {
    switch (value) {
      case 'checked':
        return checked;
      case 'unchecked':
        return unchecked;
      case 'indeterminate':
        return indeterminate;
      case 'disabled':
        return disabled;
      case 'error':
        return error;
      default:
        return fallback ??
            (throw ArgumentError.value(
              value,
              'value',
              'Value not found in EnumStateCheckboxValue',
            ));
    }
  }

  static EnumStateCheckboxValue? fromValueOrNull(
    String? value,
  ) {
    switch (value) {
      case 'checked':
        return checked;
      case 'unchecked':
        return unchecked;
      case 'indeterminate':
        return indeterminate;
      case 'disabled':
        return disabled;
      case 'error':
        return error;
      default:
        return null;
    }
  }

  T map<T>({
    required T Function() checked,
    required T Function() unchecked,
    required T Function() indeterminate,
    required T Function() disabled,
    required T Function() error,
  }) {
    switch (this) {
      case EnumStateCheckboxValue.checked:
        return checked();
      case EnumStateCheckboxValue.unchecked:
        return unchecked();
      case EnumStateCheckboxValue.indeterminate:
        return indeterminate();
      case EnumStateCheckboxValue.disabled:
        return disabled();
      case EnumStateCheckboxValue.error:
        return error();
    }
  }

  T mapValue<T>({
    required T checked,
    required T unchecked,
    required T indeterminate,
    required T disabled,
    required T error,
  }) {
    switch (this) {
      case EnumStateCheckboxValue.checked:
        return checked;
      case EnumStateCheckboxValue.unchecked:
        return unchecked;
      case EnumStateCheckboxValue.indeterminate:
        return indeterminate;
      case EnumStateCheckboxValue.disabled:
        return disabled;
      case EnumStateCheckboxValue.error:
        return error;
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function()? checked,
    T Function()? unchecked,
    T Function()? indeterminate,
    T Function()? disabled,
    T Function()? error,
  }) =>
      map<T>(
        checked: checked ?? orElse,
        unchecked: unchecked ?? orElse,
        indeterminate: indeterminate ?? orElse,
        disabled: disabled ?? orElse,
        error: error ?? orElse,
      );

  T maybeMapValue<T>({
    required T orElse,
    T? checked,
    T? unchecked,
    T? indeterminate,
    T? disabled,
    T? error,
  }) =>
      mapValue<T>(
        checked: checked ?? orElse,
        unchecked: unchecked ?? orElse,
        indeterminate: indeterminate ?? orElse,
        disabled: disabled ?? orElse,
        error: error ?? orElse,
      );

  T? maybeMapOrNull<T>({
    T Function()? checked,
    T Function()? unchecked,
    T Function()? indeterminate,
    T Function()? disabled,
    T Function()? error,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        checked: checked,
        unchecked: unchecked,
        indeterminate: indeterminate,
        disabled: disabled,
        error: error,
      );

  T? maybeMapOrNullValue<T>({
    T? checked,
    T? unchecked,
    T? indeterminate,
    T? disabled,
    T? error,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        checked: checked,
        unchecked: unchecked,
        indeterminate: indeterminate,
        disabled: disabled,
        error: error,
      );

  static List<String> getListValue() =>
      EnumStateCheckboxValue.values.map((e) => e.value).toList();

  @override
  int compareTo(EnumStateCheckboxValue other) => index.compareTo(other.index);
}

extension $EnumStateCheckboxValue on EnumStateCheckboxValue {
  bool get isChecked => this == EnumStateCheckboxValue.checked;
  bool get isUnchecked => this == EnumStateCheckboxValue.unchecked;
  bool get isIndeterminate => this == EnumStateCheckboxValue.indeterminate;
  bool get isDisabled => this == EnumStateCheckboxValue.disabled;
  bool get isError => this == EnumStateCheckboxValue.error;
}
