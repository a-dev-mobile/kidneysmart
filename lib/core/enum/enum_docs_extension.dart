// turnGen

enum EnumDocsExtension implements Comparable<EnumDocsExtension> {
  /// Согласен с правилами предоставления займов*
  agreementRule('agreementRule'),

  /// 'Согласен застраховаться в АО "D2 Страхование" ', ),
  collectiveInsurance('collectiveInsurance'),

  /// Увеличить срок страхования жизни и здоровья до 3х месяцев
  insuranceProlongation('insuranceProlongation'),

  /// Будь в курсе!
  stayInTouch('stayInTouch');

  const EnumDocsExtension(this.value);
  final String value;

// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumDocsExtension fromValue(
    String? value, {
    EnumDocsExtension? fallback,
  }) {
    switch (value) {
      case 'agreementRule':
        return agreementRule;
      case 'collectiveInsurance':
        return collectiveInsurance;
      case 'insuranceProlongation':
        return insuranceProlongation;
      case 'stayInTouch':
        return stayInTouch;
      default:
        return fallback ??
            (throw ArgumentError.value(
              value,
              'value',
              'Value not found in EnumDocsExtension',
            ));
    }
  }

  static EnumDocsExtension? fromValueOrNull(
    String? value,
  ) {
    switch (value) {
      case 'agreementRule':
        return agreementRule;
      case 'collectiveInsurance':
        return collectiveInsurance;
      case 'insuranceProlongation':
        return insuranceProlongation;
      case 'stayInTouch':
        return stayInTouch;
      default:
        return null;
    }
  }

  T map<T>({
    required T Function() agreementRule,
    required T Function() collectiveInsurance,
    required T Function() insuranceProlongation,
    required T Function() stayInTouch,
  }) {
    switch (this) {
      case EnumDocsExtension.agreementRule:
        return agreementRule();
      case EnumDocsExtension.collectiveInsurance:
        return collectiveInsurance();
      case EnumDocsExtension.insuranceProlongation:
        return insuranceProlongation();
      case EnumDocsExtension.stayInTouch:
        return stayInTouch();
    }
  }

  T mapValue<T>({
    required T agreementRule,
    required T collectiveInsurance,
    required T insuranceProlongation,
    required T stayInTouch,
  }) {
    switch (this) {
      case EnumDocsExtension.agreementRule:
        return agreementRule;
      case EnumDocsExtension.collectiveInsurance:
        return collectiveInsurance;
      case EnumDocsExtension.insuranceProlongation:
        return insuranceProlongation;
      case EnumDocsExtension.stayInTouch:
        return stayInTouch;
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function()? agreementRule,
    T Function()? collectiveInsurance,
    T Function()? insuranceProlongation,
    T Function()? stayInTouch,
  }) =>
      map<T>(
        agreementRule: agreementRule ?? orElse,
        collectiveInsurance: collectiveInsurance ?? orElse,
        insuranceProlongation: insuranceProlongation ?? orElse,
        stayInTouch: stayInTouch ?? orElse,
      );

  T maybeMapValue<T>({
    required T orElse,
    T? agreementRule,
    T? collectiveInsurance,
    T? insuranceProlongation,
    T? stayInTouch,
  }) =>
      mapValue<T>(
        agreementRule: agreementRule ?? orElse,
        collectiveInsurance: collectiveInsurance ?? orElse,
        insuranceProlongation: insuranceProlongation ?? orElse,
        stayInTouch: stayInTouch ?? orElse,
      );

  T? maybeMapOrNull<T>({
    T Function()? agreementRule,
    T Function()? collectiveInsurance,
    T Function()? insuranceProlongation,
    T Function()? stayInTouch,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        agreementRule: agreementRule,
        collectiveInsurance: collectiveInsurance,
        insuranceProlongation: insuranceProlongation,
        stayInTouch: stayInTouch,
      );

  T? maybeMapOrNullValue<T>({
    T? agreementRule,
    T? collectiveInsurance,
    T? insuranceProlongation,
    T? stayInTouch,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        agreementRule: agreementRule,
        collectiveInsurance: collectiveInsurance,
        insuranceProlongation: insuranceProlongation,
        stayInTouch: stayInTouch,
      );

  static List<String> getListValue() =>
      EnumDocsExtension.values.map((e) => e.value).toList();

  @override
  int compareTo(EnumDocsExtension other) => index.compareTo(other.index);
}

extension $EnumDocsExtension on EnumDocsExtension {
  bool get isAgreementRule => this == EnumDocsExtension.agreementRule;
  bool get isCollectiveInsurance =>
      this == EnumDocsExtension.collectiveInsurance;
  bool get isInsuranceProlongation =>
      this == EnumDocsExtension.insuranceProlongation;
  bool get isStayInTouch => this == EnumDocsExtension.stayInTouch;
}
