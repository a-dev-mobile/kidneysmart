// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_user_loan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiUserLoan _$ApiUserLoanFromJson(Map<String, dynamic> json) {
  return _ApiUserLoan.fromJson(json);
}

/// @nodoc
mixin _$ApiUserLoan {
  @JsonKey(name: 'nextPaymentAmount')
  num get nextPaymentAmount => throw _privateConstructorUsedError; //
  @JsonKey(name: 'amountToReturnToSchedule')
  num get amountToReturnToSchedule => throw _privateConstructorUsedError; //
  @JsonKey(
      name: 'nextPaymentDate',
      fromJson: dateTimeFromJson,
      toJson: dateTimeToJson)
  DateTime? get nextPaymentDate => throw _privateConstructorUsedError; //
  @JsonKey(name: 'daysLate')
  int get daysLate => throw _privateConstructorUsedError; //
  @JsonKey(
      name: 'returnedDate', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime? get returnedDate => throw _privateConstructorUsedError; //
  @JsonKey(name: 'calculation')
  Calculation get calculation => throw _privateConstructorUsedError; //
  @JsonKey(name: 'reason')
  String get reason => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'publicId')
  int? get publicId => throw _privateConstructorUsedError;
  @JsonKey(name: 'requestAmount')
  int? get requestAmount => throw _privateConstructorUsedError; //
  @JsonKey(
      name: 'requestDate', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime? get requestDate => throw _privateConstructorUsedError; //
  @JsonKey(
      name: 'approveDate', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime? get approveDate => throw _privateConstructorUsedError; //
  @JsonKey(name: 'giveDate', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime? get giveDate => throw _privateConstructorUsedError; //
  @JsonKey(
      name: 'type',
      toJson: availableProductTypeToJson,
      fromJson: availableProductTypeFromJson)
  EnumAvailableProduct get enumAvailableProduct =>
      throw _privateConstructorUsedError;
  @JsonKey(
      name: 'mustPayDate', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime? get mustPayDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'days')
  int get days => throw _privateConstructorUsedError;
  @JsonKey(name: 'days_left')
  int get daysLeft => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'status', toJson: loanStatusToJson, fromJson: loanStatusFromJson)
  EnumLoanStatus get enumLoanStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'smsConfirmed')
  int? get smsConfirmed => throw _privateConstructorUsedError;
  @JsonKey(name: 'currency')
  String get currency => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'total',
      fromJson: convertToNumOrNullFromJson,
      toJson: convertToNumOrNullToJson)
  num? get total => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'mustPayTotal',
      fromJson: convertToNumOrNullFromJson,
      toJson: convertToNumOrNullToJson)
  num? get mustPayTotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'counterOfferAmount')
  int get counterOfferAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'counterOfferAvgAmount')
  int get counterOfferAvgAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'discountCode')
  String get discountCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'collection_agency_in_progress')
  bool? get collectionAgencyInProgress => throw _privateConstructorUsedError;
  @JsonKey(name: 'vacation')
  Vacation? get vacation => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'personal_notification_message',
      fromJson: convertStringOrMapToPersonalNotificationMessageFromJson)
  PersonalNotificationMessage? get personalNotificationMessage =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'agreements')
  ApiAgreements? get agreements => throw _privateConstructorUsedError;
  @JsonKey(name: 'reason_code')
  String get reasonCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'extendable')
  bool? get extendable => throw _privateConstructorUsedError;
  @JsonKey(name: 'autocharge_approval')
  bool? get autochargeApproval => throw _privateConstructorUsedError;
  @JsonKey(name: 'soldInformation')
  SoldInformation get soldInformation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiUserLoanCopyWith<ApiUserLoan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiUserLoanCopyWith<$Res> {
  factory $ApiUserLoanCopyWith(
          ApiUserLoan value, $Res Function(ApiUserLoan) then) =
      _$ApiUserLoanCopyWithImpl<$Res, ApiUserLoan>;
  @useResult
  $Res call(
      {@JsonKey(name: 'nextPaymentAmount') num nextPaymentAmount,
      @JsonKey(name: 'amountToReturnToSchedule') num amountToReturnToSchedule,
      @JsonKey(
          name: 'nextPaymentDate',
          fromJson: dateTimeFromJson,
          toJson: dateTimeToJson)
      DateTime? nextPaymentDate,
      @JsonKey(name: 'daysLate') int daysLate,
      @JsonKey(
          name: 'returnedDate',
          fromJson: dateTimeFromJson,
          toJson: dateTimeToJson)
      DateTime? returnedDate,
      @JsonKey(name: 'calculation') Calculation calculation,
      @JsonKey(name: 'reason') String reason,
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'publicId') int? publicId,
      @JsonKey(name: 'requestAmount') int? requestAmount,
      @JsonKey(name: 'requestDate', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
      DateTime? requestDate,
      @JsonKey(name: 'approveDate', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
      DateTime? approveDate,
      @JsonKey(name: 'giveDate', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
      DateTime? giveDate,
      @JsonKey(
          name: 'type',
          toJson: availableProductTypeToJson,
          fromJson: availableProductTypeFromJson)
      EnumAvailableProduct enumAvailableProduct,
      @JsonKey(name: 'mustPayDate', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
      DateTime? mustPayDate,
      @JsonKey(name: 'days') int days,
      @JsonKey(name: 'days_left') int daysLeft,
      @JsonKey(name: 'status', toJson: loanStatusToJson, fromJson: loanStatusFromJson)
      EnumLoanStatus enumLoanStatus,
      @JsonKey(name: 'smsConfirmed') int? smsConfirmed,
      @JsonKey(name: 'currency') String currency,
      @JsonKey(
          name: 'total',
          fromJson: convertToNumOrNullFromJson,
          toJson: convertToNumOrNullToJson)
      num? total,
      @JsonKey(
          name: 'mustPayTotal',
          fromJson: convertToNumOrNullFromJson,
          toJson: convertToNumOrNullToJson)
      num? mustPayTotal,
      @JsonKey(name: 'counterOfferAmount') int counterOfferAmount,
      @JsonKey(name: 'counterOfferAvgAmount') int counterOfferAvgAmount,
      @JsonKey(name: 'discountCode') String discountCode,
      @JsonKey(name: 'collection_agency_in_progress')
      bool? collectionAgencyInProgress,
      @JsonKey(name: 'vacation') Vacation? vacation,
      @JsonKey(
          name: 'personal_notification_message',
          fromJson: convertStringOrMapToPersonalNotificationMessageFromJson)
      PersonalNotificationMessage? personalNotificationMessage,
      @JsonKey(name: 'agreements') ApiAgreements? agreements,
      @JsonKey(name: 'reason_code') String reasonCode,
      @JsonKey(name: 'extendable') bool? extendable,
      @JsonKey(name: 'autocharge_approval') bool? autochargeApproval,
      @JsonKey(name: 'soldInformation') SoldInformation soldInformation});

  $CalculationCopyWith<$Res> get calculation;
  $VacationCopyWith<$Res>? get vacation;
  $PersonalNotificationMessageCopyWith<$Res>? get personalNotificationMessage;
  $ApiAgreementsCopyWith<$Res>? get agreements;
  $SoldInformationCopyWith<$Res> get soldInformation;
}

/// @nodoc
class _$ApiUserLoanCopyWithImpl<$Res, $Val extends ApiUserLoan>
    implements $ApiUserLoanCopyWith<$Res> {
  _$ApiUserLoanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextPaymentAmount = null,
    Object? amountToReturnToSchedule = null,
    Object? nextPaymentDate = freezed,
    Object? daysLate = null,
    Object? returnedDate = freezed,
    Object? calculation = null,
    Object? reason = null,
    Object? id = null,
    Object? publicId = freezed,
    Object? requestAmount = freezed,
    Object? requestDate = freezed,
    Object? approveDate = freezed,
    Object? giveDate = freezed,
    Object? enumAvailableProduct = null,
    Object? mustPayDate = freezed,
    Object? days = null,
    Object? daysLeft = null,
    Object? enumLoanStatus = null,
    Object? smsConfirmed = freezed,
    Object? currency = null,
    Object? total = freezed,
    Object? mustPayTotal = freezed,
    Object? counterOfferAmount = null,
    Object? counterOfferAvgAmount = null,
    Object? discountCode = null,
    Object? collectionAgencyInProgress = freezed,
    Object? vacation = freezed,
    Object? personalNotificationMessage = freezed,
    Object? agreements = freezed,
    Object? reasonCode = null,
    Object? extendable = freezed,
    Object? autochargeApproval = freezed,
    Object? soldInformation = null,
  }) {
    return _then(_value.copyWith(
      nextPaymentAmount: null == nextPaymentAmount
          ? _value.nextPaymentAmount
          : nextPaymentAmount // ignore: cast_nullable_to_non_nullable
              as num,
      amountToReturnToSchedule: null == amountToReturnToSchedule
          ? _value.amountToReturnToSchedule
          : amountToReturnToSchedule // ignore: cast_nullable_to_non_nullable
              as num,
      nextPaymentDate: freezed == nextPaymentDate
          ? _value.nextPaymentDate
          : nextPaymentDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      daysLate: null == daysLate
          ? _value.daysLate
          : daysLate // ignore: cast_nullable_to_non_nullable
              as int,
      returnedDate: freezed == returnedDate
          ? _value.returnedDate
          : returnedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      calculation: null == calculation
          ? _value.calculation
          : calculation // ignore: cast_nullable_to_non_nullable
              as Calculation,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      publicId: freezed == publicId
          ? _value.publicId
          : publicId // ignore: cast_nullable_to_non_nullable
              as int?,
      requestAmount: freezed == requestAmount
          ? _value.requestAmount
          : requestAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      requestDate: freezed == requestDate
          ? _value.requestDate
          : requestDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      approveDate: freezed == approveDate
          ? _value.approveDate
          : approveDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      giveDate: freezed == giveDate
          ? _value.giveDate
          : giveDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      enumAvailableProduct: null == enumAvailableProduct
          ? _value.enumAvailableProduct
          : enumAvailableProduct // ignore: cast_nullable_to_non_nullable
              as EnumAvailableProduct,
      mustPayDate: freezed == mustPayDate
          ? _value.mustPayDate
          : mustPayDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as int,
      daysLeft: null == daysLeft
          ? _value.daysLeft
          : daysLeft // ignore: cast_nullable_to_non_nullable
              as int,
      enumLoanStatus: null == enumLoanStatus
          ? _value.enumLoanStatus
          : enumLoanStatus // ignore: cast_nullable_to_non_nullable
              as EnumLoanStatus,
      smsConfirmed: freezed == smsConfirmed
          ? _value.smsConfirmed
          : smsConfirmed // ignore: cast_nullable_to_non_nullable
              as int?,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as num?,
      mustPayTotal: freezed == mustPayTotal
          ? _value.mustPayTotal
          : mustPayTotal // ignore: cast_nullable_to_non_nullable
              as num?,
      counterOfferAmount: null == counterOfferAmount
          ? _value.counterOfferAmount
          : counterOfferAmount // ignore: cast_nullable_to_non_nullable
              as int,
      counterOfferAvgAmount: null == counterOfferAvgAmount
          ? _value.counterOfferAvgAmount
          : counterOfferAvgAmount // ignore: cast_nullable_to_non_nullable
              as int,
      discountCode: null == discountCode
          ? _value.discountCode
          : discountCode // ignore: cast_nullable_to_non_nullable
              as String,
      collectionAgencyInProgress: freezed == collectionAgencyInProgress
          ? _value.collectionAgencyInProgress
          : collectionAgencyInProgress // ignore: cast_nullable_to_non_nullable
              as bool?,
      vacation: freezed == vacation
          ? _value.vacation
          : vacation // ignore: cast_nullable_to_non_nullable
              as Vacation?,
      personalNotificationMessage: freezed == personalNotificationMessage
          ? _value.personalNotificationMessage
          : personalNotificationMessage // ignore: cast_nullable_to_non_nullable
              as PersonalNotificationMessage?,
      agreements: freezed == agreements
          ? _value.agreements
          : agreements // ignore: cast_nullable_to_non_nullable
              as ApiAgreements?,
      reasonCode: null == reasonCode
          ? _value.reasonCode
          : reasonCode // ignore: cast_nullable_to_non_nullable
              as String,
      extendable: freezed == extendable
          ? _value.extendable
          : extendable // ignore: cast_nullable_to_non_nullable
              as bool?,
      autochargeApproval: freezed == autochargeApproval
          ? _value.autochargeApproval
          : autochargeApproval // ignore: cast_nullable_to_non_nullable
              as bool?,
      soldInformation: null == soldInformation
          ? _value.soldInformation
          : soldInformation // ignore: cast_nullable_to_non_nullable
              as SoldInformation,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CalculationCopyWith<$Res> get calculation {
    return $CalculationCopyWith<$Res>(_value.calculation, (value) {
      return _then(_value.copyWith(calculation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $VacationCopyWith<$Res>? get vacation {
    if (_value.vacation == null) {
      return null;
    }

    return $VacationCopyWith<$Res>(_value.vacation!, (value) {
      return _then(_value.copyWith(vacation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PersonalNotificationMessageCopyWith<$Res>? get personalNotificationMessage {
    if (_value.personalNotificationMessage == null) {
      return null;
    }

    return $PersonalNotificationMessageCopyWith<$Res>(
        _value.personalNotificationMessage!, (value) {
      return _then(_value.copyWith(personalNotificationMessage: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiAgreementsCopyWith<$Res>? get agreements {
    if (_value.agreements == null) {
      return null;
    }

    return $ApiAgreementsCopyWith<$Res>(_value.agreements!, (value) {
      return _then(_value.copyWith(agreements: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SoldInformationCopyWith<$Res> get soldInformation {
    return $SoldInformationCopyWith<$Res>(_value.soldInformation, (value) {
      return _then(_value.copyWith(soldInformation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ApiUserLoanImplCopyWith<$Res>
    implements $ApiUserLoanCopyWith<$Res> {
  factory _$$ApiUserLoanImplCopyWith(
          _$ApiUserLoanImpl value, $Res Function(_$ApiUserLoanImpl) then) =
      __$$ApiUserLoanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'nextPaymentAmount') num nextPaymentAmount,
      @JsonKey(name: 'amountToReturnToSchedule') num amountToReturnToSchedule,
      @JsonKey(
          name: 'nextPaymentDate',
          fromJson: dateTimeFromJson,
          toJson: dateTimeToJson)
      DateTime? nextPaymentDate,
      @JsonKey(name: 'daysLate') int daysLate,
      @JsonKey(
          name: 'returnedDate',
          fromJson: dateTimeFromJson,
          toJson: dateTimeToJson)
      DateTime? returnedDate,
      @JsonKey(name: 'calculation') Calculation calculation,
      @JsonKey(name: 'reason') String reason,
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'publicId') int? publicId,
      @JsonKey(name: 'requestAmount') int? requestAmount,
      @JsonKey(name: 'requestDate', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
      DateTime? requestDate,
      @JsonKey(name: 'approveDate', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
      DateTime? approveDate,
      @JsonKey(name: 'giveDate', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
      DateTime? giveDate,
      @JsonKey(
          name: 'type',
          toJson: availableProductTypeToJson,
          fromJson: availableProductTypeFromJson)
      EnumAvailableProduct enumAvailableProduct,
      @JsonKey(name: 'mustPayDate', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
      DateTime? mustPayDate,
      @JsonKey(name: 'days') int days,
      @JsonKey(name: 'days_left') int daysLeft,
      @JsonKey(name: 'status', toJson: loanStatusToJson, fromJson: loanStatusFromJson)
      EnumLoanStatus enumLoanStatus,
      @JsonKey(name: 'smsConfirmed') int? smsConfirmed,
      @JsonKey(name: 'currency') String currency,
      @JsonKey(
          name: 'total',
          fromJson: convertToNumOrNullFromJson,
          toJson: convertToNumOrNullToJson)
      num? total,
      @JsonKey(
          name: 'mustPayTotal',
          fromJson: convertToNumOrNullFromJson,
          toJson: convertToNumOrNullToJson)
      num? mustPayTotal,
      @JsonKey(name: 'counterOfferAmount') int counterOfferAmount,
      @JsonKey(name: 'counterOfferAvgAmount') int counterOfferAvgAmount,
      @JsonKey(name: 'discountCode') String discountCode,
      @JsonKey(name: 'collection_agency_in_progress')
      bool? collectionAgencyInProgress,
      @JsonKey(name: 'vacation') Vacation? vacation,
      @JsonKey(
          name: 'personal_notification_message',
          fromJson: convertStringOrMapToPersonalNotificationMessageFromJson)
      PersonalNotificationMessage? personalNotificationMessage,
      @JsonKey(name: 'agreements') ApiAgreements? agreements,
      @JsonKey(name: 'reason_code') String reasonCode,
      @JsonKey(name: 'extendable') bool? extendable,
      @JsonKey(name: 'autocharge_approval') bool? autochargeApproval,
      @JsonKey(name: 'soldInformation') SoldInformation soldInformation});

  @override
  $CalculationCopyWith<$Res> get calculation;
  @override
  $VacationCopyWith<$Res>? get vacation;
  @override
  $PersonalNotificationMessageCopyWith<$Res>? get personalNotificationMessage;
  @override
  $ApiAgreementsCopyWith<$Res>? get agreements;
  @override
  $SoldInformationCopyWith<$Res> get soldInformation;
}

/// @nodoc
class __$$ApiUserLoanImplCopyWithImpl<$Res>
    extends _$ApiUserLoanCopyWithImpl<$Res, _$ApiUserLoanImpl>
    implements _$$ApiUserLoanImplCopyWith<$Res> {
  __$$ApiUserLoanImplCopyWithImpl(
      _$ApiUserLoanImpl _value, $Res Function(_$ApiUserLoanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextPaymentAmount = null,
    Object? amountToReturnToSchedule = null,
    Object? nextPaymentDate = freezed,
    Object? daysLate = null,
    Object? returnedDate = freezed,
    Object? calculation = null,
    Object? reason = null,
    Object? id = null,
    Object? publicId = freezed,
    Object? requestAmount = freezed,
    Object? requestDate = freezed,
    Object? approveDate = freezed,
    Object? giveDate = freezed,
    Object? enumAvailableProduct = null,
    Object? mustPayDate = freezed,
    Object? days = null,
    Object? daysLeft = null,
    Object? enumLoanStatus = null,
    Object? smsConfirmed = freezed,
    Object? currency = null,
    Object? total = freezed,
    Object? mustPayTotal = freezed,
    Object? counterOfferAmount = null,
    Object? counterOfferAvgAmount = null,
    Object? discountCode = null,
    Object? collectionAgencyInProgress = freezed,
    Object? vacation = freezed,
    Object? personalNotificationMessage = freezed,
    Object? agreements = freezed,
    Object? reasonCode = null,
    Object? extendable = freezed,
    Object? autochargeApproval = freezed,
    Object? soldInformation = null,
  }) {
    return _then(_$ApiUserLoanImpl(
      nextPaymentAmount: null == nextPaymentAmount
          ? _value.nextPaymentAmount
          : nextPaymentAmount // ignore: cast_nullable_to_non_nullable
              as num,
      amountToReturnToSchedule: null == amountToReturnToSchedule
          ? _value.amountToReturnToSchedule
          : amountToReturnToSchedule // ignore: cast_nullable_to_non_nullable
              as num,
      nextPaymentDate: freezed == nextPaymentDate
          ? _value.nextPaymentDate
          : nextPaymentDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      daysLate: null == daysLate
          ? _value.daysLate
          : daysLate // ignore: cast_nullable_to_non_nullable
              as int,
      returnedDate: freezed == returnedDate
          ? _value.returnedDate
          : returnedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      calculation: null == calculation
          ? _value.calculation
          : calculation // ignore: cast_nullable_to_non_nullable
              as Calculation,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      publicId: freezed == publicId
          ? _value.publicId
          : publicId // ignore: cast_nullable_to_non_nullable
              as int?,
      requestAmount: freezed == requestAmount
          ? _value.requestAmount
          : requestAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      requestDate: freezed == requestDate
          ? _value.requestDate
          : requestDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      approveDate: freezed == approveDate
          ? _value.approveDate
          : approveDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      giveDate: freezed == giveDate
          ? _value.giveDate
          : giveDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      enumAvailableProduct: null == enumAvailableProduct
          ? _value.enumAvailableProduct
          : enumAvailableProduct // ignore: cast_nullable_to_non_nullable
              as EnumAvailableProduct,
      mustPayDate: freezed == mustPayDate
          ? _value.mustPayDate
          : mustPayDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as int,
      daysLeft: null == daysLeft
          ? _value.daysLeft
          : daysLeft // ignore: cast_nullable_to_non_nullable
              as int,
      enumLoanStatus: null == enumLoanStatus
          ? _value.enumLoanStatus
          : enumLoanStatus // ignore: cast_nullable_to_non_nullable
              as EnumLoanStatus,
      smsConfirmed: freezed == smsConfirmed
          ? _value.smsConfirmed
          : smsConfirmed // ignore: cast_nullable_to_non_nullable
              as int?,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as num?,
      mustPayTotal: freezed == mustPayTotal
          ? _value.mustPayTotal
          : mustPayTotal // ignore: cast_nullable_to_non_nullable
              as num?,
      counterOfferAmount: null == counterOfferAmount
          ? _value.counterOfferAmount
          : counterOfferAmount // ignore: cast_nullable_to_non_nullable
              as int,
      counterOfferAvgAmount: null == counterOfferAvgAmount
          ? _value.counterOfferAvgAmount
          : counterOfferAvgAmount // ignore: cast_nullable_to_non_nullable
              as int,
      discountCode: null == discountCode
          ? _value.discountCode
          : discountCode // ignore: cast_nullable_to_non_nullable
              as String,
      collectionAgencyInProgress: freezed == collectionAgencyInProgress
          ? _value.collectionAgencyInProgress
          : collectionAgencyInProgress // ignore: cast_nullable_to_non_nullable
              as bool?,
      vacation: freezed == vacation
          ? _value.vacation
          : vacation // ignore: cast_nullable_to_non_nullable
              as Vacation?,
      personalNotificationMessage: freezed == personalNotificationMessage
          ? _value.personalNotificationMessage
          : personalNotificationMessage // ignore: cast_nullable_to_non_nullable
              as PersonalNotificationMessage?,
      agreements: freezed == agreements
          ? _value.agreements
          : agreements // ignore: cast_nullable_to_non_nullable
              as ApiAgreements?,
      reasonCode: null == reasonCode
          ? _value.reasonCode
          : reasonCode // ignore: cast_nullable_to_non_nullable
              as String,
      extendable: freezed == extendable
          ? _value.extendable
          : extendable // ignore: cast_nullable_to_non_nullable
              as bool?,
      autochargeApproval: freezed == autochargeApproval
          ? _value.autochargeApproval
          : autochargeApproval // ignore: cast_nullable_to_non_nullable
              as bool?,
      soldInformation: null == soldInformation
          ? _value.soldInformation
          : soldInformation // ignore: cast_nullable_to_non_nullable
              as SoldInformation,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiUserLoanImpl extends _ApiUserLoan {
  const _$ApiUserLoanImpl(
      {@JsonKey(name: 'nextPaymentAmount') this.nextPaymentAmount = 0,
      @JsonKey(name: 'amountToReturnToSchedule')
      this.amountToReturnToSchedule = 0,
      @JsonKey(name: 'nextPaymentDate', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
      this.nextPaymentDate,
      @JsonKey(name: 'daysLate') this.daysLate = 0,
      @JsonKey(name: 'returnedDate', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
      this.returnedDate,
      @JsonKey(name: 'calculation') this.calculation = const Calculation(),
      @JsonKey(name: 'reason') this.reason = '',
      @JsonKey(name: 'id') this.id = 0,
      @JsonKey(name: 'publicId') this.publicId,
      @JsonKey(name: 'requestAmount') this.requestAmount,
      @JsonKey(name: 'requestDate', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
      this.requestDate,
      @JsonKey(name: 'approveDate', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
      this.approveDate,
      @JsonKey(name: 'giveDate', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
      this.giveDate,
      @JsonKey(
          name: 'type',
          toJson: availableProductTypeToJson,
          fromJson: availableProductTypeFromJson)
      this.enumAvailableProduct = EnumAvailableProduct.payday,
      @JsonKey(name: 'mustPayDate', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
      this.mustPayDate,
      @JsonKey(name: 'days') this.days = 0,
      @JsonKey(name: 'days_left') this.daysLeft = 0,
      @JsonKey(name: 'status', toJson: loanStatusToJson, fromJson: loanStatusFromJson)
      this.enumLoanStatus = EnumLoanStatus.unknown,
      @JsonKey(name: 'smsConfirmed') this.smsConfirmed,
      @JsonKey(name: 'currency') this.currency = '',
      @JsonKey(name: 'total', fromJson: convertToNumOrNullFromJson, toJson: convertToNumOrNullToJson)
      this.total,
      @JsonKey(
          name: 'mustPayTotal',
          fromJson: convertToNumOrNullFromJson,
          toJson: convertToNumOrNullToJson)
      this.mustPayTotal,
      @JsonKey(name: 'counterOfferAmount') this.counterOfferAmount = 0,
      @JsonKey(name: 'counterOfferAvgAmount') this.counterOfferAvgAmount = 0,
      @JsonKey(name: 'discountCode') this.discountCode = '',
      @JsonKey(name: 'collection_agency_in_progress')
      this.collectionAgencyInProgress,
      @JsonKey(name: 'vacation') this.vacation,
      @JsonKey(
          name: 'personal_notification_message',
          fromJson: convertStringOrMapToPersonalNotificationMessageFromJson)
      this.personalNotificationMessage,
      @JsonKey(name: 'agreements') this.agreements,
      @JsonKey(name: 'reason_code') this.reasonCode = '',
      @JsonKey(name: 'extendable') this.extendable,
      @JsonKey(name: 'autocharge_approval') this.autochargeApproval,
      @JsonKey(name: 'soldInformation')
      this.soldInformation = const SoldInformation()})
      : super._();

  factory _$ApiUserLoanImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiUserLoanImplFromJson(json);

  @override
  @JsonKey(name: 'nextPaymentAmount')
  final num nextPaymentAmount;
//
  @override
  @JsonKey(name: 'amountToReturnToSchedule')
  final num amountToReturnToSchedule;
//
  @override
  @JsonKey(
      name: 'nextPaymentDate',
      fromJson: dateTimeFromJson,
      toJson: dateTimeToJson)
  final DateTime? nextPaymentDate;
//
  @override
  @JsonKey(name: 'daysLate')
  final int daysLate;
//
  @override
  @JsonKey(
      name: 'returnedDate', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  final DateTime? returnedDate;
//
  @override
  @JsonKey(name: 'calculation')
  final Calculation calculation;
//
  @override
  @JsonKey(name: 'reason')
  final String reason;
  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'publicId')
  final int? publicId;
  @override
  @JsonKey(name: 'requestAmount')
  final int? requestAmount;
//
  @override
  @JsonKey(
      name: 'requestDate', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  final DateTime? requestDate;
//
  @override
  @JsonKey(
      name: 'approveDate', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  final DateTime? approveDate;
//
  @override
  @JsonKey(name: 'giveDate', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  final DateTime? giveDate;
//
  @override
  @JsonKey(
      name: 'type',
      toJson: availableProductTypeToJson,
      fromJson: availableProductTypeFromJson)
  final EnumAvailableProduct enumAvailableProduct;
  @override
  @JsonKey(
      name: 'mustPayDate', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  final DateTime? mustPayDate;
  @override
  @JsonKey(name: 'days')
  final int days;
  @override
  @JsonKey(name: 'days_left')
  final int daysLeft;
  @override
  @JsonKey(
      name: 'status', toJson: loanStatusToJson, fromJson: loanStatusFromJson)
  final EnumLoanStatus enumLoanStatus;
  @override
  @JsonKey(name: 'smsConfirmed')
  final int? smsConfirmed;
  @override
  @JsonKey(name: 'currency')
  final String currency;
  @override
  @JsonKey(
      name: 'total',
      fromJson: convertToNumOrNullFromJson,
      toJson: convertToNumOrNullToJson)
  final num? total;
  @override
  @JsonKey(
      name: 'mustPayTotal',
      fromJson: convertToNumOrNullFromJson,
      toJson: convertToNumOrNullToJson)
  final num? mustPayTotal;
  @override
  @JsonKey(name: 'counterOfferAmount')
  final int counterOfferAmount;
  @override
  @JsonKey(name: 'counterOfferAvgAmount')
  final int counterOfferAvgAmount;
  @override
  @JsonKey(name: 'discountCode')
  final String discountCode;
  @override
  @JsonKey(name: 'collection_agency_in_progress')
  final bool? collectionAgencyInProgress;
  @override
  @JsonKey(name: 'vacation')
  final Vacation? vacation;
  @override
  @JsonKey(
      name: 'personal_notification_message',
      fromJson: convertStringOrMapToPersonalNotificationMessageFromJson)
  final PersonalNotificationMessage? personalNotificationMessage;
  @override
  @JsonKey(name: 'agreements')
  final ApiAgreements? agreements;
  @override
  @JsonKey(name: 'reason_code')
  final String reasonCode;
  @override
  @JsonKey(name: 'extendable')
  final bool? extendable;
  @override
  @JsonKey(name: 'autocharge_approval')
  final bool? autochargeApproval;
  @override
  @JsonKey(name: 'soldInformation')
  final SoldInformation soldInformation;

  @override
  String toString() {
    return 'ApiUserLoan(nextPaymentAmount: $nextPaymentAmount, amountToReturnToSchedule: $amountToReturnToSchedule, nextPaymentDate: $nextPaymentDate, daysLate: $daysLate, returnedDate: $returnedDate, calculation: $calculation, reason: $reason, id: $id, publicId: $publicId, requestAmount: $requestAmount, requestDate: $requestDate, approveDate: $approveDate, giveDate: $giveDate, enumAvailableProduct: $enumAvailableProduct, mustPayDate: $mustPayDate, days: $days, daysLeft: $daysLeft, enumLoanStatus: $enumLoanStatus, smsConfirmed: $smsConfirmed, currency: $currency, total: $total, mustPayTotal: $mustPayTotal, counterOfferAmount: $counterOfferAmount, counterOfferAvgAmount: $counterOfferAvgAmount, discountCode: $discountCode, collectionAgencyInProgress: $collectionAgencyInProgress, vacation: $vacation, personalNotificationMessage: $personalNotificationMessage, agreements: $agreements, reasonCode: $reasonCode, extendable: $extendable, autochargeApproval: $autochargeApproval, soldInformation: $soldInformation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiUserLoanImpl &&
            (identical(other.nextPaymentAmount, nextPaymentAmount) ||
                other.nextPaymentAmount == nextPaymentAmount) &&
            (identical(
                    other.amountToReturnToSchedule, amountToReturnToSchedule) ||
                other.amountToReturnToSchedule == amountToReturnToSchedule) &&
            (identical(other.nextPaymentDate, nextPaymentDate) ||
                other.nextPaymentDate == nextPaymentDate) &&
            (identical(other.daysLate, daysLate) ||
                other.daysLate == daysLate) &&
            (identical(other.returnedDate, returnedDate) ||
                other.returnedDate == returnedDate) &&
            (identical(other.calculation, calculation) ||
                other.calculation == calculation) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.publicId, publicId) ||
                other.publicId == publicId) &&
            (identical(other.requestAmount, requestAmount) ||
                other.requestAmount == requestAmount) &&
            (identical(other.requestDate, requestDate) ||
                other.requestDate == requestDate) &&
            (identical(other.approveDate, approveDate) ||
                other.approveDate == approveDate) &&
            (identical(other.giveDate, giveDate) ||
                other.giveDate == giveDate) &&
            (identical(other.enumAvailableProduct, enumAvailableProduct) ||
                other.enumAvailableProduct == enumAvailableProduct) &&
            (identical(other.mustPayDate, mustPayDate) ||
                other.mustPayDate == mustPayDate) &&
            (identical(other.days, days) || other.days == days) &&
            (identical(other.daysLeft, daysLeft) ||
                other.daysLeft == daysLeft) &&
            (identical(other.enumLoanStatus, enumLoanStatus) ||
                other.enumLoanStatus == enumLoanStatus) &&
            (identical(other.smsConfirmed, smsConfirmed) ||
                other.smsConfirmed == smsConfirmed) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.mustPayTotal, mustPayTotal) ||
                other.mustPayTotal == mustPayTotal) &&
            (identical(other.counterOfferAmount, counterOfferAmount) ||
                other.counterOfferAmount == counterOfferAmount) &&
            (identical(other.counterOfferAvgAmount, counterOfferAvgAmount) ||
                other.counterOfferAvgAmount == counterOfferAvgAmount) &&
            (identical(other.discountCode, discountCode) ||
                other.discountCode == discountCode) &&
            (identical(other.collectionAgencyInProgress, collectionAgencyInProgress) ||
                other.collectionAgencyInProgress ==
                    collectionAgencyInProgress) &&
            (identical(other.vacation, vacation) ||
                other.vacation == vacation) &&
            (identical(other.personalNotificationMessage, personalNotificationMessage) ||
                other.personalNotificationMessage ==
                    personalNotificationMessage) &&
            (identical(other.agreements, agreements) ||
                other.agreements == agreements) &&
            (identical(other.reasonCode, reasonCode) ||
                other.reasonCode == reasonCode) &&
            (identical(other.extendable, extendable) ||
                other.extendable == extendable) &&
            (identical(other.autochargeApproval, autochargeApproval) ||
                other.autochargeApproval == autochargeApproval) &&
            (identical(other.soldInformation, soldInformation) ||
                other.soldInformation == soldInformation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        nextPaymentAmount,
        amountToReturnToSchedule,
        nextPaymentDate,
        daysLate,
        returnedDate,
        calculation,
        reason,
        id,
        publicId,
        requestAmount,
        requestDate,
        approveDate,
        giveDate,
        enumAvailableProduct,
        mustPayDate,
        days,
        daysLeft,
        enumLoanStatus,
        smsConfirmed,
        currency,
        total,
        mustPayTotal,
        counterOfferAmount,
        counterOfferAvgAmount,
        discountCode,
        collectionAgencyInProgress,
        vacation,
        personalNotificationMessage,
        agreements,
        reasonCode,
        extendable,
        autochargeApproval,
        soldInformation
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiUserLoanImplCopyWith<_$ApiUserLoanImpl> get copyWith =>
      __$$ApiUserLoanImplCopyWithImpl<_$ApiUserLoanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiUserLoanImplToJson(
      this,
    );
  }
}

abstract class _ApiUserLoan extends ApiUserLoan {
  const factory _ApiUserLoan(
      {@JsonKey(name: 'nextPaymentAmount') final num nextPaymentAmount,
      @JsonKey(name: 'amountToReturnToSchedule')
      final num amountToReturnToSchedule,
      @JsonKey(
          name: 'nextPaymentDate',
          fromJson: dateTimeFromJson,
          toJson: dateTimeToJson)
      final DateTime? nextPaymentDate,
      @JsonKey(name: 'daysLate') final int daysLate,
      @JsonKey(
          name: 'returnedDate',
          fromJson: dateTimeFromJson,
          toJson: dateTimeToJson)
      final DateTime? returnedDate,
      @JsonKey(name: 'calculation') final Calculation calculation,
      @JsonKey(name: 'reason') final String reason,
      @JsonKey(name: 'id') final int id,
      @JsonKey(name: 'publicId') final int? publicId,
      @JsonKey(name: 'requestAmount') final int? requestAmount,
      @JsonKey(name: 'requestDate', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
      final DateTime? requestDate,
      @JsonKey(name: 'approveDate', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
      final DateTime? approveDate,
      @JsonKey(name: 'giveDate', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
      final DateTime? giveDate,
      @JsonKey(
          name: 'type',
          toJson: availableProductTypeToJson,
          fromJson: availableProductTypeFromJson)
      final EnumAvailableProduct enumAvailableProduct,
      @JsonKey(name: 'mustPayDate', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
      final DateTime? mustPayDate,
      @JsonKey(name: 'days') final int days,
      @JsonKey(name: 'days_left') final int daysLeft,
      @JsonKey(name: 'status', toJson: loanStatusToJson, fromJson: loanStatusFromJson)
      final EnumLoanStatus enumLoanStatus,
      @JsonKey(name: 'smsConfirmed') final int? smsConfirmed,
      @JsonKey(name: 'currency') final String currency,
      @JsonKey(
          name: 'total',
          fromJson: convertToNumOrNullFromJson,
          toJson: convertToNumOrNullToJson)
      final num? total,
      @JsonKey(
          name: 'mustPayTotal',
          fromJson: convertToNumOrNullFromJson,
          toJson: convertToNumOrNullToJson)
      final num? mustPayTotal,
      @JsonKey(name: 'counterOfferAmount') final int counterOfferAmount,
      @JsonKey(name: 'counterOfferAvgAmount') final int counterOfferAvgAmount,
      @JsonKey(name: 'discountCode') final String discountCode,
      @JsonKey(name: 'collection_agency_in_progress')
      final bool? collectionAgencyInProgress,
      @JsonKey(name: 'vacation') final Vacation? vacation,
      @JsonKey(
          name: 'personal_notification_message',
          fromJson: convertStringOrMapToPersonalNotificationMessageFromJson)
      final PersonalNotificationMessage? personalNotificationMessage,
      @JsonKey(name: 'agreements') final ApiAgreements? agreements,
      @JsonKey(name: 'reason_code') final String reasonCode,
      @JsonKey(name: 'extendable') final bool? extendable,
      @JsonKey(name: 'autocharge_approval') final bool? autochargeApproval,
      @JsonKey(name: 'soldInformation')
      final SoldInformation soldInformation}) = _$ApiUserLoanImpl;
  const _ApiUserLoan._() : super._();

  factory _ApiUserLoan.fromJson(Map<String, dynamic> json) =
      _$ApiUserLoanImpl.fromJson;

  @override
  @JsonKey(name: 'nextPaymentAmount')
  num get nextPaymentAmount;
  @override //
  @JsonKey(name: 'amountToReturnToSchedule')
  num get amountToReturnToSchedule;
  @override //
  @JsonKey(
      name: 'nextPaymentDate',
      fromJson: dateTimeFromJson,
      toJson: dateTimeToJson)
  DateTime? get nextPaymentDate;
  @override //
  @JsonKey(name: 'daysLate')
  int get daysLate;
  @override //
  @JsonKey(
      name: 'returnedDate', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime? get returnedDate;
  @override //
  @JsonKey(name: 'calculation')
  Calculation get calculation;
  @override //
  @JsonKey(name: 'reason')
  String get reason;
  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'publicId')
  int? get publicId;
  @override
  @JsonKey(name: 'requestAmount')
  int? get requestAmount;
  @override //
  @JsonKey(
      name: 'requestDate', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime? get requestDate;
  @override //
  @JsonKey(
      name: 'approveDate', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime? get approveDate;
  @override //
  @JsonKey(name: 'giveDate', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime? get giveDate;
  @override //
  @JsonKey(
      name: 'type',
      toJson: availableProductTypeToJson,
      fromJson: availableProductTypeFromJson)
  EnumAvailableProduct get enumAvailableProduct;
  @override
  @JsonKey(
      name: 'mustPayDate', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime? get mustPayDate;
  @override
  @JsonKey(name: 'days')
  int get days;
  @override
  @JsonKey(name: 'days_left')
  int get daysLeft;
  @override
  @JsonKey(
      name: 'status', toJson: loanStatusToJson, fromJson: loanStatusFromJson)
  EnumLoanStatus get enumLoanStatus;
  @override
  @JsonKey(name: 'smsConfirmed')
  int? get smsConfirmed;
  @override
  @JsonKey(name: 'currency')
  String get currency;
  @override
  @JsonKey(
      name: 'total',
      fromJson: convertToNumOrNullFromJson,
      toJson: convertToNumOrNullToJson)
  num? get total;
  @override
  @JsonKey(
      name: 'mustPayTotal',
      fromJson: convertToNumOrNullFromJson,
      toJson: convertToNumOrNullToJson)
  num? get mustPayTotal;
  @override
  @JsonKey(name: 'counterOfferAmount')
  int get counterOfferAmount;
  @override
  @JsonKey(name: 'counterOfferAvgAmount')
  int get counterOfferAvgAmount;
  @override
  @JsonKey(name: 'discountCode')
  String get discountCode;
  @override
  @JsonKey(name: 'collection_agency_in_progress')
  bool? get collectionAgencyInProgress;
  @override
  @JsonKey(name: 'vacation')
  Vacation? get vacation;
  @override
  @JsonKey(
      name: 'personal_notification_message',
      fromJson: convertStringOrMapToPersonalNotificationMessageFromJson)
  PersonalNotificationMessage? get personalNotificationMessage;
  @override
  @JsonKey(name: 'agreements')
  ApiAgreements? get agreements;
  @override
  @JsonKey(name: 'reason_code')
  String get reasonCode;
  @override
  @JsonKey(name: 'extendable')
  bool? get extendable;
  @override
  @JsonKey(name: 'autocharge_approval')
  bool? get autochargeApproval;
  @override
  @JsonKey(name: 'soldInformation')
  SoldInformation get soldInformation;
  @override
  @JsonKey(ignore: true)
  _$$ApiUserLoanImplCopyWith<_$ApiUserLoanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PersonalNotificationMessage _$PersonalNotificationMessageFromJson(
    Map<String, dynamic> json) {
  return _PersonalNotificationMessage.fromJson(json);
}

/// @nodoc
mixin _$PersonalNotificationMessage {
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonalNotificationMessageCopyWith<PersonalNotificationMessage>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonalNotificationMessageCopyWith<$Res> {
  factory $PersonalNotificationMessageCopyWith(
          PersonalNotificationMessage value,
          $Res Function(PersonalNotificationMessage) then) =
      _$PersonalNotificationMessageCopyWithImpl<$Res,
          PersonalNotificationMessage>;
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class _$PersonalNotificationMessageCopyWithImpl<$Res,
        $Val extends PersonalNotificationMessage>
    implements $PersonalNotificationMessageCopyWith<$Res> {
  _$PersonalNotificationMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PersonalNotificationMessageImplCopyWith<$Res>
    implements $PersonalNotificationMessageCopyWith<$Res> {
  factory _$$PersonalNotificationMessageImplCopyWith(
          _$PersonalNotificationMessageImpl value,
          $Res Function(_$PersonalNotificationMessageImpl) then) =
      __$$PersonalNotificationMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class __$$PersonalNotificationMessageImplCopyWithImpl<$Res>
    extends _$PersonalNotificationMessageCopyWithImpl<$Res,
        _$PersonalNotificationMessageImpl>
    implements _$$PersonalNotificationMessageImplCopyWith<$Res> {
  __$$PersonalNotificationMessageImplCopyWithImpl(
      _$PersonalNotificationMessageImpl _value,
      $Res Function(_$PersonalNotificationMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? message = freezed,
  }) {
    return _then(_$PersonalNotificationMessageImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PersonalNotificationMessageImpl
    implements _PersonalNotificationMessage {
  const _$PersonalNotificationMessageImpl(
      {@JsonKey(name: 'title') this.title,
      @JsonKey(name: 'message') this.message});

  factory _$PersonalNotificationMessageImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PersonalNotificationMessageImplFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'PersonalNotificationMessage(title: $title, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonalNotificationMessageImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonalNotificationMessageImplCopyWith<_$PersonalNotificationMessageImpl>
      get copyWith => __$$PersonalNotificationMessageImplCopyWithImpl<
          _$PersonalNotificationMessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PersonalNotificationMessageImplToJson(
      this,
    );
  }
}

abstract class _PersonalNotificationMessage
    implements PersonalNotificationMessage {
  const factory _PersonalNotificationMessage(
          {@JsonKey(name: 'title') final String? title,
          @JsonKey(name: 'message') final String? message}) =
      _$PersonalNotificationMessageImpl;

  factory _PersonalNotificationMessage.fromJson(Map<String, dynamic> json) =
      _$PersonalNotificationMessageImpl.fromJson;

  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$PersonalNotificationMessageImplCopyWith<_$PersonalNotificationMessageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Vacation _$VacationFromJson(Map<String, dynamic> json) {
  return _Vacation.fromJson(json);
}

/// @nodoc
mixin _$Vacation {
  @JsonKey(
      name: 'status',
      toJson: vacationStatusToJson,
      fromJson: vacationStatusFromJson)
  EnumVacationStatus get enumVacationStatus =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'has_documents')
  bool get hasDocuments => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'date_from', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime? get dateFrom => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_to', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime? get dateTo => throw _privateConstructorUsedError;
  @JsonKey(name: 'commission_before')
  num? get commissionBefore => throw _privateConstructorUsedError;
  @JsonKey(name: 'fine_before')
  num? get fineBefore => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_days')
  int get currentDays => throw _privateConstructorUsedError;
  @JsonKey(name: 'days')
  int get days => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_on_overdue_period')
  bool get startOnOverduePeriod => throw _privateConstructorUsedError;
  @JsonKey(name: 'must_pay_with_docs')
  num? get mustPayWithDocs => throw _privateConstructorUsedError;
  @JsonKey(name: 'commission_with_docs')
  num? get commissionWithDocs => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_commission_with_docs')
  num? get currentCommissioWithDocs => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_must_pay_with_docs')
  num? get currentMustPayWithDocs => throw _privateConstructorUsedError;
  @JsonKey(name: 'must_pay_without_docs')
  num? get mustPayWithoutDocs => throw _privateConstructorUsedError;
  @JsonKey(name: 'commission_without_docs')
  num? get commissionWithoutDocs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VacationCopyWith<Vacation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VacationCopyWith<$Res> {
  factory $VacationCopyWith(Vacation value, $Res Function(Vacation) then) =
      _$VacationCopyWithImpl<$Res, Vacation>;
  @useResult
  $Res call(
      {@JsonKey(
          name: 'status',
          toJson: vacationStatusToJson,
          fromJson: vacationStatusFromJson)
      EnumVacationStatus enumVacationStatus,
      @JsonKey(name: 'has_documents') bool hasDocuments,
      @JsonKey(
          name: 'date_from', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
      DateTime? dateFrom,
      @JsonKey(
          name: 'date_to', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
      DateTime? dateTo,
      @JsonKey(name: 'commission_before') num? commissionBefore,
      @JsonKey(name: 'fine_before') num? fineBefore,
      @JsonKey(name: 'current_days') int currentDays,
      @JsonKey(name: 'days') int days,
      @JsonKey(name: 'start_on_overdue_period') bool startOnOverduePeriod,
      @JsonKey(name: 'must_pay_with_docs') num? mustPayWithDocs,
      @JsonKey(name: 'commission_with_docs') num? commissionWithDocs,
      @JsonKey(name: 'current_commission_with_docs')
      num? currentCommissioWithDocs,
      @JsonKey(name: 'current_must_pay_with_docs') num? currentMustPayWithDocs,
      @JsonKey(name: 'must_pay_without_docs') num? mustPayWithoutDocs,
      @JsonKey(name: 'commission_without_docs') num? commissionWithoutDocs});
}

/// @nodoc
class _$VacationCopyWithImpl<$Res, $Val extends Vacation>
    implements $VacationCopyWith<$Res> {
  _$VacationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enumVacationStatus = null,
    Object? hasDocuments = null,
    Object? dateFrom = freezed,
    Object? dateTo = freezed,
    Object? commissionBefore = freezed,
    Object? fineBefore = freezed,
    Object? currentDays = null,
    Object? days = null,
    Object? startOnOverduePeriod = null,
    Object? mustPayWithDocs = freezed,
    Object? commissionWithDocs = freezed,
    Object? currentCommissioWithDocs = freezed,
    Object? currentMustPayWithDocs = freezed,
    Object? mustPayWithoutDocs = freezed,
    Object? commissionWithoutDocs = freezed,
  }) {
    return _then(_value.copyWith(
      enumVacationStatus: null == enumVacationStatus
          ? _value.enumVacationStatus
          : enumVacationStatus // ignore: cast_nullable_to_non_nullable
              as EnumVacationStatus,
      hasDocuments: null == hasDocuments
          ? _value.hasDocuments
          : hasDocuments // ignore: cast_nullable_to_non_nullable
              as bool,
      dateFrom: freezed == dateFrom
          ? _value.dateFrom
          : dateFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateTo: freezed == dateTo
          ? _value.dateTo
          : dateTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      commissionBefore: freezed == commissionBefore
          ? _value.commissionBefore
          : commissionBefore // ignore: cast_nullable_to_non_nullable
              as num?,
      fineBefore: freezed == fineBefore
          ? _value.fineBefore
          : fineBefore // ignore: cast_nullable_to_non_nullable
              as num?,
      currentDays: null == currentDays
          ? _value.currentDays
          : currentDays // ignore: cast_nullable_to_non_nullable
              as int,
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as int,
      startOnOverduePeriod: null == startOnOverduePeriod
          ? _value.startOnOverduePeriod
          : startOnOverduePeriod // ignore: cast_nullable_to_non_nullable
              as bool,
      mustPayWithDocs: freezed == mustPayWithDocs
          ? _value.mustPayWithDocs
          : mustPayWithDocs // ignore: cast_nullable_to_non_nullable
              as num?,
      commissionWithDocs: freezed == commissionWithDocs
          ? _value.commissionWithDocs
          : commissionWithDocs // ignore: cast_nullable_to_non_nullable
              as num?,
      currentCommissioWithDocs: freezed == currentCommissioWithDocs
          ? _value.currentCommissioWithDocs
          : currentCommissioWithDocs // ignore: cast_nullable_to_non_nullable
              as num?,
      currentMustPayWithDocs: freezed == currentMustPayWithDocs
          ? _value.currentMustPayWithDocs
          : currentMustPayWithDocs // ignore: cast_nullable_to_non_nullable
              as num?,
      mustPayWithoutDocs: freezed == mustPayWithoutDocs
          ? _value.mustPayWithoutDocs
          : mustPayWithoutDocs // ignore: cast_nullable_to_non_nullable
              as num?,
      commissionWithoutDocs: freezed == commissionWithoutDocs
          ? _value.commissionWithoutDocs
          : commissionWithoutDocs // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VacationImplCopyWith<$Res>
    implements $VacationCopyWith<$Res> {
  factory _$$VacationImplCopyWith(
          _$VacationImpl value, $Res Function(_$VacationImpl) then) =
      __$$VacationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(
          name: 'status',
          toJson: vacationStatusToJson,
          fromJson: vacationStatusFromJson)
      EnumVacationStatus enumVacationStatus,
      @JsonKey(name: 'has_documents') bool hasDocuments,
      @JsonKey(
          name: 'date_from', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
      DateTime? dateFrom,
      @JsonKey(
          name: 'date_to', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
      DateTime? dateTo,
      @JsonKey(name: 'commission_before') num? commissionBefore,
      @JsonKey(name: 'fine_before') num? fineBefore,
      @JsonKey(name: 'current_days') int currentDays,
      @JsonKey(name: 'days') int days,
      @JsonKey(name: 'start_on_overdue_period') bool startOnOverduePeriod,
      @JsonKey(name: 'must_pay_with_docs') num? mustPayWithDocs,
      @JsonKey(name: 'commission_with_docs') num? commissionWithDocs,
      @JsonKey(name: 'current_commission_with_docs')
      num? currentCommissioWithDocs,
      @JsonKey(name: 'current_must_pay_with_docs') num? currentMustPayWithDocs,
      @JsonKey(name: 'must_pay_without_docs') num? mustPayWithoutDocs,
      @JsonKey(name: 'commission_without_docs') num? commissionWithoutDocs});
}

/// @nodoc
class __$$VacationImplCopyWithImpl<$Res>
    extends _$VacationCopyWithImpl<$Res, _$VacationImpl>
    implements _$$VacationImplCopyWith<$Res> {
  __$$VacationImplCopyWithImpl(
      _$VacationImpl _value, $Res Function(_$VacationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enumVacationStatus = null,
    Object? hasDocuments = null,
    Object? dateFrom = freezed,
    Object? dateTo = freezed,
    Object? commissionBefore = freezed,
    Object? fineBefore = freezed,
    Object? currentDays = null,
    Object? days = null,
    Object? startOnOverduePeriod = null,
    Object? mustPayWithDocs = freezed,
    Object? commissionWithDocs = freezed,
    Object? currentCommissioWithDocs = freezed,
    Object? currentMustPayWithDocs = freezed,
    Object? mustPayWithoutDocs = freezed,
    Object? commissionWithoutDocs = freezed,
  }) {
    return _then(_$VacationImpl(
      enumVacationStatus: null == enumVacationStatus
          ? _value.enumVacationStatus
          : enumVacationStatus // ignore: cast_nullable_to_non_nullable
              as EnumVacationStatus,
      hasDocuments: null == hasDocuments
          ? _value.hasDocuments
          : hasDocuments // ignore: cast_nullable_to_non_nullable
              as bool,
      dateFrom: freezed == dateFrom
          ? _value.dateFrom
          : dateFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateTo: freezed == dateTo
          ? _value.dateTo
          : dateTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      commissionBefore: freezed == commissionBefore
          ? _value.commissionBefore
          : commissionBefore // ignore: cast_nullable_to_non_nullable
              as num?,
      fineBefore: freezed == fineBefore
          ? _value.fineBefore
          : fineBefore // ignore: cast_nullable_to_non_nullable
              as num?,
      currentDays: null == currentDays
          ? _value.currentDays
          : currentDays // ignore: cast_nullable_to_non_nullable
              as int,
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as int,
      startOnOverduePeriod: null == startOnOverduePeriod
          ? _value.startOnOverduePeriod
          : startOnOverduePeriod // ignore: cast_nullable_to_non_nullable
              as bool,
      mustPayWithDocs: freezed == mustPayWithDocs
          ? _value.mustPayWithDocs
          : mustPayWithDocs // ignore: cast_nullable_to_non_nullable
              as num?,
      commissionWithDocs: freezed == commissionWithDocs
          ? _value.commissionWithDocs
          : commissionWithDocs // ignore: cast_nullable_to_non_nullable
              as num?,
      currentCommissioWithDocs: freezed == currentCommissioWithDocs
          ? _value.currentCommissioWithDocs
          : currentCommissioWithDocs // ignore: cast_nullable_to_non_nullable
              as num?,
      currentMustPayWithDocs: freezed == currentMustPayWithDocs
          ? _value.currentMustPayWithDocs
          : currentMustPayWithDocs // ignore: cast_nullable_to_non_nullable
              as num?,
      mustPayWithoutDocs: freezed == mustPayWithoutDocs
          ? _value.mustPayWithoutDocs
          : mustPayWithoutDocs // ignore: cast_nullable_to_non_nullable
              as num?,
      commissionWithoutDocs: freezed == commissionWithoutDocs
          ? _value.commissionWithoutDocs
          : commissionWithoutDocs // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VacationImpl implements _Vacation {
  const _$VacationImpl(
      {@JsonKey(
          name: 'status',
          toJson: vacationStatusToJson,
          fromJson: vacationStatusFromJson)
      this.enumVacationStatus = EnumVacationStatus.inActive,
      @JsonKey(name: 'has_documents') this.hasDocuments = false,
      @JsonKey(
          name: 'date_from', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
      this.dateFrom,
      @JsonKey(
          name: 'date_to', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
      this.dateTo,
      @JsonKey(name: 'commission_before') this.commissionBefore,
      @JsonKey(name: 'fine_before') this.fineBefore,
      @JsonKey(name: 'current_days') this.currentDays = 0,
      @JsonKey(name: 'days') this.days = 0,
      @JsonKey(name: 'start_on_overdue_period')
      this.startOnOverduePeriod = false,
      @JsonKey(name: 'must_pay_with_docs') this.mustPayWithDocs,
      @JsonKey(name: 'commission_with_docs') this.commissionWithDocs,
      @JsonKey(name: 'current_commission_with_docs')
      this.currentCommissioWithDocs,
      @JsonKey(name: 'current_must_pay_with_docs') this.currentMustPayWithDocs,
      @JsonKey(name: 'must_pay_without_docs') this.mustPayWithoutDocs,
      @JsonKey(name: 'commission_without_docs') this.commissionWithoutDocs});

  factory _$VacationImpl.fromJson(Map<String, dynamic> json) =>
      _$$VacationImplFromJson(json);

  @override
  @JsonKey(
      name: 'status',
      toJson: vacationStatusToJson,
      fromJson: vacationStatusFromJson)
  final EnumVacationStatus enumVacationStatus;
  @override
  @JsonKey(name: 'has_documents')
  final bool hasDocuments;
  @override
  @JsonKey(
      name: 'date_from', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  final DateTime? dateFrom;
  @override
  @JsonKey(name: 'date_to', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  final DateTime? dateTo;
  @override
  @JsonKey(name: 'commission_before')
  final num? commissionBefore;
  @override
  @JsonKey(name: 'fine_before')
  final num? fineBefore;
  @override
  @JsonKey(name: 'current_days')
  final int currentDays;
  @override
  @JsonKey(name: 'days')
  final int days;
  @override
  @JsonKey(name: 'start_on_overdue_period')
  final bool startOnOverduePeriod;
  @override
  @JsonKey(name: 'must_pay_with_docs')
  final num? mustPayWithDocs;
  @override
  @JsonKey(name: 'commission_with_docs')
  final num? commissionWithDocs;
  @override
  @JsonKey(name: 'current_commission_with_docs')
  final num? currentCommissioWithDocs;
  @override
  @JsonKey(name: 'current_must_pay_with_docs')
  final num? currentMustPayWithDocs;
  @override
  @JsonKey(name: 'must_pay_without_docs')
  final num? mustPayWithoutDocs;
  @override
  @JsonKey(name: 'commission_without_docs')
  final num? commissionWithoutDocs;

  @override
  String toString() {
    return 'Vacation(enumVacationStatus: $enumVacationStatus, hasDocuments: $hasDocuments, dateFrom: $dateFrom, dateTo: $dateTo, commissionBefore: $commissionBefore, fineBefore: $fineBefore, currentDays: $currentDays, days: $days, startOnOverduePeriod: $startOnOverduePeriod, mustPayWithDocs: $mustPayWithDocs, commissionWithDocs: $commissionWithDocs, currentCommissioWithDocs: $currentCommissioWithDocs, currentMustPayWithDocs: $currentMustPayWithDocs, mustPayWithoutDocs: $mustPayWithoutDocs, commissionWithoutDocs: $commissionWithoutDocs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VacationImpl &&
            (identical(other.enumVacationStatus, enumVacationStatus) ||
                other.enumVacationStatus == enumVacationStatus) &&
            (identical(other.hasDocuments, hasDocuments) ||
                other.hasDocuments == hasDocuments) &&
            (identical(other.dateFrom, dateFrom) ||
                other.dateFrom == dateFrom) &&
            (identical(other.dateTo, dateTo) || other.dateTo == dateTo) &&
            (identical(other.commissionBefore, commissionBefore) ||
                other.commissionBefore == commissionBefore) &&
            (identical(other.fineBefore, fineBefore) ||
                other.fineBefore == fineBefore) &&
            (identical(other.currentDays, currentDays) ||
                other.currentDays == currentDays) &&
            (identical(other.days, days) || other.days == days) &&
            (identical(other.startOnOverduePeriod, startOnOverduePeriod) ||
                other.startOnOverduePeriod == startOnOverduePeriod) &&
            (identical(other.mustPayWithDocs, mustPayWithDocs) ||
                other.mustPayWithDocs == mustPayWithDocs) &&
            (identical(other.commissionWithDocs, commissionWithDocs) ||
                other.commissionWithDocs == commissionWithDocs) &&
            (identical(
                    other.currentCommissioWithDocs, currentCommissioWithDocs) ||
                other.currentCommissioWithDocs == currentCommissioWithDocs) &&
            (identical(other.currentMustPayWithDocs, currentMustPayWithDocs) ||
                other.currentMustPayWithDocs == currentMustPayWithDocs) &&
            (identical(other.mustPayWithoutDocs, mustPayWithoutDocs) ||
                other.mustPayWithoutDocs == mustPayWithoutDocs) &&
            (identical(other.commissionWithoutDocs, commissionWithoutDocs) ||
                other.commissionWithoutDocs == commissionWithoutDocs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      enumVacationStatus,
      hasDocuments,
      dateFrom,
      dateTo,
      commissionBefore,
      fineBefore,
      currentDays,
      days,
      startOnOverduePeriod,
      mustPayWithDocs,
      commissionWithDocs,
      currentCommissioWithDocs,
      currentMustPayWithDocs,
      mustPayWithoutDocs,
      commissionWithoutDocs);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VacationImplCopyWith<_$VacationImpl> get copyWith =>
      __$$VacationImplCopyWithImpl<_$VacationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VacationImplToJson(
      this,
    );
  }
}

abstract class _Vacation implements Vacation {
  const factory _Vacation(
      {@JsonKey(
          name: 'status',
          toJson: vacationStatusToJson,
          fromJson: vacationStatusFromJson)
      final EnumVacationStatus enumVacationStatus,
      @JsonKey(name: 'has_documents') final bool hasDocuments,
      @JsonKey(
          name: 'date_from', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
      final DateTime? dateFrom,
      @JsonKey(
          name: 'date_to', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
      final DateTime? dateTo,
      @JsonKey(name: 'commission_before') final num? commissionBefore,
      @JsonKey(name: 'fine_before') final num? fineBefore,
      @JsonKey(name: 'current_days') final int currentDays,
      @JsonKey(name: 'days') final int days,
      @JsonKey(name: 'start_on_overdue_period') final bool startOnOverduePeriod,
      @JsonKey(name: 'must_pay_with_docs') final num? mustPayWithDocs,
      @JsonKey(name: 'commission_with_docs') final num? commissionWithDocs,
      @JsonKey(name: 'current_commission_with_docs')
      final num? currentCommissioWithDocs,
      @JsonKey(name: 'current_must_pay_with_docs')
      final num? currentMustPayWithDocs,
      @JsonKey(name: 'must_pay_without_docs') final num? mustPayWithoutDocs,
      @JsonKey(name: 'commission_without_docs')
      final num? commissionWithoutDocs}) = _$VacationImpl;

  factory _Vacation.fromJson(Map<String, dynamic> json) =
      _$VacationImpl.fromJson;

  @override
  @JsonKey(
      name: 'status',
      toJson: vacationStatusToJson,
      fromJson: vacationStatusFromJson)
  EnumVacationStatus get enumVacationStatus;
  @override
  @JsonKey(name: 'has_documents')
  bool get hasDocuments;
  @override
  @JsonKey(
      name: 'date_from', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime? get dateFrom;
  @override
  @JsonKey(name: 'date_to', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime? get dateTo;
  @override
  @JsonKey(name: 'commission_before')
  num? get commissionBefore;
  @override
  @JsonKey(name: 'fine_before')
  num? get fineBefore;
  @override
  @JsonKey(name: 'current_days')
  int get currentDays;
  @override
  @JsonKey(name: 'days')
  int get days;
  @override
  @JsonKey(name: 'start_on_overdue_period')
  bool get startOnOverduePeriod;
  @override
  @JsonKey(name: 'must_pay_with_docs')
  num? get mustPayWithDocs;
  @override
  @JsonKey(name: 'commission_with_docs')
  num? get commissionWithDocs;
  @override
  @JsonKey(name: 'current_commission_with_docs')
  num? get currentCommissioWithDocs;
  @override
  @JsonKey(name: 'current_must_pay_with_docs')
  num? get currentMustPayWithDocs;
  @override
  @JsonKey(name: 'must_pay_without_docs')
  num? get mustPayWithoutDocs;
  @override
  @JsonKey(name: 'commission_without_docs')
  num? get commissionWithoutDocs;
  @override
  @JsonKey(ignore: true)
  _$$VacationImplCopyWith<_$VacationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Calculation _$CalculationFromJson(Map<String, dynamic> json) {
  return _Calculation.fromJson(json);
}

/// @nodoc
mixin _$Calculation {
  @JsonKey(name: 'body')
  num? get body => throw _privateConstructorUsedError;
  @JsonKey(name: 'commission')
  num? get commission => throw _privateConstructorUsedError;
  @JsonKey(name: 'extra_commission')
  num? get extraCommission => throw _privateConstructorUsedError;
  @JsonKey(name: 'vacation_commission')
  num? get vacationCommission => throw _privateConstructorUsedError;
  @JsonKey(name: 'giveout_commission')
  num? get giveoutCommission => throw _privateConstructorUsedError;
  @JsonKey(name: 'annual_commission')
  num? get annualCommission => throw _privateConstructorUsedError;
  @JsonKey(name: 'monthly_commission')
  num? get monthlyCommission => throw _privateConstructorUsedError;
  @JsonKey(name: 'fine')
  num? get fine => throw _privateConstructorUsedError;
  @JsonKey(name: 'extra_fine')
  num? get extraFine => throw _privateConstructorUsedError;
  @JsonKey(name: 'fixed')
  num? get fixed => throw _privateConstructorUsedError;
  @JsonKey(name: 'deposit')
  num? get deposit => throw _privateConstructorUsedError;
  @JsonKey(name: 'total')
  Total? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CalculationCopyWith<Calculation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalculationCopyWith<$Res> {
  factory $CalculationCopyWith(
          Calculation value, $Res Function(Calculation) then) =
      _$CalculationCopyWithImpl<$Res, Calculation>;
  @useResult
  $Res call(
      {@JsonKey(name: 'body') num? body,
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
      @JsonKey(name: 'total') Total? total});

  $TotalCopyWith<$Res>? get total;
}

/// @nodoc
class _$CalculationCopyWithImpl<$Res, $Val extends Calculation>
    implements $CalculationCopyWith<$Res> {
  _$CalculationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? body = freezed,
    Object? commission = freezed,
    Object? extraCommission = freezed,
    Object? vacationCommission = freezed,
    Object? giveoutCommission = freezed,
    Object? annualCommission = freezed,
    Object? monthlyCommission = freezed,
    Object? fine = freezed,
    Object? extraFine = freezed,
    Object? fixed = freezed,
    Object? deposit = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as num?,
      commission: freezed == commission
          ? _value.commission
          : commission // ignore: cast_nullable_to_non_nullable
              as num?,
      extraCommission: freezed == extraCommission
          ? _value.extraCommission
          : extraCommission // ignore: cast_nullable_to_non_nullable
              as num?,
      vacationCommission: freezed == vacationCommission
          ? _value.vacationCommission
          : vacationCommission // ignore: cast_nullable_to_non_nullable
              as num?,
      giveoutCommission: freezed == giveoutCommission
          ? _value.giveoutCommission
          : giveoutCommission // ignore: cast_nullable_to_non_nullable
              as num?,
      annualCommission: freezed == annualCommission
          ? _value.annualCommission
          : annualCommission // ignore: cast_nullable_to_non_nullable
              as num?,
      monthlyCommission: freezed == monthlyCommission
          ? _value.monthlyCommission
          : monthlyCommission // ignore: cast_nullable_to_non_nullable
              as num?,
      fine: freezed == fine
          ? _value.fine
          : fine // ignore: cast_nullable_to_non_nullable
              as num?,
      extraFine: freezed == extraFine
          ? _value.extraFine
          : extraFine // ignore: cast_nullable_to_non_nullable
              as num?,
      fixed: freezed == fixed
          ? _value.fixed
          : fixed // ignore: cast_nullable_to_non_nullable
              as num?,
      deposit: freezed == deposit
          ? _value.deposit
          : deposit // ignore: cast_nullable_to_non_nullable
              as num?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as Total?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TotalCopyWith<$Res>? get total {
    if (_value.total == null) {
      return null;
    }

    return $TotalCopyWith<$Res>(_value.total!, (value) {
      return _then(_value.copyWith(total: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CalculationImplCopyWith<$Res>
    implements $CalculationCopyWith<$Res> {
  factory _$$CalculationImplCopyWith(
          _$CalculationImpl value, $Res Function(_$CalculationImpl) then) =
      __$$CalculationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'body') num? body,
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
      @JsonKey(name: 'total') Total? total});

  @override
  $TotalCopyWith<$Res>? get total;
}

/// @nodoc
class __$$CalculationImplCopyWithImpl<$Res>
    extends _$CalculationCopyWithImpl<$Res, _$CalculationImpl>
    implements _$$CalculationImplCopyWith<$Res> {
  __$$CalculationImplCopyWithImpl(
      _$CalculationImpl _value, $Res Function(_$CalculationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? body = freezed,
    Object? commission = freezed,
    Object? extraCommission = freezed,
    Object? vacationCommission = freezed,
    Object? giveoutCommission = freezed,
    Object? annualCommission = freezed,
    Object? monthlyCommission = freezed,
    Object? fine = freezed,
    Object? extraFine = freezed,
    Object? fixed = freezed,
    Object? deposit = freezed,
    Object? total = freezed,
  }) {
    return _then(_$CalculationImpl(
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as num?,
      commission: freezed == commission
          ? _value.commission
          : commission // ignore: cast_nullable_to_non_nullable
              as num?,
      extraCommission: freezed == extraCommission
          ? _value.extraCommission
          : extraCommission // ignore: cast_nullable_to_non_nullable
              as num?,
      vacationCommission: freezed == vacationCommission
          ? _value.vacationCommission
          : vacationCommission // ignore: cast_nullable_to_non_nullable
              as num?,
      giveoutCommission: freezed == giveoutCommission
          ? _value.giveoutCommission
          : giveoutCommission // ignore: cast_nullable_to_non_nullable
              as num?,
      annualCommission: freezed == annualCommission
          ? _value.annualCommission
          : annualCommission // ignore: cast_nullable_to_non_nullable
              as num?,
      monthlyCommission: freezed == monthlyCommission
          ? _value.monthlyCommission
          : monthlyCommission // ignore: cast_nullable_to_non_nullable
              as num?,
      fine: freezed == fine
          ? _value.fine
          : fine // ignore: cast_nullable_to_non_nullable
              as num?,
      extraFine: freezed == extraFine
          ? _value.extraFine
          : extraFine // ignore: cast_nullable_to_non_nullable
              as num?,
      fixed: freezed == fixed
          ? _value.fixed
          : fixed // ignore: cast_nullable_to_non_nullable
              as num?,
      deposit: freezed == deposit
          ? _value.deposit
          : deposit // ignore: cast_nullable_to_non_nullable
              as num?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as Total?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CalculationImpl implements _Calculation {
  const _$CalculationImpl(
      {@JsonKey(name: 'body') this.body,
      @JsonKey(name: 'commission') this.commission,
      @JsonKey(name: 'extra_commission') this.extraCommission,
      @JsonKey(name: 'vacation_commission') this.vacationCommission,
      @JsonKey(name: 'giveout_commission') this.giveoutCommission,
      @JsonKey(name: 'annual_commission') this.annualCommission,
      @JsonKey(name: 'monthly_commission') this.monthlyCommission,
      @JsonKey(name: 'fine') this.fine,
      @JsonKey(name: 'extra_fine') this.extraFine,
      @JsonKey(name: 'fixed') this.fixed,
      @JsonKey(name: 'deposit') this.deposit,
      @JsonKey(name: 'total') this.total});

  factory _$CalculationImpl.fromJson(Map<String, dynamic> json) =>
      _$$CalculationImplFromJson(json);

  @override
  @JsonKey(name: 'body')
  final num? body;
  @override
  @JsonKey(name: 'commission')
  final num? commission;
  @override
  @JsonKey(name: 'extra_commission')
  final num? extraCommission;
  @override
  @JsonKey(name: 'vacation_commission')
  final num? vacationCommission;
  @override
  @JsonKey(name: 'giveout_commission')
  final num? giveoutCommission;
  @override
  @JsonKey(name: 'annual_commission')
  final num? annualCommission;
  @override
  @JsonKey(name: 'monthly_commission')
  final num? monthlyCommission;
  @override
  @JsonKey(name: 'fine')
  final num? fine;
  @override
  @JsonKey(name: 'extra_fine')
  final num? extraFine;
  @override
  @JsonKey(name: 'fixed')
  final num? fixed;
  @override
  @JsonKey(name: 'deposit')
  final num? deposit;
  @override
  @JsonKey(name: 'total')
  final Total? total;

  @override
  String toString() {
    return 'Calculation(body: $body, commission: $commission, extraCommission: $extraCommission, vacationCommission: $vacationCommission, giveoutCommission: $giveoutCommission, annualCommission: $annualCommission, monthlyCommission: $monthlyCommission, fine: $fine, extraFine: $extraFine, fixed: $fixed, deposit: $deposit, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalculationImpl &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.commission, commission) ||
                other.commission == commission) &&
            (identical(other.extraCommission, extraCommission) ||
                other.extraCommission == extraCommission) &&
            (identical(other.vacationCommission, vacationCommission) ||
                other.vacationCommission == vacationCommission) &&
            (identical(other.giveoutCommission, giveoutCommission) ||
                other.giveoutCommission == giveoutCommission) &&
            (identical(other.annualCommission, annualCommission) ||
                other.annualCommission == annualCommission) &&
            (identical(other.monthlyCommission, monthlyCommission) ||
                other.monthlyCommission == monthlyCommission) &&
            (identical(other.fine, fine) || other.fine == fine) &&
            (identical(other.extraFine, extraFine) ||
                other.extraFine == extraFine) &&
            (identical(other.fixed, fixed) || other.fixed == fixed) &&
            (identical(other.deposit, deposit) || other.deposit == deposit) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      body,
      commission,
      extraCommission,
      vacationCommission,
      giveoutCommission,
      annualCommission,
      monthlyCommission,
      fine,
      extraFine,
      fixed,
      deposit,
      total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CalculationImplCopyWith<_$CalculationImpl> get copyWith =>
      __$$CalculationImplCopyWithImpl<_$CalculationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CalculationImplToJson(
      this,
    );
  }
}

abstract class _Calculation implements Calculation {
  const factory _Calculation(
      {@JsonKey(name: 'body') final num? body,
      @JsonKey(name: 'commission') final num? commission,
      @JsonKey(name: 'extra_commission') final num? extraCommission,
      @JsonKey(name: 'vacation_commission') final num? vacationCommission,
      @JsonKey(name: 'giveout_commission') final num? giveoutCommission,
      @JsonKey(name: 'annual_commission') final num? annualCommission,
      @JsonKey(name: 'monthly_commission') final num? monthlyCommission,
      @JsonKey(name: 'fine') final num? fine,
      @JsonKey(name: 'extra_fine') final num? extraFine,
      @JsonKey(name: 'fixed') final num? fixed,
      @JsonKey(name: 'deposit') final num? deposit,
      @JsonKey(name: 'total') final Total? total}) = _$CalculationImpl;

  factory _Calculation.fromJson(Map<String, dynamic> json) =
      _$CalculationImpl.fromJson;

  @override
  @JsonKey(name: 'body')
  num? get body;
  @override
  @JsonKey(name: 'commission')
  num? get commission;
  @override
  @JsonKey(name: 'extra_commission')
  num? get extraCommission;
  @override
  @JsonKey(name: 'vacation_commission')
  num? get vacationCommission;
  @override
  @JsonKey(name: 'giveout_commission')
  num? get giveoutCommission;
  @override
  @JsonKey(name: 'annual_commission')
  num? get annualCommission;
  @override
  @JsonKey(name: 'monthly_commission')
  num? get monthlyCommission;
  @override
  @JsonKey(name: 'fine')
  num? get fine;
  @override
  @JsonKey(name: 'extra_fine')
  num? get extraFine;
  @override
  @JsonKey(name: 'fixed')
  num? get fixed;
  @override
  @JsonKey(name: 'deposit')
  num? get deposit;
  @override
  @JsonKey(name: 'total')
  Total? get total;
  @override
  @JsonKey(ignore: true)
  _$$CalculationImplCopyWith<_$CalculationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Total _$TotalFromJson(Map<String, dynamic> json) {
  return _Total.fromJson(json);
}

/// @nodoc
mixin _$Total {
  @JsonKey(name: 'commission')
  num? get commission => throw _privateConstructorUsedError;
  @JsonKey(name: 'fine')
  num? get fine => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TotalCopyWith<Total> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TotalCopyWith<$Res> {
  factory $TotalCopyWith(Total value, $Res Function(Total) then) =
      _$TotalCopyWithImpl<$Res, Total>;
  @useResult
  $Res call(
      {@JsonKey(name: 'commission') num? commission,
      @JsonKey(name: 'fine') num? fine});
}

/// @nodoc
class _$TotalCopyWithImpl<$Res, $Val extends Total>
    implements $TotalCopyWith<$Res> {
  _$TotalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commission = freezed,
    Object? fine = freezed,
  }) {
    return _then(_value.copyWith(
      commission: freezed == commission
          ? _value.commission
          : commission // ignore: cast_nullable_to_non_nullable
              as num?,
      fine: freezed == fine
          ? _value.fine
          : fine // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TotalImplCopyWith<$Res> implements $TotalCopyWith<$Res> {
  factory _$$TotalImplCopyWith(
          _$TotalImpl value, $Res Function(_$TotalImpl) then) =
      __$$TotalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'commission') num? commission,
      @JsonKey(name: 'fine') num? fine});
}

/// @nodoc
class __$$TotalImplCopyWithImpl<$Res>
    extends _$TotalCopyWithImpl<$Res, _$TotalImpl>
    implements _$$TotalImplCopyWith<$Res> {
  __$$TotalImplCopyWithImpl(
      _$TotalImpl _value, $Res Function(_$TotalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commission = freezed,
    Object? fine = freezed,
  }) {
    return _then(_$TotalImpl(
      commission: freezed == commission
          ? _value.commission
          : commission // ignore: cast_nullable_to_non_nullable
              as num?,
      fine: freezed == fine
          ? _value.fine
          : fine // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TotalImpl implements _Total {
  const _$TotalImpl(
      {@JsonKey(name: 'commission') this.commission,
      @JsonKey(name: 'fine') this.fine});

  factory _$TotalImpl.fromJson(Map<String, dynamic> json) =>
      _$$TotalImplFromJson(json);

  @override
  @JsonKey(name: 'commission')
  final num? commission;
  @override
  @JsonKey(name: 'fine')
  final num? fine;

  @override
  String toString() {
    return 'Total(commission: $commission, fine: $fine)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TotalImpl &&
            (identical(other.commission, commission) ||
                other.commission == commission) &&
            (identical(other.fine, fine) || other.fine == fine));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, commission, fine);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TotalImplCopyWith<_$TotalImpl> get copyWith =>
      __$$TotalImplCopyWithImpl<_$TotalImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TotalImplToJson(
      this,
    );
  }
}

abstract class _Total implements Total {
  const factory _Total(
      {@JsonKey(name: 'commission') final num? commission,
      @JsonKey(name: 'fine') final num? fine}) = _$TotalImpl;

  factory _Total.fromJson(Map<String, dynamic> json) = _$TotalImpl.fromJson;

  @override
  @JsonKey(name: 'commission')
  num? get commission;
  @override
  @JsonKey(name: 'fine')
  num? get fine;
  @override
  @JsonKey(ignore: true)
  _$$TotalImplCopyWith<_$TotalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SoldInformation _$SoldInformationFromJson(Map<String, dynamic> json) {
  return _SoldInformation.fromJson(json);
}

/// @nodoc
mixin _$SoldInformation {
  @JsonKey(name: 'assignmentClaimDate')
  String get assignmentClaimDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount')
  num? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'inn')
  String get inn => throw _privateConstructorUsedError;
  @JsonKey(name: 'ogrn')
  String get ogrn => throw _privateConstructorUsedError;
  @JsonKey(name: 'okpo')
  String get okpo => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'legalAddress')
  String get legalAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'bankDetails')
  String get bankDetails => throw _privateConstructorUsedError;
  @JsonKey(name: 'thirdPersonFullName')
  String get thirdPersonFullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'thirdPersonPhone')
  String get thirdPersonPhone => throw _privateConstructorUsedError;
  @JsonKey(name: 'thirdPersonDirector')
  String get thirdPersonDirector => throw _privateConstructorUsedError;
  @JsonKey(name: 'mustPayTotal')
  num? get mustPayTotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'mustPayCommission')
  num? get mustPayCommission => throw _privateConstructorUsedError;
  @JsonKey(name: 'mustPayFine')
  num? get mustPayFine => throw _privateConstructorUsedError;
  @JsonKey(name: 'mustPayBody')
  num? get mustPayBody => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SoldInformationCopyWith<SoldInformation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SoldInformationCopyWith<$Res> {
  factory $SoldInformationCopyWith(
          SoldInformation value, $Res Function(SoldInformation) then) =
      _$SoldInformationCopyWithImpl<$Res, SoldInformation>;
  @useResult
  $Res call(
      {@JsonKey(name: 'assignmentClaimDate') String assignmentClaimDate,
      @JsonKey(name: 'amount') num? amount,
      @JsonKey(name: 'inn') String inn,
      @JsonKey(name: 'ogrn') String ogrn,
      @JsonKey(name: 'okpo') String okpo,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'legalAddress') String legalAddress,
      @JsonKey(name: 'bankDetails') String bankDetails,
      @JsonKey(name: 'thirdPersonFullName') String thirdPersonFullName,
      @JsonKey(name: 'thirdPersonPhone') String thirdPersonPhone,
      @JsonKey(name: 'thirdPersonDirector') String thirdPersonDirector,
      @JsonKey(name: 'mustPayTotal') num? mustPayTotal,
      @JsonKey(name: 'mustPayCommission') num? mustPayCommission,
      @JsonKey(name: 'mustPayFine') num? mustPayFine,
      @JsonKey(name: 'mustPayBody') num? mustPayBody});
}

/// @nodoc
class _$SoldInformationCopyWithImpl<$Res, $Val extends SoldInformation>
    implements $SoldInformationCopyWith<$Res> {
  _$SoldInformationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assignmentClaimDate = null,
    Object? amount = freezed,
    Object? inn = null,
    Object? ogrn = null,
    Object? okpo = null,
    Object? address = null,
    Object? legalAddress = null,
    Object? bankDetails = null,
    Object? thirdPersonFullName = null,
    Object? thirdPersonPhone = null,
    Object? thirdPersonDirector = null,
    Object? mustPayTotal = freezed,
    Object? mustPayCommission = freezed,
    Object? mustPayFine = freezed,
    Object? mustPayBody = freezed,
  }) {
    return _then(_value.copyWith(
      assignmentClaimDate: null == assignmentClaimDate
          ? _value.assignmentClaimDate
          : assignmentClaimDate // ignore: cast_nullable_to_non_nullable
              as String,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num?,
      inn: null == inn
          ? _value.inn
          : inn // ignore: cast_nullable_to_non_nullable
              as String,
      ogrn: null == ogrn
          ? _value.ogrn
          : ogrn // ignore: cast_nullable_to_non_nullable
              as String,
      okpo: null == okpo
          ? _value.okpo
          : okpo // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      legalAddress: null == legalAddress
          ? _value.legalAddress
          : legalAddress // ignore: cast_nullable_to_non_nullable
              as String,
      bankDetails: null == bankDetails
          ? _value.bankDetails
          : bankDetails // ignore: cast_nullable_to_non_nullable
              as String,
      thirdPersonFullName: null == thirdPersonFullName
          ? _value.thirdPersonFullName
          : thirdPersonFullName // ignore: cast_nullable_to_non_nullable
              as String,
      thirdPersonPhone: null == thirdPersonPhone
          ? _value.thirdPersonPhone
          : thirdPersonPhone // ignore: cast_nullable_to_non_nullable
              as String,
      thirdPersonDirector: null == thirdPersonDirector
          ? _value.thirdPersonDirector
          : thirdPersonDirector // ignore: cast_nullable_to_non_nullable
              as String,
      mustPayTotal: freezed == mustPayTotal
          ? _value.mustPayTotal
          : mustPayTotal // ignore: cast_nullable_to_non_nullable
              as num?,
      mustPayCommission: freezed == mustPayCommission
          ? _value.mustPayCommission
          : mustPayCommission // ignore: cast_nullable_to_non_nullable
              as num?,
      mustPayFine: freezed == mustPayFine
          ? _value.mustPayFine
          : mustPayFine // ignore: cast_nullable_to_non_nullable
              as num?,
      mustPayBody: freezed == mustPayBody
          ? _value.mustPayBody
          : mustPayBody // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SoldInformationImplCopyWith<$Res>
    implements $SoldInformationCopyWith<$Res> {
  factory _$$SoldInformationImplCopyWith(_$SoldInformationImpl value,
          $Res Function(_$SoldInformationImpl) then) =
      __$$SoldInformationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'assignmentClaimDate') String assignmentClaimDate,
      @JsonKey(name: 'amount') num? amount,
      @JsonKey(name: 'inn') String inn,
      @JsonKey(name: 'ogrn') String ogrn,
      @JsonKey(name: 'okpo') String okpo,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'legalAddress') String legalAddress,
      @JsonKey(name: 'bankDetails') String bankDetails,
      @JsonKey(name: 'thirdPersonFullName') String thirdPersonFullName,
      @JsonKey(name: 'thirdPersonPhone') String thirdPersonPhone,
      @JsonKey(name: 'thirdPersonDirector') String thirdPersonDirector,
      @JsonKey(name: 'mustPayTotal') num? mustPayTotal,
      @JsonKey(name: 'mustPayCommission') num? mustPayCommission,
      @JsonKey(name: 'mustPayFine') num? mustPayFine,
      @JsonKey(name: 'mustPayBody') num? mustPayBody});
}

/// @nodoc
class __$$SoldInformationImplCopyWithImpl<$Res>
    extends _$SoldInformationCopyWithImpl<$Res, _$SoldInformationImpl>
    implements _$$SoldInformationImplCopyWith<$Res> {
  __$$SoldInformationImplCopyWithImpl(
      _$SoldInformationImpl _value, $Res Function(_$SoldInformationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assignmentClaimDate = null,
    Object? amount = freezed,
    Object? inn = null,
    Object? ogrn = null,
    Object? okpo = null,
    Object? address = null,
    Object? legalAddress = null,
    Object? bankDetails = null,
    Object? thirdPersonFullName = null,
    Object? thirdPersonPhone = null,
    Object? thirdPersonDirector = null,
    Object? mustPayTotal = freezed,
    Object? mustPayCommission = freezed,
    Object? mustPayFine = freezed,
    Object? mustPayBody = freezed,
  }) {
    return _then(_$SoldInformationImpl(
      assignmentClaimDate: null == assignmentClaimDate
          ? _value.assignmentClaimDate
          : assignmentClaimDate // ignore: cast_nullable_to_non_nullable
              as String,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num?,
      inn: null == inn
          ? _value.inn
          : inn // ignore: cast_nullable_to_non_nullable
              as String,
      ogrn: null == ogrn
          ? _value.ogrn
          : ogrn // ignore: cast_nullable_to_non_nullable
              as String,
      okpo: null == okpo
          ? _value.okpo
          : okpo // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      legalAddress: null == legalAddress
          ? _value.legalAddress
          : legalAddress // ignore: cast_nullable_to_non_nullable
              as String,
      bankDetails: null == bankDetails
          ? _value.bankDetails
          : bankDetails // ignore: cast_nullable_to_non_nullable
              as String,
      thirdPersonFullName: null == thirdPersonFullName
          ? _value.thirdPersonFullName
          : thirdPersonFullName // ignore: cast_nullable_to_non_nullable
              as String,
      thirdPersonPhone: null == thirdPersonPhone
          ? _value.thirdPersonPhone
          : thirdPersonPhone // ignore: cast_nullable_to_non_nullable
              as String,
      thirdPersonDirector: null == thirdPersonDirector
          ? _value.thirdPersonDirector
          : thirdPersonDirector // ignore: cast_nullable_to_non_nullable
              as String,
      mustPayTotal: freezed == mustPayTotal
          ? _value.mustPayTotal
          : mustPayTotal // ignore: cast_nullable_to_non_nullable
              as num?,
      mustPayCommission: freezed == mustPayCommission
          ? _value.mustPayCommission
          : mustPayCommission // ignore: cast_nullable_to_non_nullable
              as num?,
      mustPayFine: freezed == mustPayFine
          ? _value.mustPayFine
          : mustPayFine // ignore: cast_nullable_to_non_nullable
              as num?,
      mustPayBody: freezed == mustPayBody
          ? _value.mustPayBody
          : mustPayBody // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SoldInformationImpl implements _SoldInformation {
  const _$SoldInformationImpl(
      {@JsonKey(name: 'assignmentClaimDate') this.assignmentClaimDate = '',
      @JsonKey(name: 'amount') this.amount,
      @JsonKey(name: 'inn') this.inn = '',
      @JsonKey(name: 'ogrn') this.ogrn = '',
      @JsonKey(name: 'okpo') this.okpo = '',
      @JsonKey(name: 'address') this.address = '',
      @JsonKey(name: 'legalAddress') this.legalAddress = '',
      @JsonKey(name: 'bankDetails') this.bankDetails = '',
      @JsonKey(name: 'thirdPersonFullName') this.thirdPersonFullName = '',
      @JsonKey(name: 'thirdPersonPhone') this.thirdPersonPhone = '',
      @JsonKey(name: 'thirdPersonDirector') this.thirdPersonDirector = '',
      @JsonKey(name: 'mustPayTotal') this.mustPayTotal,
      @JsonKey(name: 'mustPayCommission') this.mustPayCommission,
      @JsonKey(name: 'mustPayFine') this.mustPayFine,
      @JsonKey(name: 'mustPayBody') this.mustPayBody});

  factory _$SoldInformationImpl.fromJson(Map<String, dynamic> json) =>
      _$$SoldInformationImplFromJson(json);

  @override
  @JsonKey(name: 'assignmentClaimDate')
  final String assignmentClaimDate;
  @override
  @JsonKey(name: 'amount')
  final num? amount;
  @override
  @JsonKey(name: 'inn')
  final String inn;
  @override
  @JsonKey(name: 'ogrn')
  final String ogrn;
  @override
  @JsonKey(name: 'okpo')
  final String okpo;
  @override
  @JsonKey(name: 'address')
  final String address;
  @override
  @JsonKey(name: 'legalAddress')
  final String legalAddress;
  @override
  @JsonKey(name: 'bankDetails')
  final String bankDetails;
  @override
  @JsonKey(name: 'thirdPersonFullName')
  final String thirdPersonFullName;
  @override
  @JsonKey(name: 'thirdPersonPhone')
  final String thirdPersonPhone;
  @override
  @JsonKey(name: 'thirdPersonDirector')
  final String thirdPersonDirector;
  @override
  @JsonKey(name: 'mustPayTotal')
  final num? mustPayTotal;
  @override
  @JsonKey(name: 'mustPayCommission')
  final num? mustPayCommission;
  @override
  @JsonKey(name: 'mustPayFine')
  final num? mustPayFine;
  @override
  @JsonKey(name: 'mustPayBody')
  final num? mustPayBody;

  @override
  String toString() {
    return 'SoldInformation(assignmentClaimDate: $assignmentClaimDate, amount: $amount, inn: $inn, ogrn: $ogrn, okpo: $okpo, address: $address, legalAddress: $legalAddress, bankDetails: $bankDetails, thirdPersonFullName: $thirdPersonFullName, thirdPersonPhone: $thirdPersonPhone, thirdPersonDirector: $thirdPersonDirector, mustPayTotal: $mustPayTotal, mustPayCommission: $mustPayCommission, mustPayFine: $mustPayFine, mustPayBody: $mustPayBody)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SoldInformationImpl &&
            (identical(other.assignmentClaimDate, assignmentClaimDate) ||
                other.assignmentClaimDate == assignmentClaimDate) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.inn, inn) || other.inn == inn) &&
            (identical(other.ogrn, ogrn) || other.ogrn == ogrn) &&
            (identical(other.okpo, okpo) || other.okpo == okpo) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.legalAddress, legalAddress) ||
                other.legalAddress == legalAddress) &&
            (identical(other.bankDetails, bankDetails) ||
                other.bankDetails == bankDetails) &&
            (identical(other.thirdPersonFullName, thirdPersonFullName) ||
                other.thirdPersonFullName == thirdPersonFullName) &&
            (identical(other.thirdPersonPhone, thirdPersonPhone) ||
                other.thirdPersonPhone == thirdPersonPhone) &&
            (identical(other.thirdPersonDirector, thirdPersonDirector) ||
                other.thirdPersonDirector == thirdPersonDirector) &&
            (identical(other.mustPayTotal, mustPayTotal) ||
                other.mustPayTotal == mustPayTotal) &&
            (identical(other.mustPayCommission, mustPayCommission) ||
                other.mustPayCommission == mustPayCommission) &&
            (identical(other.mustPayFine, mustPayFine) ||
                other.mustPayFine == mustPayFine) &&
            (identical(other.mustPayBody, mustPayBody) ||
                other.mustPayBody == mustPayBody));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      assignmentClaimDate,
      amount,
      inn,
      ogrn,
      okpo,
      address,
      legalAddress,
      bankDetails,
      thirdPersonFullName,
      thirdPersonPhone,
      thirdPersonDirector,
      mustPayTotal,
      mustPayCommission,
      mustPayFine,
      mustPayBody);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SoldInformationImplCopyWith<_$SoldInformationImpl> get copyWith =>
      __$$SoldInformationImplCopyWithImpl<_$SoldInformationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SoldInformationImplToJson(
      this,
    );
  }
}

abstract class _SoldInformation implements SoldInformation {
  const factory _SoldInformation(
      {@JsonKey(name: 'assignmentClaimDate') final String assignmentClaimDate,
      @JsonKey(name: 'amount') final num? amount,
      @JsonKey(name: 'inn') final String inn,
      @JsonKey(name: 'ogrn') final String ogrn,
      @JsonKey(name: 'okpo') final String okpo,
      @JsonKey(name: 'address') final String address,
      @JsonKey(name: 'legalAddress') final String legalAddress,
      @JsonKey(name: 'bankDetails') final String bankDetails,
      @JsonKey(name: 'thirdPersonFullName') final String thirdPersonFullName,
      @JsonKey(name: 'thirdPersonPhone') final String thirdPersonPhone,
      @JsonKey(name: 'thirdPersonDirector') final String thirdPersonDirector,
      @JsonKey(name: 'mustPayTotal') final num? mustPayTotal,
      @JsonKey(name: 'mustPayCommission') final num? mustPayCommission,
      @JsonKey(name: 'mustPayFine') final num? mustPayFine,
      @JsonKey(name: 'mustPayBody')
      final num? mustPayBody}) = _$SoldInformationImpl;

  factory _SoldInformation.fromJson(Map<String, dynamic> json) =
      _$SoldInformationImpl.fromJson;

  @override
  @JsonKey(name: 'assignmentClaimDate')
  String get assignmentClaimDate;
  @override
  @JsonKey(name: 'amount')
  num? get amount;
  @override
  @JsonKey(name: 'inn')
  String get inn;
  @override
  @JsonKey(name: 'ogrn')
  String get ogrn;
  @override
  @JsonKey(name: 'okpo')
  String get okpo;
  @override
  @JsonKey(name: 'address')
  String get address;
  @override
  @JsonKey(name: 'legalAddress')
  String get legalAddress;
  @override
  @JsonKey(name: 'bankDetails')
  String get bankDetails;
  @override
  @JsonKey(name: 'thirdPersonFullName')
  String get thirdPersonFullName;
  @override
  @JsonKey(name: 'thirdPersonPhone')
  String get thirdPersonPhone;
  @override
  @JsonKey(name: 'thirdPersonDirector')
  String get thirdPersonDirector;
  @override
  @JsonKey(name: 'mustPayTotal')
  num? get mustPayTotal;
  @override
  @JsonKey(name: 'mustPayCommission')
  num? get mustPayCommission;
  @override
  @JsonKey(name: 'mustPayFine')
  num? get mustPayFine;
  @override
  @JsonKey(name: 'mustPayBody')
  num? get mustPayBody;
  @override
  @JsonKey(ignore: true)
  _$$SoldInformationImplCopyWith<_$SoldInformationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
