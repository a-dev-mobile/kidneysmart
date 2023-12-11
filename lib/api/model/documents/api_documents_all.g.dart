// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_documents_all.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiDocumentsAllImpl _$$ApiDocumentsAllImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiDocumentsAllImpl(
      user: (json['user'] as List<dynamic>?)
              ?.map((e) => ApiDocUser.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      loan: _converToApiDocLoanFromJson(json['loan']),
      history: _convertToMapStringApiHistoryItemFromJson(json['history']),
      agreements: _converToApiAgreementsFromJson(json['agreements']),
      insuranceContracts: _convertToMapStringListOfApiInsuranceContracts(
          json['insurance_contracts']),
      reference: _converToApiReferenceFromJson(json['reference']),
    );

Map<String, dynamic> _$$ApiDocumentsAllImplToJson(
        _$ApiDocumentsAllImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'loan': instance.loan,
      'history': instance.history,
      'agreements': instance.agreements,
      'insurance_contracts': instance.insuranceContracts,
      'reference': instance.reference,
    };

_$ApiHistoryItemImpl _$$ApiHistoryItemImplFromJson(Map<String, dynamic> json) =>
    _$ApiHistoryItemImpl(
      agreements: (json['agreements'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(k, ApiAgreementItem.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$ApiHistoryItemImplToJson(
        _$ApiHistoryItemImpl instance) =>
    <String, dynamic>{
      'agreements': instance.agreements,
    };

_$ApiAgreementsImpl _$$ApiAgreementsImplFromJson(Map<String, dynamic> json) =>
    _$ApiAgreementsImpl(
      agreementProcessingPersonalData:
          json['agreementProcessingPersonalData'] == null
              ? null
              : ApiAgreementItem.fromJson(
                  json['agreementProcessingPersonalData']
                      as Map<String, dynamic>),
      agreementCreditReport: json['agreementCreditReport'] == null
          ? null
          : ApiAgreementItem.fromJson(
              json['agreementCreditReport'] as Map<String, dynamic>),
      agreementUseSimpleElectronicSign:
          json['agreementUseSimpleElectronicSign'] == null
              ? null
              : ApiAgreementItem.fromJson(
                  json['agreementUseSimpleElectronicSign']
                      as Map<String, dynamic>),
      agreementService: json['agreementService'] == null
          ? null
          : ApiAgreementItem.fromJson(
              json['agreementService'] as Map<String, dynamic>),
      agreementServiceIL: json['agreementServiceIL'] == null
          ? null
          : ApiAgreementItem.fromJson(
              json['agreementServiceIL'] as Map<String, dynamic>),
      agreementContractIL: json['agreementContractIL'] == null
          ? null
          : ApiAgreementItem.fromJson(
              json['agreementContractIL'] as Map<String, dynamic>),
      paymentScheduleILForPER: json['paymentScheduleILForPER'] == null
          ? null
          : ApiAgreementItem.fromJson(
              json['paymentScheduleILForPER'] as Map<String, dynamic>),
      agreementCollectiveInsuranceKid0:
          json['agreementCollectiveInsuranceKid-0'] == null
              ? null
              : ApiAgreementItem.fromJson(
                  json['agreementCollectiveInsuranceKid-0']
                      as Map<String, dynamic>),
      agreementCollectiveInsuranceCertificate0:
          json['agreementCollectiveInsuranceCertificate-0'] == null
              ? null
              : ApiAgreementItem.fromJson(
                  json['agreementCollectiveInsuranceCertificate-0']
                      as Map<String, dynamic>),
      agreementCollectiveInsurance0: json['agreementCollectiveInsurance-0'] ==
              null
          ? null
          : ApiAgreementItem.fromJson(
              json['agreementCollectiveInsurance-0'] as Map<String, dynamic>),
      agreementCollectiveInsuranceStatement0:
          json['agreementCollectiveInsuranceStatement-0'] == null
              ? null
              : ApiAgreementItem.fromJson(
                  json['agreementCollectiveInsuranceStatement-0']
                      as Map<String, dynamic>),
      agreementConsentAutocharge: json['agreementConsentAutocharge'] == null
          ? null
          : ApiAgreementItem.fromJson(
              json['agreementConsentAutocharge'] as Map<String, dynamic>),
      agreementContractLongPeriod: json['agreementContractLongPeriod'] == null
          ? null
          : ApiAgreementItem.fromJson(
              json['agreementContractLongPeriod'] as Map<String, dynamic>),
      agreementNotificationOfOverdueDebt: json['agreementAd'] == null
          ? null
          : ApiAgreementItem.fromJson(
              json['agreementAd'] as Map<String, dynamic>),
      agreementAd: json['agreementNotificationOfOverdueDebt'] == null
          ? null
          : ApiAgreementItem.fromJson(json['agreementNotificationOfOverdueDebt']
              as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ApiAgreementsImplToJson(_$ApiAgreementsImpl instance) =>
    <String, dynamic>{
      'agreementProcessingPersonalData':
          instance.agreementProcessingPersonalData,
      'agreementCreditReport': instance.agreementCreditReport,
      'agreementUseSimpleElectronicSign':
          instance.agreementUseSimpleElectronicSign,
      'agreementService': instance.agreementService,
      'agreementServiceIL': instance.agreementServiceIL,
      'agreementContractIL': instance.agreementContractIL,
      'paymentScheduleILForPER': instance.paymentScheduleILForPER,
      'agreementCollectiveInsuranceKid-0':
          instance.agreementCollectiveInsuranceKid0,
      'agreementCollectiveInsuranceCertificate-0':
          instance.agreementCollectiveInsuranceCertificate0,
      'agreementCollectiveInsurance-0': instance.agreementCollectiveInsurance0,
      'agreementCollectiveInsuranceStatement-0':
          instance.agreementCollectiveInsuranceStatement0,
      'agreementConsentAutocharge': instance.agreementConsentAutocharge,
      'agreementContractLongPeriod': instance.agreementContractLongPeriod,
      'agreementAd': instance.agreementNotificationOfOverdueDebt,
      'agreementNotificationOfOverdueDebt': instance.agreementAd,
    };

_$ApiDocUserImpl _$$ApiDocUserImplFromJson(Map<String, dynamic> json) =>
    _$ApiDocUserImpl(
      type: json['type'] as String? ?? '',
      comment: json['comment'] as String? ?? '',
      createdAt: dateTimeFromJson(json['createdAt'] as String?),
      size: json['size'] as int?,
      url: json['url'] as String? ?? '',
      docUserNameDetails: docUserNameDetailsFromJson(json['name'] as String?),
      isValid: json['isValid'] as bool? ?? false,
    );

Map<String, dynamic> _$$ApiDocUserImplToJson(_$ApiDocUserImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'comment': instance.comment,
      'createdAt': dateTimeToJson(instance.createdAt),
      'size': instance.size,
      'url': instance.url,
      'name': docUserNameDetailsToJson(instance.docUserNameDetails),
      'isValid': instance.isValid,
    };

_$DocUserNameDetailsImpl _$$DocUserNameDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$DocUserNameDetailsImpl(
      name: json['name'] as String,
      enumDocUserType: $enumDecodeNullable(
          _$EnumDocUserTypeEnumMap, json['enumDocUserType']),
    );

Map<String, dynamic> _$$DocUserNameDetailsImplToJson(
        _$DocUserNameDetailsImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'enumDocUserType': _$EnumDocUserTypeEnumMap[instance.enumDocUserType],
    };

const _$EnumDocUserTypeEnumMap = {
  EnumDocUserType.registration: 'registration',
  EnumDocUserType.photo: 'photo',
  EnumDocUserType.passport: 'passport',
  EnumDocUserType.card: 'card',
};

_$ApiDocLoanImpl _$$ApiDocLoanImplFromJson(Map<String, dynamic> json) =>
    _$ApiDocLoanImpl(
      agreements: json['agreements'] == null
          ? null
          : ApiAgreements.fromJson(json['agreements'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ApiDocLoanImplToJson(_$ApiDocLoanImpl instance) =>
    <String, dynamic>{
      'agreements': instance.agreements,
    };

_$ApiReferenceImpl _$$ApiReferenceImplFromJson(Map<String, dynamic> json) =>
    _$ApiReferenceImpl(
      referenceLoanClosed: json['referenceLoanClosed'] == null
          ? null
          : ApiAgreementItem.fromJson(
              json['referenceLoanClosed'] as Map<String, dynamic>),
      referenceLackOfDebt: json['referenceLackOfDebt'] == null
          ? null
          : ApiAgreementItem.fromJson(
              json['referenceLackOfDebt'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ApiReferenceImplToJson(_$ApiReferenceImpl instance) =>
    <String, dynamic>{
      'referenceLoanClosed': instance.referenceLoanClosed,
      'referenceLackOfDebt': instance.referenceLackOfDebt,
    };

_$ApiAgreementItemImpl _$$ApiAgreementItemImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiAgreementItemImpl(
      topic: json['topic'] as String? ?? '',
      url: json['url'] as String? ?? '',
      date: dateTimeFromJson(json['date'] as String?),
    );

Map<String, dynamic> _$$ApiAgreementItemImplToJson(
        _$ApiAgreementItemImpl instance) =>
    <String, dynamic>{
      'topic': instance.topic,
      'url': instance.url,
      'date': dateTimeToJson(instance.date),
    };

_$ApiInsuranceContractsImpl _$$ApiInsuranceContractsImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiInsuranceContractsImpl(
      loan: json['loan'] as int?,
      insuranceProductId: json['insurance_product_id'] as String? ?? '',
      insuranceContractId: json['insurance_contract_id'] as String? ?? '',
      insuranceContractNumber:
          json['insurance_contract_number'] as String? ?? '',
      insuranceEndDate: dateTimeFromJson(json['insurance_end_date'] as String?),
      insuranceStartDate:
          dateTimeFromJson(json['insurance_start_date'] as String?),
      insurancePremium: json['insurance_premium'] as int?,
      url: json['url'] as String? ?? '',
    );

Map<String, dynamic> _$$ApiInsuranceContractsImplToJson(
        _$ApiInsuranceContractsImpl instance) =>
    <String, dynamic>{
      'loan': instance.loan,
      'insurance_product_id': instance.insuranceProductId,
      'insurance_contract_id': instance.insuranceContractId,
      'insurance_contract_number': instance.insuranceContractNumber,
      'insurance_end_date': dateTimeToJson(instance.insuranceEndDate),
      'insurance_start_date': dateTimeToJson(instance.insuranceStartDate),
      'insurance_premium': instance.insurancePremium,
      'url': instance.url,
    };
