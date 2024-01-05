
enum EnumPaymentType implements Comparable<EnumPaymentType> {
  overduePayment('overduePayment'),
  nextPayment('nextPayment'),
  none('none');

  const EnumPaymentType(this.value);
  final String value;

// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumPaymentType fromValue(String? value, {EnumPaymentType? fallback,}) {
    switch (value) {
case 'overduePayment':
return overduePayment;
case 'nextPayment':
return nextPayment;
case 'none':
return none;
      default:
        return fallback ?? (throw ArgumentError.value(
          value, 'value', 'Value not found in EnumPaymentType',));
    }
  }

  static EnumPaymentType? fromValueOrNull(String? value,) {
    switch (value) {
case 'overduePayment':
return overduePayment;
case 'nextPayment':
return nextPayment;
case 'none':
return none;
      default:
        return null;
    }
  }


  T map<T>({
    required T Function() overduePayment,
    required T Function() nextPayment,
    required T Function() none,
  }) {
    switch (this) {
      case EnumPaymentType.overduePayment:
        return overduePayment();
      case EnumPaymentType.nextPayment:
        return nextPayment();
      case EnumPaymentType.none:
        return none();
    }
  }


  T mapValue<T>({
    required T overduePayment,
    required T nextPayment,
    required T none,
  }) {
    switch (this) {
      case EnumPaymentType.overduePayment:
        return overduePayment;
      case EnumPaymentType.nextPayment:
        return nextPayment;
      case EnumPaymentType.none:
        return none;
    }
  }


  T maybeMap<T>({
    required T Function() orElse,
    T Function()? overduePayment,
    T Function()? nextPayment,
    T Function()? none,
  }) =>
      map<T>(
      overduePayment: overduePayment ?? orElse,
      nextPayment: nextPayment ?? orElse,
      none: none ?? orElse,
      );


  T maybeMapValue<T>({
    required T orElse,
    T? overduePayment,
    T? nextPayment,
    T? none,
  }) =>
      mapValue<T>(
      overduePayment: overduePayment ?? orElse,
      nextPayment: nextPayment ?? orElse,
      none: none ?? orElse,
      );


  T? maybeMapOrNull<T>({
    T Function()? overduePayment,
    T Function()? nextPayment,
    T Function()? none,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        overduePayment: overduePayment,
        nextPayment: nextPayment,
        none: none,
      );


  T? maybeMapOrNullValue<T>({
    T? overduePayment,
    T? nextPayment,
    T? none,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        overduePayment: overduePayment,
        nextPayment: nextPayment,
        none: none,
      );


  static List<String> getListValue() => EnumPaymentType.values.map((e) => e.value).toList();


  @override
  int compareTo(EnumPaymentType other) => index.compareTo(other.index);

 


}
extension $EnumPaymentType on EnumPaymentType {
bool get isOverduePayment => this == EnumPaymentType.overduePayment;
bool get isNextPayment => this == EnumPaymentType.nextPayment;
bool get isNone => this == EnumPaymentType.none;
}

