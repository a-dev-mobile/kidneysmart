
// turnGen

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

enum EnumPaymentSystem implements Comparable<EnumPaymentSystem> {
  mir('2'),
  visa('4'),
  mastercard('5'),
  other('1');

  const EnumPaymentSystem(this.firstNumber);
  final String firstNumber;

// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumPaymentSystem fromFirstNumber(String? firstNumber, {EnumPaymentSystem? fallback,}) {
    switch (firstNumber) {
case '2':
return mir;
case '4':
return visa;
case '5':
return mastercard;
case '1':
return other;
      default:
        return fallback ?? (throw ArgumentError.value(
          firstNumber, 'firstNumber', 'Value not found in EnumPaymentSystem',));
    }
  }

  static EnumPaymentSystem? fromFirstNumberOrNull(String? firstNumber,) {
    switch (firstNumber) {
case '2':
return mir;
case '4':
return visa;
case '5':
return mastercard;
case '1':
return other;
      default:
        return null;
    }
  }


  T map<T>({
    required T Function() mir,
    required T Function() visa,
    required T Function() mastercard,
    required T Function() other,
  }) {
    switch (this) {
      case EnumPaymentSystem.mir:
        return mir();
      case EnumPaymentSystem.visa:
        return visa();
      case EnumPaymentSystem.mastercard:
        return mastercard();
      case EnumPaymentSystem.other:
        return other();
    }
  }


  T mapValue<T>({
    required T mir,
    required T visa,
    required T mastercard,
    required T other,
  }) {
    switch (this) {
      case EnumPaymentSystem.mir:
        return mir;
      case EnumPaymentSystem.visa:
        return visa;
      case EnumPaymentSystem.mastercard:
        return mastercard;
      case EnumPaymentSystem.other:
        return other;
    }
  }


  T maybeMap<T>({
    required T Function() orElse,
    T Function()? mir,
    T Function()? visa,
    T Function()? mastercard,
    T Function()? other,
  }) =>
      map<T>(
      mir: mir ?? orElse,
      visa: visa ?? orElse,
      mastercard: mastercard ?? orElse,
      other: other ?? orElse,
      );


  T maybeMapValue<T>({
    required T orElse,
    T? mir,
    T? visa,
    T? mastercard,
    T? other,
  }) =>
      mapValue<T>(
      mir: mir ?? orElse,
      visa: visa ?? orElse,
      mastercard: mastercard ?? orElse,
      other: other ?? orElse,
      );


  T? maybeMapOrNull<T>({
    T Function()? mir,
    T Function()? visa,
    T Function()? mastercard,
    T Function()? other,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        mir: mir,
        visa: visa,
        mastercard: mastercard,
        other: other,
      );


  T? maybeMapOrNullValue<T>({
    T? mir,
    T? visa,
    T? mastercard,
    T? other,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        mir: mir,
        visa: visa,
        mastercard: mastercard,
        other: other,
      );


  static List<String> getListFirstNumber() => EnumPaymentSystem.values.map((e) => e.firstNumber).toList();


  @override
  int compareTo(EnumPaymentSystem other) => index.compareTo(other.index);

 


}
extension $EnumPaymentSystem on EnumPaymentSystem {
bool get isMir => this == EnumPaymentSystem.mir;
bool get isVisa => this == EnumPaymentSystem.visa;
bool get isMastercard => this == EnumPaymentSystem.mastercard;
bool get isOther => this == EnumPaymentSystem.other;
}

