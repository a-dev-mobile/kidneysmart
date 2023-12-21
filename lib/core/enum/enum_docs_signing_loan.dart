// turnGen

enum EnumDocsSigning implements Comparable<EnumDocsSigning> {
  /// 'Соглашением об использовании простой электронной подписи'
  agreementUseSimpleElectronicSign('agreementUseSimpleElectronicSign'),

  /// 'Согласие на обработку своих персональных данных'
  agreementProcessingPersonalData('agreementProcessingPersonalData'),

  /// 'Согласие на получение кредитного отчета'
  agreementCreditReport('agreementCreditReport'),

  /// Заявкой на получение займа / IL
  agreementService('agreementService'),

  /// Индивидуальными условиями PDL / IL
  agreementContractLongPeriod('agreementContractLongPeriod'),

  /// Согласие на получение рекламы
  advertising('advertising'),

  /// 'Согласен застраховаться в АО "D2 Страхование" ', ),
  collectiveInsurance('collectiveInsurance'),

  /// Увеличить срок страхования жизни и здоровья до 3х месяцев
  insuranceProlongation('insuranceProlongation'),

  /// Будь в курсе!
  stayInTouch('stayInTouch'),

  /// Автосписание
  autoCharge('autoCharge');

  const EnumDocsSigning(this.value);
  final String value;

// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumDocsSigning fromValue(
    String? value, {
    EnumDocsSigning? fallback,
  }) {
    switch (value) {
      case 'agreementUseSimpleElectronicSign':
        return agreementUseSimpleElectronicSign;
      case 'agreementProcessingPersonalData':
        return agreementProcessingPersonalData;
      case 'agreementCreditReport':
        return agreementCreditReport;
      case 'agreementService':
        return agreementService;
      case 'agreementContractLongPeriod':
        return agreementContractLongPeriod;
      case 'advertising':
        return advertising;
      case 'collectiveInsurance':
        return collectiveInsurance;
      case 'insuranceProlongation':
        return insuranceProlongation;
      case 'stayInTouch':
        return stayInTouch;
      case 'autoCharge':
        return autoCharge;
      default:
        return fallback ??
            (throw ArgumentError.value(
              value,
              'value',
              'Value not found in EnumDocsSigning',
            ));
    }
  }

  static EnumDocsSigning? fromValueOrNull(
    String? value,
  ) {
    switch (value) {
      case 'agreementUseSimpleElectronicSign':
        return agreementUseSimpleElectronicSign;
      case 'agreementProcessingPersonalData':
        return agreementProcessingPersonalData;
      case 'agreementCreditReport':
        return agreementCreditReport;
      case 'agreementService':
        return agreementService;
      case 'agreementContractLongPeriod':
        return agreementContractLongPeriod;
      case 'advertising':
        return advertising;
      case 'collectiveInsurance':
        return collectiveInsurance;
      case 'insuranceProlongation':
        return insuranceProlongation;
      case 'stayInTouch':
        return stayInTouch;
      case 'autoCharge':
        return autoCharge;
      default:
        return null;
    }
  }

  T map<T>({
    required T Function() agreementUseSimpleElectronicSign,
    required T Function() agreementProcessingPersonalData,
    required T Function() agreementCreditReport,
    required T Function() agreementService,
    required T Function() agreementContractLongPeriod,
    required T Function() advertising,
    required T Function() collectiveInsurance,
    required T Function() insuranceProlongation,
    required T Function() stayInTouch,
    required T Function() autoCharge,
  }) {
    switch (this) {
      case EnumDocsSigning.agreementUseSimpleElectronicSign:
        return agreementUseSimpleElectronicSign();
      case EnumDocsSigning.agreementProcessingPersonalData:
        return agreementProcessingPersonalData();
      case EnumDocsSigning.agreementCreditReport:
        return agreementCreditReport();
      case EnumDocsSigning.agreementService:
        return agreementService();
      case EnumDocsSigning.agreementContractLongPeriod:
        return agreementContractLongPeriod();
      case EnumDocsSigning.advertising:
        return advertising();
      case EnumDocsSigning.collectiveInsurance:
        return collectiveInsurance();
      case EnumDocsSigning.insuranceProlongation:
        return insuranceProlongation();
      case EnumDocsSigning.stayInTouch:
        return stayInTouch();
      case EnumDocsSigning.autoCharge:
        return autoCharge();
    }
  }

  T mapValue<T>({
    required T agreementUseSimpleElectronicSign,
    required T agreementProcessingPersonalData,
    required T agreementCreditReport,
    required T agreementService,
    required T agreementContractLongPeriod,
    required T advertising,
    required T collectiveInsurance,
    required T insuranceProlongation,
    required T stayInTouch,
    required T autoCharge,
  }) {
    switch (this) {
      case EnumDocsSigning.agreementUseSimpleElectronicSign:
        return agreementUseSimpleElectronicSign;
      case EnumDocsSigning.agreementProcessingPersonalData:
        return agreementProcessingPersonalData;
      case EnumDocsSigning.agreementCreditReport:
        return agreementCreditReport;
      case EnumDocsSigning.agreementService:
        return agreementService;
      case EnumDocsSigning.agreementContractLongPeriod:
        return agreementContractLongPeriod;
      case EnumDocsSigning.advertising:
        return advertising;
      case EnumDocsSigning.collectiveInsurance:
        return collectiveInsurance;
      case EnumDocsSigning.insuranceProlongation:
        return insuranceProlongation;
      case EnumDocsSigning.stayInTouch:
        return stayInTouch;
      case EnumDocsSigning.autoCharge:
        return autoCharge;
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function()? agreementUseSimpleElectronicSign,
    T Function()? agreementProcessingPersonalData,
    T Function()? agreementCreditReport,
    T Function()? agreementService,
    T Function()? agreementContractLongPeriod,
    T Function()? advertising,
    T Function()? collectiveInsurance,
    T Function()? insuranceProlongation,
    T Function()? stayInTouch,
    T Function()? autoCharge,
  }) =>
      map<T>(
        agreementUseSimpleElectronicSign:
            agreementUseSimpleElectronicSign ?? orElse,
        agreementProcessingPersonalData:
            agreementProcessingPersonalData ?? orElse,
        agreementCreditReport: agreementCreditReport ?? orElse,
        agreementService: agreementService ?? orElse,
        agreementContractLongPeriod: agreementContractLongPeriod ?? orElse,
        advertising: advertising ?? orElse,
        collectiveInsurance: collectiveInsurance ?? orElse,
        insuranceProlongation: insuranceProlongation ?? orElse,
        stayInTouch: stayInTouch ?? orElse,
        autoCharge: autoCharge ?? orElse,
      );

  T maybeMapValue<T>({
    required T orElse,
    T? agreementUseSimpleElectronicSign,
    T? agreementProcessingPersonalData,
    T? agreementCreditReport,
    T? agreementService,
    T? agreementContractLongPeriod,
    T? advertising,
    T? collectiveInsurance,
    T? insuranceProlongation,
    T? stayInTouch,
    T? autoCharge,
  }) =>
      mapValue<T>(
        agreementUseSimpleElectronicSign:
            agreementUseSimpleElectronicSign ?? orElse,
        agreementProcessingPersonalData:
            agreementProcessingPersonalData ?? orElse,
        agreementCreditReport: agreementCreditReport ?? orElse,
        agreementService: agreementService ?? orElse,
        agreementContractLongPeriod: agreementContractLongPeriod ?? orElse,
        advertising: advertising ?? orElse,
        collectiveInsurance: collectiveInsurance ?? orElse,
        insuranceProlongation: insuranceProlongation ?? orElse,
        stayInTouch: stayInTouch ?? orElse,
        autoCharge: autoCharge ?? orElse,
      );

  T? maybeMapOrNull<T>({
    T Function()? agreementUseSimpleElectronicSign,
    T Function()? agreementProcessingPersonalData,
    T Function()? agreementCreditReport,
    T Function()? agreementService,
    T Function()? agreementContractLongPeriod,
    T Function()? advertising,
    T Function()? collectiveInsurance,
    T Function()? insuranceProlongation,
    T Function()? stayInTouch,
    T Function()? autoCharge,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        agreementUseSimpleElectronicSign: agreementUseSimpleElectronicSign,
        agreementProcessingPersonalData: agreementProcessingPersonalData,
        agreementCreditReport: agreementCreditReport,
        agreementService: agreementService,
        agreementContractLongPeriod: agreementContractLongPeriod,
        advertising: advertising,
        collectiveInsurance: collectiveInsurance,
        insuranceProlongation: insuranceProlongation,
        stayInTouch: stayInTouch,
        autoCharge: autoCharge,
      );

  T? maybeMapOrNullValue<T>({
    T? agreementUseSimpleElectronicSign,
    T? agreementProcessingPersonalData,
    T? agreementCreditReport,
    T? agreementService,
    T? agreementContractLongPeriod,
    T? advertising,
    T? collectiveInsurance,
    T? insuranceProlongation,
    T? stayInTouch,
    T? autoCharge,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        agreementUseSimpleElectronicSign: agreementUseSimpleElectronicSign,
        agreementProcessingPersonalData: agreementProcessingPersonalData,
        agreementCreditReport: agreementCreditReport,
        agreementService: agreementService,
        agreementContractLongPeriod: agreementContractLongPeriod,
        advertising: advertising,
        collectiveInsurance: collectiveInsurance,
        insuranceProlongation: insuranceProlongation,
        stayInTouch: stayInTouch,
        autoCharge: autoCharge,
      );

  static List<String> getListValue() =>
      EnumDocsSigning.values.map((e) => e.value).toList();

  @override
  int compareTo(EnumDocsSigning other) => index.compareTo(other.index);
}

extension $EnumDocsSigning on EnumDocsSigning {
  bool get isAgreementUseSimpleElectronicSign =>
      this == EnumDocsSigning.agreementUseSimpleElectronicSign;
  bool get isAgreementProcessingPersonalData =>
      this == EnumDocsSigning.agreementProcessingPersonalData;
  bool get isAgreementCreditReport =>
      this == EnumDocsSigning.agreementCreditReport;
  bool get isAgreementService => this == EnumDocsSigning.agreementService;
  bool get isAgreementContractLongPeriod =>
      this == EnumDocsSigning.agreementContractLongPeriod;
  bool get isAdvertising => this == EnumDocsSigning.advertising;
  bool get isCollectiveInsurance => this == EnumDocsSigning.collectiveInsurance;
  bool get isInsuranceProlongation =>
      this == EnumDocsSigning.insuranceProlongation;
  bool get isStayInTouch => this == EnumDocsSigning.stayInTouch;
  bool get isAutoCharge => this == EnumDocsSigning.autoCharge;
}
