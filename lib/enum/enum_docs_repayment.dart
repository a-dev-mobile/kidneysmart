// turnGen

enum EnumDocsRepayment implements Comparable<EnumDocsRepayment> {
  /// Согласен с правилами предоставления займов*
  agreementRule('agreementRule'),

  /// Согласен оформить услугу "Защита карты"
  cardProtection('cardProtection');

  const EnumDocsRepayment(this.value);
  final String value;

// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumDocsRepayment fromValue(
    String? value, {
    EnumDocsRepayment? fallback,
  }) {
    switch (value) {
      case 'agreementRule':
        return agreementRule;
      case 'cardProtection':
        return cardProtection;
      default:
        return fallback ??
            (throw ArgumentError.value(
              value,
              'value',
              'Value not found in EnumDocsRepayment',
            ));
    }
  }

  static EnumDocsRepayment? fromValueOrNull(
    String? value,
  ) {
    switch (value) {
      case 'agreementRule':
        return agreementRule;
      case 'cardProtection':
        return cardProtection;
      default:
        return null;
    }
  }

  T map<T>({
    required T Function() agreementRule,
    required T Function() cardProtection,
  }) {
    switch (this) {
      case EnumDocsRepayment.agreementRule:
        return agreementRule();
      case EnumDocsRepayment.cardProtection:
        return cardProtection();
    }
  }

  T mapValue<T>({
    required T agreementRule,
    required T cardProtection,
  }) {
    switch (this) {
      case EnumDocsRepayment.agreementRule:
        return agreementRule;
      case EnumDocsRepayment.cardProtection:
        return cardProtection;
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function()? agreementRule,
    T Function()? cardProtection,
  }) =>
      map<T>(
        agreementRule: agreementRule ?? orElse,
        cardProtection: cardProtection ?? orElse,
      );

  T maybeMapValue<T>({
    required T orElse,
    T? agreementRule,
    T? cardProtection,
  }) =>
      mapValue<T>(
        agreementRule: agreementRule ?? orElse,
        cardProtection: cardProtection ?? orElse,
      );

  T? maybeMapOrNull<T>({
    T Function()? agreementRule,
    T Function()? cardProtection,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        agreementRule: agreementRule,
        cardProtection: cardProtection,
      );

  T? maybeMapOrNullValue<T>({
    T? agreementRule,
    T? cardProtection,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        agreementRule: agreementRule,
        cardProtection: cardProtection,
      );

  static List<String> getListValue() =>
      EnumDocsRepayment.values.map((e) => e.value).toList();

  @override
  int compareTo(EnumDocsRepayment other) => index.compareTo(other.index);
}

extension $EnumDocsRepayment on EnumDocsRepayment {
  bool get isAgreementRule => this == EnumDocsRepayment.agreementRule;
  bool get isCardProtection => this == EnumDocsRepayment.cardProtection;
}
