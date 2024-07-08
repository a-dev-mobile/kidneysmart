// turnGen

enum EnumDocsConfirmLoan implements Comparable<EnumDocsConfirmLoan> {
  /// Я ознакомлен(а) с информацией*
  loanRepaymentCondition(
    key: 'loanRepaymentCondition',
  ),

  /// Я ознакомлен(а) и согласен(а) с Согласие на обработку персональных данных заемщика*
  agreementProcessingPersonalData(
    key: 'agreementProcessingPersonalData',
  ),

  /// Я ознакомлен(а) и согласен(а) с Согласие на получение кредитного отчета*
  agreementCreditReport(
    key: 'agreementCreditReport',
  ),

  /// Я ознакомлен(а) и считаю Заявку на получение займа подписанной со своей стороны*
  agreementService(
    key: 'agreementService',
  ),

  /// Я ознакомлен(а) и считаю Заявку на получение займа подписанной со своей стороны*
  agreementElectronicSignature(
    key: 'agreementElectronicSignature',
  ),

  /// Настоящим заемщик дает право Кредитору уступить...
  cessionAllowed(
    key: 'cessionAllowed',
  );

  const EnumDocsConfirmLoan({
    required this.key,
  });
  final String key;

// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumDocsConfirmLoan fromKey(
    String? key, {
    EnumDocsConfirmLoan? fallback,
  }) {
    switch (key) {
      case 'loanRepaymentCondition':
        return loanRepaymentCondition;
      case 'agreementProcessingPersonalData':
        return agreementProcessingPersonalData;
      case 'agreementCreditReport':
        return agreementCreditReport;
      case 'agreementService':
        return agreementService;
      case 'agreementElectronicSignature':
        return agreementElectronicSignature;
      case 'cessionAllowed':
        return cessionAllowed;
      default:
        return fallback ??
            (throw ArgumentError.value(
              key,
              'key',
              'Value not found in EnumDocsConfirmLoan',
            ));
    }
  }

  static EnumDocsConfirmLoan? fromKeyOrNull(
    String? key,
  ) {
    switch (key) {
      case 'loanRepaymentCondition':
        return loanRepaymentCondition;
      case 'agreementProcessingPersonalData':
        return agreementProcessingPersonalData;
      case 'agreementCreditReport':
        return agreementCreditReport;
      case 'agreementService':
        return agreementService;
      case 'agreementElectronicSignature':
        return agreementElectronicSignature;
      case 'cessionAllowed':
        return cessionAllowed;
      default:
        return null;
    }
  }

  T map<T>({
    required T Function() loanRepaymentCondition,
    required T Function() agreementProcessingPersonalData,
    required T Function() agreementCreditReport,
    required T Function() agreementService,
    required T Function() agreementElectronicSignature,
    required T Function() cessionAllowed,
  }) {
    switch (this) {
      case EnumDocsConfirmLoan.loanRepaymentCondition:
        return loanRepaymentCondition();
      case EnumDocsConfirmLoan.agreementProcessingPersonalData:
        return agreementProcessingPersonalData();
      case EnumDocsConfirmLoan.agreementCreditReport:
        return agreementCreditReport();
      case EnumDocsConfirmLoan.agreementService:
        return agreementService();
      case EnumDocsConfirmLoan.agreementElectronicSignature:
        return agreementElectronicSignature();
      case EnumDocsConfirmLoan.cessionAllowed:
        return cessionAllowed();
    }
  }

  T mapValue<T>({
    required T loanRepaymentCondition,
    required T agreementProcessingPersonalData,
    required T agreementCreditReport,
    required T agreementService,
    required T agreementElectronicSignature,
    required T cessionAllowed,
  }) {
    switch (this) {
      case EnumDocsConfirmLoan.loanRepaymentCondition:
        return loanRepaymentCondition;
      case EnumDocsConfirmLoan.agreementProcessingPersonalData:
        return agreementProcessingPersonalData;
      case EnumDocsConfirmLoan.agreementCreditReport:
        return agreementCreditReport;
      case EnumDocsConfirmLoan.agreementService:
        return agreementService;
      case EnumDocsConfirmLoan.agreementElectronicSignature:
        return agreementElectronicSignature;
      case EnumDocsConfirmLoan.cessionAllowed:
        return cessionAllowed;
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function()? loanRepaymentCondition,
    T Function()? agreementProcessingPersonalData,
    T Function()? agreementCreditReport,
    T Function()? agreementService,
    T Function()? agreementElectronicSignature,
    T Function()? cessionAllowed,
  }) =>
      map<T>(
        loanRepaymentCondition: loanRepaymentCondition ?? orElse,
        agreementProcessingPersonalData:
            agreementProcessingPersonalData ?? orElse,
        agreementCreditReport: agreementCreditReport ?? orElse,
        agreementService: agreementService ?? orElse,
        agreementElectronicSignature: agreementElectronicSignature ?? orElse,
        cessionAllowed: cessionAllowed ?? orElse,
      );

  T maybeMapValue<T>({
    required T orElse,
    T? loanRepaymentCondition,
    T? agreementProcessingPersonalData,
    T? agreementCreditReport,
    T? agreementService,
    T? agreementElectronicSignature,
    T? cessionAllowed,
  }) =>
      mapValue<T>(
        loanRepaymentCondition: loanRepaymentCondition ?? orElse,
        agreementProcessingPersonalData:
            agreementProcessingPersonalData ?? orElse,
        agreementCreditReport: agreementCreditReport ?? orElse,
        agreementService: agreementService ?? orElse,
        agreementElectronicSignature: agreementElectronicSignature ?? orElse,
        cessionAllowed: cessionAllowed ?? orElse,
      );

  T? maybeMapOrNull<T>({
    T Function()? loanRepaymentCondition,
    T Function()? agreementProcessingPersonalData,
    T Function()? agreementCreditReport,
    T Function()? agreementService,
    T Function()? agreementElectronicSignature,
    T Function()? cessionAllowed,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        loanRepaymentCondition: loanRepaymentCondition,
        agreementProcessingPersonalData: agreementProcessingPersonalData,
        agreementCreditReport: agreementCreditReport,
        agreementService: agreementService,
        agreementElectronicSignature: agreementElectronicSignature,
        cessionAllowed: cessionAllowed,
      );

  T? maybeMapOrNullValue<T>({
    T? loanRepaymentCondition,
    T? agreementProcessingPersonalData,
    T? agreementCreditReport,
    T? agreementService,
    T? agreementElectronicSignature,
    T? cessionAllowed,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        loanRepaymentCondition: loanRepaymentCondition,
        agreementProcessingPersonalData: agreementProcessingPersonalData,
        agreementCreditReport: agreementCreditReport,
        agreementService: agreementService,
        agreementElectronicSignature: agreementElectronicSignature,
        cessionAllowed: cessionAllowed,
      );

  static List<String> getListKey() =>
      EnumDocsConfirmLoan.values.map((e) => e.key).toList();

  @override
  int compareTo(EnumDocsConfirmLoan other) => index.compareTo(other.index);
}

extension $EnumDocsConfirmLoan on EnumDocsConfirmLoan {
  bool get isLoanRepaymentCondition =>
      this == EnumDocsConfirmLoan.loanRepaymentCondition;
  bool get isAgreementProcessingPersonalData =>
      this == EnumDocsConfirmLoan.agreementProcessingPersonalData;
  bool get isAgreementCreditReport =>
      this == EnumDocsConfirmLoan.agreementCreditReport;
  bool get isAgreementService => this == EnumDocsConfirmLoan.agreementService;
  bool get isAgreementElectronicSignature =>
      this == EnumDocsConfirmLoan.agreementElectronicSignature;
  bool get isCessionAllowed => this == EnumDocsConfirmLoan.cessionAllowed;
}
