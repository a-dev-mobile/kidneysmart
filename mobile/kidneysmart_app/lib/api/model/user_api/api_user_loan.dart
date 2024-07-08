// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kidneysmart/api/model/documents/api_documents_all.dart';
import 'package:kidneysmart/api/utils/helper_for_json.dart';
import 'package:kidneysmart/core/enum/enum_available_product.dart';
import 'package:kidneysmart/core/enum/enum_loan_status.dart';
import 'package:kidneysmart/core/enum/enum_vacation_status.dart';

part 'api_user_loan.freezed.dart';
part 'api_user_loan.g.dart';

@freezed
class ApiUserLoan with _$ApiUserLoan {
  const factory ApiUserLoan({
    @JsonKey(name: 'nextPaymentAmount') @Default(0) num nextPaymentAmount,
    //
    @JsonKey(name: 'amountToReturnToSchedule')
    @Default(0)
    num amountToReturnToSchedule,
    //
    @JsonKey(
      name: 'nextPaymentDate',
      fromJson: dateTimeFromJson,
      toJson: dateTimeToJson,
    )
    DateTime? nextPaymentDate,
    //
    @JsonKey(name: 'daysLate') @Default(0) int daysLate,
    //
    @JsonKey(
      name: 'returnedDate',
      fromJson: dateTimeFromJson,
      toJson: dateTimeToJson,
    )
    DateTime? returnedDate,
    //
    @JsonKey(name: 'calculation')
    @Default(Calculation())
    Calculation calculation,
    //
    @JsonKey(name: 'reason') @Default('') String reason,
    @JsonKey(name: 'id') @Default(0) int id,
    @JsonKey(name: 'publicId') int? publicId,
    @JsonKey(name: 'requestAmount') int? requestAmount,
    //
    @JsonKey(
      name: 'requestDate',
      fromJson: dateTimeFromJson,
      toJson: dateTimeToJson,
    )
    DateTime? requestDate,
    //
    @JsonKey(
      name: 'approveDate',
      fromJson: dateTimeFromJson,
      toJson: dateTimeToJson,
    )
    DateTime? approveDate,
    //
    @JsonKey(
      name: 'giveDate',
      fromJson: dateTimeFromJson,
      toJson: dateTimeToJson,
    )
    DateTime? giveDate,
    //
    @JsonKey(
      name: 'type',
      toJson: availableProductTypeToJson,
      fromJson: availableProductTypeFromJson,
    )
    @Default(EnumAvailableProduct.payday)
    EnumAvailableProduct enumAvailableProduct,
    @JsonKey(
      name: 'mustPayDate',
      fromJson: dateTimeFromJson,
      toJson: dateTimeToJson,
    )
    DateTime? mustPayDate,
    @JsonKey(name: 'days') @Default(0) int days,
    @JsonKey(name: 'days_left') @Default(0) int daysLeft,
    @JsonKey(
      name: 'status',
      toJson: loanStatusToJson,
      fromJson: loanStatusFromJson,
    )
    @Default(EnumLoanStatus.unknown)
    EnumLoanStatus enumLoanStatus,
    @JsonKey(name: 'smsConfirmed') int? smsConfirmed,
    @JsonKey(name: 'currency') @Default('') String currency,
    @JsonKey(
      name: 'total',
      fromJson: convertToNumOrNullFromJson,
      toJson: convertToNumOrNullToJson,
    )
    num? total,
    @JsonKey(
      name: 'mustPayTotal',
      fromJson: convertToNumOrNullFromJson,
      toJson: convertToNumOrNullToJson,
    )
    num? mustPayTotal,
    @JsonKey(name: 'counterOfferAmount') @Default(0) int counterOfferAmount,
    @JsonKey(name: 'counterOfferAvgAmount')
    @Default(0)
    int counterOfferAvgAmount,
    @JsonKey(name: 'discountCode') @Default('') String discountCode,
    @JsonKey(name: 'collection_agency_in_progress')
    bool? collectionAgencyInProgress,
    @JsonKey(name: 'vacation') Vacation? vacation,
    @JsonKey(
      name: 'personal_notification_message',
      fromJson: convertStringOrMapToPersonalNotificationMessageFromJson,
    )
    PersonalNotificationMessage? personalNotificationMessage,
    @JsonKey(name: 'agreements') ApiAgreements? agreements,
    @JsonKey(name: 'reason_code') @Default('') String reasonCode,
    @JsonKey(name: 'extendable') bool? extendable,
    @JsonKey(name: 'autocharge_approval') bool? autochargeApproval,
    @JsonKey(name: 'soldInformation')
    @Default(SoldInformation())
    SoldInformation soldInformation,
  }) = _ApiUserLoan;

  factory ApiUserLoan.fromJson(Map<String, Object?> json) =>
      _$ApiUserLoanFromJson(json);
  const ApiUserLoan._();
}

@freezed
class PersonalNotificationMessage with _$PersonalNotificationMessage {
  const factory PersonalNotificationMessage({
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'message') String? message,
  }) = _PersonalNotificationMessage;

  factory PersonalNotificationMessage.fromJson(Map<String, Object?> json) =>
      _$PersonalNotificationMessageFromJson(json);
}

@freezed
class Vacation with _$Vacation {
  const factory Vacation({
    @JsonKey(
      name: 'status',
      toJson: vacationStatusToJson,
      fromJson: vacationStatusFromJson,
    )
    @Default(EnumVacationStatus.inActive)
    EnumVacationStatus enumVacationStatus,
    @JsonKey(name: 'has_documents') @Default(false) bool hasDocuments,
    @JsonKey(
      name: 'date_from',
      fromJson: dateTimeFromJson,
      toJson: dateTimeToJson,
    )
    DateTime? dateFrom,
    @JsonKey(
      name: 'date_to',
      fromJson: dateTimeFromJson,
      toJson: dateTimeToJson,
    )
    DateTime? dateTo,
    @JsonKey(name: 'commission_before') num? commissionBefore,
    @JsonKey(name: 'fine_before') num? fineBefore,
    @JsonKey(name: 'current_days') @Default(0) int currentDays,
    @JsonKey(name: 'days') @Default(0) int days,
    @JsonKey(name: 'start_on_overdue_period')
    @Default(false)
    bool startOnOverduePeriod,
    @JsonKey(name: 'must_pay_with_docs') num? mustPayWithDocs,
    @JsonKey(name: 'commission_with_docs') num? commissionWithDocs,
    @JsonKey(name: 'current_commission_with_docs')
    num? currentCommissioWithDocs,
    @JsonKey(name: 'current_must_pay_with_docs') num? currentMustPayWithDocs,
    @JsonKey(name: 'must_pay_without_docs') num? mustPayWithoutDocs,
    @JsonKey(name: 'commission_without_docs') num? commissionWithoutDocs,
  }) = _Vacation;

  factory Vacation.fromJson(Map<String, Object?> json) =>
      _$VacationFromJson(json);
}

@freezed
class Calculation with _$Calculation {
  const factory Calculation({
    @JsonKey(name: 'body') num? body,
    @JsonKey(name: 'commission') num? commission,
    @JsonKey(name: 'extra_commission') num? extraCommission,
    @JsonKey(name: 'vacation_commission') num? vacationCommission,
    @JsonKey(name: 'giveout_commission') num? giveoutCommission,
    @JsonKey(name: 'annual_commission') num? annualCommission,
    @JsonKey(name: 'monthly_commission') num? monthlyCommission,
    @JsonKey(name: 'fine') num? fine,
    @JsonKey(name: 'extra_fine') num? extraFine,
    @JsonKey(name: 'fixed') num? fixed,
    @JsonKey(name: 'deposit') num? deposit,
    @JsonKey(name: 'total') Total? total,
  }) = _Calculation;

  factory Calculation.fromJson(Map<String, Object?> json) =>
      _$CalculationFromJson(json);
}

@freezed
class Total with _$Total {
  const factory Total({
    @JsonKey(name: 'commission') num? commission,
    @JsonKey(name: 'fine') num? fine,
  }) = _Total;

  factory Total.fromJson(Map<String, Object?> json) => _$TotalFromJson(json);
}

@freezed
class SoldInformation with _$SoldInformation {
  const factory SoldInformation({
    @JsonKey(name: 'assignmentClaimDate')
    @Default('')
    String assignmentClaimDate,
    @JsonKey(name: 'amount') num? amount,
    @JsonKey(name: 'inn') @Default('') String inn,
    @JsonKey(name: 'ogrn') @Default('') String ogrn,
    @JsonKey(name: 'okpo') @Default('') String okpo,
    @JsonKey(name: 'address') @Default('') String address,
    @JsonKey(name: 'legalAddress') @Default('') String legalAddress,
    @JsonKey(name: 'bankDetails') @Default('') String bankDetails,
    @JsonKey(name: 'thirdPersonFullName')
    @Default('')
    String thirdPersonFullName,
    @JsonKey(name: 'thirdPersonPhone') @Default('') String thirdPersonPhone,
    @JsonKey(name: 'thirdPersonDirector')
    @Default('')
    String thirdPersonDirector,
    @JsonKey(name: 'mustPayTotal') num? mustPayTotal,
    @JsonKey(name: 'mustPayCommission') num? mustPayCommission,
    @JsonKey(name: 'mustPayFine') num? mustPayFine,
    @JsonKey(name: 'mustPayBody') num? mustPayBody,
  }) = _SoldInformation;

  factory SoldInformation.fromJson(Map<String, dynamic> json) =>
      _$SoldInformationFromJson(json);
}
