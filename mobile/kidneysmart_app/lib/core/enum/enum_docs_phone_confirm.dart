// turnGen

enum EnumDocsPhoneConfirm implements Comparable<EnumDocsPhoneConfirm> {
  /// 'Соглашением об использовании ПЭП'
  pep('pep'),

  /// 'Согласие и обязательств заемщика'
  consentBorrower('consentBorrower'),

  /// 'Согласие на обработку своих персональных данных'
  agreementProcessingPersonalData('agreementProcessingPersonalData'),

  /// 'Согласие на получение кредитного отчета'
  agreementCreditReport('agreementCreditReport'),

  /// 'общие условия договора'
  generalConditions('generalConditions'),

  /// правила на предоставление займа
  loanRules('loanRules');

  const EnumDocsPhoneConfirm(this.value);
  final String value;

// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumDocsPhoneConfirm fromValue(
    String? value, {
    EnumDocsPhoneConfirm? fallback,
  }) {
    switch (value) {
      case 'pep':
        return pep;
      case 'consentBorrower':
        return consentBorrower;
      case 'agreementProcessingPersonalData':
        return agreementProcessingPersonalData;
      case 'agreementCreditReport':
        return agreementCreditReport;
      case 'generalConditions':
        return generalConditions;
      case 'loanRules':
        return loanRules;
      default:
        return fallback ??
            (throw ArgumentError.value(
              value,
              'value',
              'Value not found in EnumDocsPhoneConfirm',
            ));
    }
  }

  static EnumDocsPhoneConfirm? fromValueOrNull(
    String? value,
  ) {
    switch (value) {
      case 'pep':
        return pep;
      case 'consentBorrower':
        return consentBorrower;
      case 'agreementProcessingPersonalData':
        return agreementProcessingPersonalData;
      case 'agreementCreditReport':
        return agreementCreditReport;
      case 'generalConditions':
        return generalConditions;
      case 'loanRules':
        return loanRules;
      default:
        return null;
    }
  }

  T map<T>({
    required T Function() pep,
    required T Function() consentBorrower,
    required T Function() agreementProcessingPersonalData,
    required T Function() agreementCreditReport,
    required T Function() generalConditions,
    required T Function() loanRules,
  }) {
    switch (this) {
      case EnumDocsPhoneConfirm.pep:
        return pep();
      case EnumDocsPhoneConfirm.consentBorrower:
        return consentBorrower();
      case EnumDocsPhoneConfirm.agreementProcessingPersonalData:
        return agreementProcessingPersonalData();
      case EnumDocsPhoneConfirm.agreementCreditReport:
        return agreementCreditReport();
      case EnumDocsPhoneConfirm.generalConditions:
        return generalConditions();
      case EnumDocsPhoneConfirm.loanRules:
        return loanRules();
    }
  }

  T mapValue<T>({
    required T pep,
    required T consentBorrower,
    required T agreementProcessingPersonalData,
    required T agreementCreditReport,
    required T generalConditions,
    required T loanRules,
  }) {
    switch (this) {
      case EnumDocsPhoneConfirm.pep:
        return pep;
      case EnumDocsPhoneConfirm.consentBorrower:
        return consentBorrower;
      case EnumDocsPhoneConfirm.agreementProcessingPersonalData:
        return agreementProcessingPersonalData;
      case EnumDocsPhoneConfirm.agreementCreditReport:
        return agreementCreditReport;
      case EnumDocsPhoneConfirm.generalConditions:
        return generalConditions;
      case EnumDocsPhoneConfirm.loanRules:
        return loanRules;
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function()? pep,
    T Function()? consentBorrower,
    T Function()? agreementProcessingPersonalData,
    T Function()? agreementCreditReport,
    T Function()? generalConditions,
    T Function()? loanRules,
  }) =>
      map<T>(
        pep: pep ?? orElse,
        consentBorrower: consentBorrower ?? orElse,
        agreementProcessingPersonalData:
            agreementProcessingPersonalData ?? orElse,
        agreementCreditReport: agreementCreditReport ?? orElse,
        generalConditions: generalConditions ?? orElse,
        loanRules: loanRules ?? orElse,
      );

  T maybeMapValue<T>({
    required T orElse,
    T? pep,
    T? consentBorrower,
    T? agreementProcessingPersonalData,
    T? agreementCreditReport,
    T? generalConditions,
    T? loanRules,
  }) =>
      mapValue<T>(
        pep: pep ?? orElse,
        consentBorrower: consentBorrower ?? orElse,
        agreementProcessingPersonalData:
            agreementProcessingPersonalData ?? orElse,
        agreementCreditReport: agreementCreditReport ?? orElse,
        generalConditions: generalConditions ?? orElse,
        loanRules: loanRules ?? orElse,
      );

  T? maybeMapOrNull<T>({
    T Function()? pep,
    T Function()? consentBorrower,
    T Function()? agreementProcessingPersonalData,
    T Function()? agreementCreditReport,
    T Function()? generalConditions,
    T Function()? loanRules,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        pep: pep,
        consentBorrower: consentBorrower,
        agreementProcessingPersonalData: agreementProcessingPersonalData,
        agreementCreditReport: agreementCreditReport,
        generalConditions: generalConditions,
        loanRules: loanRules,
      );

  T? maybeMapOrNullValue<T>({
    T? pep,
    T? consentBorrower,
    T? agreementProcessingPersonalData,
    T? agreementCreditReport,
    T? generalConditions,
    T? loanRules,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        pep: pep,
        consentBorrower: consentBorrower,
        agreementProcessingPersonalData: agreementProcessingPersonalData,
        agreementCreditReport: agreementCreditReport,
        generalConditions: generalConditions,
        loanRules: loanRules,
      );

  static List<String> getListValue() =>
      EnumDocsPhoneConfirm.values.map((e) => e.value).toList();

  @override
  int compareTo(EnumDocsPhoneConfirm other) => index.compareTo(other.index);
}

extension $EnumDocsPhoneConfirm on EnumDocsPhoneConfirm {
  bool get isPep => this == EnumDocsPhoneConfirm.pep;
  bool get isConsentBorrower => this == EnumDocsPhoneConfirm.consentBorrower;
  bool get isAgreementProcessingPersonalData =>
      this == EnumDocsPhoneConfirm.agreementProcessingPersonalData;
  bool get isAgreementCreditReport =>
      this == EnumDocsPhoneConfirm.agreementCreditReport;
  bool get isGeneralConditions =>
      this == EnumDocsPhoneConfirm.generalConditions;
  bool get isLoanRules => this == EnumDocsPhoneConfirm.loanRules;
}
