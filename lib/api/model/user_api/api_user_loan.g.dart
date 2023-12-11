// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_user_loan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiUserLoanImpl _$$ApiUserLoanImplFromJson(Map<String, dynamic> json) =>
    _$ApiUserLoanImpl(
      nextPaymentAmount: json['nextPaymentAmount'] as num? ?? 0,
      amountToReturnToSchedule: json['amountToReturnToSchedule'] as num? ?? 0,
      nextPaymentDate: dateTimeFromJson(json['nextPaymentDate'] as String?),
      daysLate: json['daysLate'] as int? ?? 0,
      returnedDate: dateTimeFromJson(json['returnedDate'] as String?),
      calculation: json['calculation'] == null
          ? const Calculation()
          : Calculation.fromJson(json['calculation'] as Map<String, dynamic>),
      reason: json['reason'] as String? ?? '',
      id: json['id'] as int? ?? 0,
      publicId: json['publicId'] as int?,
      requestAmount: json['requestAmount'] as int?,
      requestDate: dateTimeFromJson(json['requestDate'] as String?),
      approveDate: dateTimeFromJson(json['approveDate'] as String?),
      giveDate: dateTimeFromJson(json['giveDate'] as String?),
      enumAvailableProduct: json['type'] == null
          ? EnumAvailableProduct.payday
          : availableProductTypeFromJson(json['type'] as String?),
      mustPayDate: dateTimeFromJson(json['mustPayDate'] as String?),
      days: json['days'] as int? ?? 0,
      daysLeft: json['days_left'] as int? ?? 0,
      enumLoanStatus: json['status'] == null
          ? EnumLoanStatus.unknown
          : loanStatusFromJson(json['status'] as int?),
      smsConfirmed: json['smsConfirmed'] as int?,
      currency: json['currency'] as String? ?? '',
      total: convertToNumOrNullFromJson(json['total']),
      mustPayTotal: convertToNumOrNullFromJson(json['mustPayTotal']),
      counterOfferAmount: json['counterOfferAmount'] as int? ?? 0,
      counterOfferAvgAmount: json['counterOfferAvgAmount'] as int? ?? 0,
      discountCode: json['discountCode'] as String? ?? '',
      collectionAgencyInProgress:
          json['collection_agency_in_progress'] as bool?,
      vacation: json['vacation'] == null
          ? null
          : Vacation.fromJson(json['vacation'] as Map<String, dynamic>),
      personalNotificationMessage:
          convertStringOrMapToPersonalNotificationMessageFromJson(
              json['personal_notification_message']),
      agreements: json['agreements'] == null
          ? null
          : ApiAgreements.fromJson(json['agreements'] as Map<String, dynamic>),
      reasonCode: json['reason_code'] as String? ?? '',
      extendable: json['extendable'] as bool?,
      autochargeApproval: json['autocharge_approval'] as bool?,
      soldInformation: json['soldInformation'] == null
          ? const SoldInformation()
          : SoldInformation.fromJson(
              json['soldInformation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ApiUserLoanImplToJson(_$ApiUserLoanImpl instance) =>
    <String, dynamic>{
      'nextPaymentAmount': instance.nextPaymentAmount,
      'amountToReturnToSchedule': instance.amountToReturnToSchedule,
      'nextPaymentDate': dateTimeToJson(instance.nextPaymentDate),
      'daysLate': instance.daysLate,
      'returnedDate': dateTimeToJson(instance.returnedDate),
      'calculation': instance.calculation,
      'reason': instance.reason,
      'id': instance.id,
      'publicId': instance.publicId,
      'requestAmount': instance.requestAmount,
      'requestDate': dateTimeToJson(instance.requestDate),
      'approveDate': dateTimeToJson(instance.approveDate),
      'giveDate': dateTimeToJson(instance.giveDate),
      'type': availableProductTypeToJson(instance.enumAvailableProduct),
      'mustPayDate': dateTimeToJson(instance.mustPayDate),
      'days': instance.days,
      'days_left': instance.daysLeft,
      'status': loanStatusToJson(instance.enumLoanStatus),
      'smsConfirmed': instance.smsConfirmed,
      'currency': instance.currency,
      'total': convertToNumOrNullToJson(instance.total),
      'mustPayTotal': convertToNumOrNullToJson(instance.mustPayTotal),
      'counterOfferAmount': instance.counterOfferAmount,
      'counterOfferAvgAmount': instance.counterOfferAvgAmount,
      'discountCode': instance.discountCode,
      'collection_agency_in_progress': instance.collectionAgencyInProgress,
      'vacation': instance.vacation,
      'personal_notification_message': instance.personalNotificationMessage,
      'agreements': instance.agreements,
      'reason_code': instance.reasonCode,
      'extendable': instance.extendable,
      'autocharge_approval': instance.autochargeApproval,
      'soldInformation': instance.soldInformation,
    };

_$PersonalNotificationMessageImpl _$$PersonalNotificationMessageImplFromJson(
        Map<String, dynamic> json) =>
    _$PersonalNotificationMessageImpl(
      title: json['title'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$PersonalNotificationMessageImplToJson(
        _$PersonalNotificationMessageImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'message': instance.message,
    };

_$VacationImpl _$$VacationImplFromJson(Map<String, dynamic> json) =>
    _$VacationImpl(
      enumVacationStatus: json['status'] == null
          ? EnumVacationStatus.inActive
          : vacationStatusFromJson(json['status'] as int?),
      hasDocuments: json['has_documents'] as bool? ?? false,
      dateFrom: dateTimeFromJson(json['date_from'] as String?),
      dateTo: dateTimeFromJson(json['date_to'] as String?),
      commissionBefore: json['commission_before'] as num?,
      fineBefore: json['fine_before'] as num?,
      currentDays: json['current_days'] as int? ?? 0,
      days: json['days'] as int? ?? 0,
      startOnOverduePeriod: json['start_on_overdue_period'] as bool? ?? false,
      mustPayWithDocs: json['must_pay_with_docs'] as num?,
      commissionWithDocs: json['commission_with_docs'] as num?,
      currentCommissioWithDocs: json['current_commission_with_docs'] as num?,
      currentMustPayWithDocs: json['current_must_pay_with_docs'] as num?,
      mustPayWithoutDocs: json['must_pay_without_docs'] as num?,
      commissionWithoutDocs: json['commission_without_docs'] as num?,
    );

Map<String, dynamic> _$$VacationImplToJson(_$VacationImpl instance) =>
    <String, dynamic>{
      'status': vacationStatusToJson(instance.enumVacationStatus),
      'has_documents': instance.hasDocuments,
      'date_from': dateTimeToJson(instance.dateFrom),
      'date_to': dateTimeToJson(instance.dateTo),
      'commission_before': instance.commissionBefore,
      'fine_before': instance.fineBefore,
      'current_days': instance.currentDays,
      'days': instance.days,
      'start_on_overdue_period': instance.startOnOverduePeriod,
      'must_pay_with_docs': instance.mustPayWithDocs,
      'commission_with_docs': instance.commissionWithDocs,
      'current_commission_with_docs': instance.currentCommissioWithDocs,
      'current_must_pay_with_docs': instance.currentMustPayWithDocs,
      'must_pay_without_docs': instance.mustPayWithoutDocs,
      'commission_without_docs': instance.commissionWithoutDocs,
    };

_$CalculationImpl _$$CalculationImplFromJson(Map<String, dynamic> json) =>
    _$CalculationImpl(
      body: json['body'] as num?,
      commission: json['commission'] as num?,
      extraCommission: json['extra_commission'] as num?,
      vacationCommission: json['vacation_commission'] as num?,
      giveoutCommission: json['giveout_commission'] as num?,
      annualCommission: json['annual_commission'] as num?,
      monthlyCommission: json['monthly_commission'] as num?,
      fine: json['fine'] as num?,
      extraFine: json['extra_fine'] as num?,
      fixed: json['fixed'] as num?,
      deposit: json['deposit'] as num?,
      total: json['total'] == null
          ? null
          : Total.fromJson(json['total'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CalculationImplToJson(_$CalculationImpl instance) =>
    <String, dynamic>{
      'body': instance.body,
      'commission': instance.commission,
      'extra_commission': instance.extraCommission,
      'vacation_commission': instance.vacationCommission,
      'giveout_commission': instance.giveoutCommission,
      'annual_commission': instance.annualCommission,
      'monthly_commission': instance.monthlyCommission,
      'fine': instance.fine,
      'extra_fine': instance.extraFine,
      'fixed': instance.fixed,
      'deposit': instance.deposit,
      'total': instance.total,
    };

_$TotalImpl _$$TotalImplFromJson(Map<String, dynamic> json) => _$TotalImpl(
      commission: json['commission'] as num?,
      fine: json['fine'] as num?,
    );

Map<String, dynamic> _$$TotalImplToJson(_$TotalImpl instance) =>
    <String, dynamic>{
      'commission': instance.commission,
      'fine': instance.fine,
    };

_$SoldInformationImpl _$$SoldInformationImplFromJson(
        Map<String, dynamic> json) =>
    _$SoldInformationImpl(
      assignmentClaimDate: json['assignmentClaimDate'] as String? ?? '',
      amount: json['amount'] as num?,
      inn: json['inn'] as String? ?? '',
      ogrn: json['ogrn'] as String? ?? '',
      okpo: json['okpo'] as String? ?? '',
      address: json['address'] as String? ?? '',
      legalAddress: json['legalAddress'] as String? ?? '',
      bankDetails: json['bankDetails'] as String? ?? '',
      thirdPersonFullName: json['thirdPersonFullName'] as String? ?? '',
      thirdPersonPhone: json['thirdPersonPhone'] as String? ?? '',
      thirdPersonDirector: json['thirdPersonDirector'] as String? ?? '',
      mustPayTotal: json['mustPayTotal'] as num?,
      mustPayCommission: json['mustPayCommission'] as num?,
      mustPayFine: json['mustPayFine'] as num?,
      mustPayBody: json['mustPayBody'] as num?,
    );

Map<String, dynamic> _$$SoldInformationImplToJson(
        _$SoldInformationImpl instance) =>
    <String, dynamic>{
      'assignmentClaimDate': instance.assignmentClaimDate,
      'amount': instance.amount,
      'inn': instance.inn,
      'ogrn': instance.ogrn,
      'okpo': instance.okpo,
      'address': instance.address,
      'legalAddress': instance.legalAddress,
      'bankDetails': instance.bankDetails,
      'thirdPersonFullName': instance.thirdPersonFullName,
      'thirdPersonPhone': instance.thirdPersonPhone,
      'thirdPersonDirector': instance.thirdPersonDirector,
      'mustPayTotal': instance.mustPayTotal,
      'mustPayCommission': instance.mustPayCommission,
      'mustPayFine': instance.mustPayFine,
      'mustPayBody': instance.mustPayBody,
    };
