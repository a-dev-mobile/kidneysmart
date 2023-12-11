// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_payment_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiPaymentHistoryImpl _$$ApiPaymentHistoryImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiPaymentHistoryImpl(
      loanId: json['loan_id'] as int? ?? 0,
      createdAt: dateTimeFromJson(json['created_at'] as String?),
      operatedAt: dateTimeFromJson(json['operated_at'] as String?),
      amount: json['amount'] == null
          ? 0
          : convertToNumOrZeroFromJson(json['amount']),
      title: json['title'] as String? ?? '',
    );

Map<String, dynamic> _$$ApiPaymentHistoryImplToJson(
        _$ApiPaymentHistoryImpl instance) =>
    <String, dynamic>{
      'loan_id': instance.loanId,
      'created_at': dateTimeToJson(instance.createdAt),
      'operated_at': dateTimeToJson(instance.operatedAt),
      'amount': convertToNumOrZeroToJson(instance.amount),
      'title': instance.title,
    };
