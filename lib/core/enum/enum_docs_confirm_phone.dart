// turnGen

enum EnumDocsConfirmPhone implements Comparable<EnumDocsConfirmPhone> {
  /// Я ознакомлен(а) и принимаю условия Соглашения об использовании ПЭП*
  agreementsPep(
    key: 'agreementsPep',
  ),

  /// Я ознакомлен(а) и согласен(-на) с положениями Согласий и обязательств заемщика*
  agreementsBorrower(
    key: 'agreementsBorrower',
  ),

  /// Я ознакомлен(а) и даю Согласие на обработку своих персональных данных*
  agreementsPersonalData(
    key: 'agreementsPersonalData',
  ),

  /// Я ознакомлен(а) и даю Согласие на получение кредитного отчета*
  agreementsCreditReport(
    key: 'agreementsCreditReport',
  ),

  /// Я ознакомлен(а) и согласен(-на) с Общие условия договора потребительского займа*
  agreementsLoanConsumer(
    key: 'agreementsLoanConsumer',
  ),

  /// Я ознакомлен(а) и согласен(-на) с Правила предоставления займа*
  agreementsLoanRules(
    key: 'agreementsLoanRules',
  );

  const EnumDocsConfirmPhone({required this.key});
  final String key;

// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumDocsConfirmPhone fromKey(
    String? key, {
    EnumDocsConfirmPhone? fallback,
  }) {
    switch (key) {
      case 'agreementsPep':
        return agreementsPep;
      case 'agreementsBorrower':
        return agreementsBorrower;
      case 'agreementsPersonalData':
        return agreementsPersonalData;
      case 'agreementsCreditReport':
        return agreementsCreditReport;
      case 'agreementsLoanConsumer':
        return agreementsLoanConsumer;
      case 'agreementsLoanRules':
        return agreementsLoanRules;
      default:
        return fallback ??
            (throw ArgumentError.value(
              key,
              'key',
              'Value not found in EnumDocsConfirmPhone',
            ));
    }
  }

  static EnumDocsConfirmPhone? fromKeyOrNull(
    String? key,
  ) {
    switch (key) {
      case 'agreementsPep':
        return agreementsPep;
      case 'agreementsBorrower':
        return agreementsBorrower;
      case 'agreementsPersonalData':
        return agreementsPersonalData;
      case 'agreementsCreditReport':
        return agreementsCreditReport;
      case 'agreementsLoanConsumer':
        return agreementsLoanConsumer;
      case 'agreementsLoanRules':
        return agreementsLoanRules;
      default:
        return null;
    }
  }

  T map<T>({
    required T Function() agreementsPep,
    required T Function() agreementsBorrower,
    required T Function() agreementsPersonalData,
    required T Function() agreementsCreditReport,
    required T Function() agreementsLoanConsumer,
    required T Function() agreementsLoanRules,
  }) {
    switch (this) {
      case EnumDocsConfirmPhone.agreementsPep:
        return agreementsPep();
      case EnumDocsConfirmPhone.agreementsBorrower:
        return agreementsBorrower();
      case EnumDocsConfirmPhone.agreementsPersonalData:
        return agreementsPersonalData();
      case EnumDocsConfirmPhone.agreementsCreditReport:
        return agreementsCreditReport();
      case EnumDocsConfirmPhone.agreementsLoanConsumer:
        return agreementsLoanConsumer();
      case EnumDocsConfirmPhone.agreementsLoanRules:
        return agreementsLoanRules();
    }
  }

  T mapValue<T>({
    required T agreementsPep,
    required T agreementsBorrower,
    required T agreementsPersonalData,
    required T agreementsCreditReport,
    required T agreementsLoanConsumer,
    required T agreementsLoanRules,
  }) {
    switch (this) {
      case EnumDocsConfirmPhone.agreementsPep:
        return agreementsPep;
      case EnumDocsConfirmPhone.agreementsBorrower:
        return agreementsBorrower;
      case EnumDocsConfirmPhone.agreementsPersonalData:
        return agreementsPersonalData;
      case EnumDocsConfirmPhone.agreementsCreditReport:
        return agreementsCreditReport;
      case EnumDocsConfirmPhone.agreementsLoanConsumer:
        return agreementsLoanConsumer;
      case EnumDocsConfirmPhone.agreementsLoanRules:
        return agreementsLoanRules;
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function()? agreementsPep,
    T Function()? agreementsBorrower,
    T Function()? agreementsPersonalData,
    T Function()? agreementsCreditReport,
    T Function()? agreementsLoanConsumer,
    T Function()? agreementsLoanRules,
  }) =>
      map<T>(
        agreementsPep: agreementsPep ?? orElse,
        agreementsBorrower: agreementsBorrower ?? orElse,
        agreementsPersonalData: agreementsPersonalData ?? orElse,
        agreementsCreditReport: agreementsCreditReport ?? orElse,
        agreementsLoanConsumer: agreementsLoanConsumer ?? orElse,
        agreementsLoanRules: agreementsLoanRules ?? orElse,
      );

  T maybeMapValue<T>({
    required T orElse,
    T? agreementsPep,
    T? agreementsBorrower,
    T? agreementsPersonalData,
    T? agreementsCreditReport,
    T? agreementsLoanConsumer,
    T? agreementsLoanRules,
  }) =>
      mapValue<T>(
        agreementsPep: agreementsPep ?? orElse,
        agreementsBorrower: agreementsBorrower ?? orElse,
        agreementsPersonalData: agreementsPersonalData ?? orElse,
        agreementsCreditReport: agreementsCreditReport ?? orElse,
        agreementsLoanConsumer: agreementsLoanConsumer ?? orElse,
        agreementsLoanRules: agreementsLoanRules ?? orElse,
      );

  T? maybeMapOrNull<T>({
    T Function()? agreementsPep,
    T Function()? agreementsBorrower,
    T Function()? agreementsPersonalData,
    T Function()? agreementsCreditReport,
    T Function()? agreementsLoanConsumer,
    T Function()? agreementsLoanRules,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        agreementsPep: agreementsPep,
        agreementsBorrower: agreementsBorrower,
        agreementsPersonalData: agreementsPersonalData,
        agreementsCreditReport: agreementsCreditReport,
        agreementsLoanConsumer: agreementsLoanConsumer,
        agreementsLoanRules: agreementsLoanRules,
      );

  T? maybeMapOrNullValue<T>({
    T? agreementsPep,
    T? agreementsBorrower,
    T? agreementsPersonalData,
    T? agreementsCreditReport,
    T? agreementsLoanConsumer,
    T? agreementsLoanRules,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        agreementsPep: agreementsPep,
        agreementsBorrower: agreementsBorrower,
        agreementsPersonalData: agreementsPersonalData,
        agreementsCreditReport: agreementsCreditReport,
        agreementsLoanConsumer: agreementsLoanConsumer,
        agreementsLoanRules: agreementsLoanRules,
      );

  static List<String> getListKey() =>
      EnumDocsConfirmPhone.values.map((e) => e.key).toList();

  @override
  int compareTo(EnumDocsConfirmPhone other) => index.compareTo(other.index);
}

extension $EnumDocsConfirmPhone on EnumDocsConfirmPhone {
  bool get isAgreementsPep => this == EnumDocsConfirmPhone.agreementsPep;
  bool get isAgreementsBorrower =>
      this == EnumDocsConfirmPhone.agreementsBorrower;
  bool get isAgreementsPersonalData =>
      this == EnumDocsConfirmPhone.agreementsPersonalData;
  bool get isAgreementsCreditReport =>
      this == EnumDocsConfirmPhone.agreementsCreditReport;
  bool get isAgreementsLoanConsumer =>
      this == EnumDocsConfirmPhone.agreementsLoanConsumer;
  bool get isAgreementsLoanRules =>
      this == EnumDocsConfirmPhone.agreementsLoanRules;
}
