// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kidneysmart/api/utils/helper_for_json.dart';
import 'package:kidneysmart/core/enum/enum_doc_user_type.dart';

part 'api_documents_all.freezed.dart';
part 'api_documents_all.g.dart';
part 'converter.dart';

@freezed
class ApiDocumentsAll with _$ApiDocumentsAll {
  const factory ApiDocumentsAll({
    @JsonKey(name: 'user') @Default([]) List<ApiDocUser> user,
    @JsonKey(
      name: 'loan',
      fromJson: _converToApiDocLoanFromJson,
    )
    ApiDocLoan? loan,
    @JsonKey(
      name: 'history',
      fromJson: _convertToMapStringApiHistoryItemFromJson,
    )
    Map<String, ApiHistoryItem>? history,
    //
    @JsonKey(
      name: 'agreements',
      fromJson: _converToApiAgreementsFromJson,
    )
    ApiAgreements? agreements,
    @JsonKey(
      name: 'insurance_contracts',
      fromJson: _convertToMapStringListOfApiInsuranceContracts,
    )
    Map<String, List<ApiInsuranceContracts>>? insuranceContracts,
    //
    @JsonKey(
      name: 'reference',
      fromJson: _converToApiReferenceFromJson,
    )
    ApiReference? reference,
  }) = _ApiDocumentsAll;

  factory ApiDocumentsAll.fromJson(Map<String, Object?> json) =>
      _$ApiDocumentsAllFromJson(json);
}

@freezed
class ApiHistoryItem with _$ApiHistoryItem {
  const factory ApiHistoryItem({
    required Map<String, ApiAgreementItem> agreements,
  }) = _ApiHistoryItem;

  factory ApiHistoryItem.fromJson(Map<String, dynamic> json) =>
      _$ApiHistoryItemFromJson(json);
}

@freezed
class ApiAgreements with _$ApiAgreements {
  const factory ApiAgreements({
    @JsonKey(name: 'agreementProcessingPersonalData')
    ApiAgreementItem? agreementProcessingPersonalData,
    @JsonKey(name: 'agreementCreditReport')
    ApiAgreementItem? agreementCreditReport,
    @JsonKey(name: 'agreementUseSimpleElectronicSign')
    ApiAgreementItem? agreementUseSimpleElectronicSign,
    @JsonKey(name: 'agreementService') ApiAgreementItem? agreementService,
    @JsonKey(name: 'agreementServiceIL') ApiAgreementItem? agreementServiceIL,
    @JsonKey(name: 'agreementContractIL') ApiAgreementItem? agreementContractIL,
    @JsonKey(name: 'paymentScheduleILForPER')
    ApiAgreementItem? paymentScheduleILForPER,
    @JsonKey(name: 'agreementCollectiveInsuranceKid-0')
    ApiAgreementItem? agreementCollectiveInsuranceKid0,
    @JsonKey(name: 'agreementCollectiveInsuranceCertificate-0')
    ApiAgreementItem? agreementCollectiveInsuranceCertificate0,
    @JsonKey(name: 'agreementCollectiveInsurance-0')
    ApiAgreementItem? agreementCollectiveInsurance0,
    @JsonKey(name: 'agreementCollectiveInsuranceStatement-0')
    ApiAgreementItem? agreementCollectiveInsuranceStatement0,
    @JsonKey(name: 'agreementConsentAutocharge')
    ApiAgreementItem? agreementConsentAutocharge,
    @JsonKey(name: 'agreementContractLongPeriod')
    ApiAgreementItem? agreementContractLongPeriod,
    @JsonKey(name: 'agreementAd')
    ApiAgreementItem? agreementNotificationOfOverdueDebt,
    @JsonKey(name: 'agreementNotificationOfOverdueDebt')
    ApiAgreementItem? agreementAd,
  }) = _ApiAgreements;
  const ApiAgreements._();

  factory ApiAgreements.fromJson(Map<String, Object?> json) =>
      _$ApiAgreementsFromJson(json);

  // Method to get all non-null ApiAgreementItems as a list
  List<ApiAgreementItem> get allAgreementItems {
    // Collect all non-null ApiAgreementItems
    return [
      agreementProcessingPersonalData,
      agreementCreditReport,
      agreementUseSimpleElectronicSign,
      agreementContractLongPeriod,
      agreementAd,
      agreementNotificationOfOverdueDebt,
      agreementCollectiveInsuranceKid0,
      agreementCollectiveInsuranceCertificate0,
      agreementCollectiveInsurance0,
      agreementCollectiveInsuranceStatement0,
      agreementService,
      agreementServiceIL,
      agreementContractIL,
      paymentScheduleILForPER,
      agreementConsentAutocharge,
    ].where((item) => item != null).cast<ApiAgreementItem>().toList();
  }
}

@freezed
class ApiDocUser with _$ApiDocUser {
  const factory ApiDocUser({
    @JsonKey(name: 'type') @Default('') String type,
    @JsonKey(name: 'comment') @Default('') String comment,
    @JsonKey(
      name: 'createdAt',
      fromJson: dateTimeFromJson,
      toJson: dateTimeToJson,
    )
    DateTime? createdAt,
    @JsonKey(name: 'size') int? size,
    @JsonKey(name: 'url') @Default('') String url,
    @JsonKey(
      name: 'name',
      fromJson: docUserNameDetailsFromJson,
      toJson: docUserNameDetailsToJson,
    )
    DocUserNameDetails? docUserNameDetails,
    @JsonKey(name: 'isValid') @Default(false) bool isValid,
  }) = _ApiDocUser;

  factory ApiDocUser.fromJson(Map<String, Object?> json) =>
      _$ApiDocUserFromJson(json);
}

@freezed
class DocUserNameDetails with _$DocUserNameDetails {
  const factory DocUserNameDetails({
    required String name,
    EnumDocUserType? enumDocUserType,
  }) = _DocUserNameDetails;

  factory DocUserNameDetails.fromJson(Map<String, Object?> json) =>
      _$DocUserNameDetailsFromJson(json);
}

@freezed
class ApiDocLoan with _$ApiDocLoan {
  const factory ApiDocLoan({
    @JsonKey(name: 'agreements') ApiAgreements? agreements,
  }) = _ApiDocLoan;

  factory ApiDocLoan.fromJson(Map<String, Object?> json) =>
      _$ApiDocLoanFromJson(json);
}

@freezed
class ApiReference with _$ApiReference {
  const factory ApiReference({
    @JsonKey(name: 'referenceLoanClosed') ApiAgreementItem? referenceLoanClosed,
    @JsonKey(name: 'referenceLackOfDebt') ApiAgreementItem? referenceLackOfDebt,
  }) = _ApiReference;

  factory ApiReference.fromJson(Map<String, Object?> json) =>
      _$ApiReferenceFromJson(json);
}

@freezed
class ApiAgreementItem with _$ApiAgreementItem {
  const factory ApiAgreementItem({
    @JsonKey(name: 'topic') @Default('') String topic,
    @JsonKey(name: 'url') @Default('') String url,
    @JsonKey(
      name: 'date',
      fromJson: dateTimeFromJson,
      toJson: dateTimeToJson,
    )
    DateTime? date,
  }) = _ApiAgreementItem;

  factory ApiAgreementItem.fromJson(Map<String, Object?> json) =>
      _$ApiAgreementItemFromJson(json);
}

@freezed
class ApiInsuranceContracts with _$ApiInsuranceContracts {
  const factory ApiInsuranceContracts({
    @JsonKey(name: 'loan') int? loan,
    //
    @JsonKey(name: 'insurance_product_id')
    @Default('')
    String insuranceProductId,
    //
    @JsonKey(name: 'insurance_contract_id')
    @Default('')
    String insuranceContractId,
    //
    @JsonKey(name: 'insurance_contract_number')
    @Default('')
    String insuranceContractNumber,
    //
    @JsonKey(
      name: 'insurance_end_date',
      fromJson: dateTimeFromJson,
      toJson: dateTimeToJson,
    )
    DateTime? insuranceEndDate,
    //
    @JsonKey(
      name: 'insurance_start_date',
      fromJson: dateTimeFromJson,
      toJson: dateTimeToJson,
    )
    DateTime? insuranceStartDate,
    //
    @JsonKey(name: 'insurance_premium') int? insurancePremium,
    //
    @JsonKey(name: 'url') @Default('') String url,
  }) = _ApiInsuranceContracts;

  factory ApiInsuranceContracts.fromJson(Map<String, Object?> json) =>
      _$ApiInsuranceContractsFromJson(json);
}
