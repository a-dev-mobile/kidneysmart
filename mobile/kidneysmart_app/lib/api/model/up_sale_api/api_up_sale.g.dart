// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_up_sale.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiUpSaleImpl _$$ApiUpSaleImplFromJson(Map<String, dynamic> json) =>
    _$ApiUpSaleImpl(
      amount: json['amount'] as num?,
      refundAmount: json['refund_amount'] as num?,
      upSaleAmount: json['upSaleAmount'] as num?,
    );

Map<String, dynamic> _$$ApiUpSaleImplToJson(_$ApiUpSaleImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'refund_amount': instance.refundAmount,
      'upSaleAmount': instance.upSaleAmount,
    };
