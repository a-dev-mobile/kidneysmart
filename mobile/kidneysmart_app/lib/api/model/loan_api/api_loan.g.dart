// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_loan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SuccessImpl _$$SuccessImplFromJson(Map<String, dynamic> json) =>
    _$SuccessImpl(
      ApiLoanSuccess.fromJson(json['apiLoanSuccess'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SuccessImplToJson(_$SuccessImpl instance) =>
    <String, dynamic>{
      'apiLoanSuccess': instance.apiLoanSuccess,
      'runtimeType': instance.$type,
    };

_$ErrorImpl _$$ErrorImplFromJson(Map<String, dynamic> json) => _$ErrorImpl(
      ApiLoanError.fromJson(json['apiLoanError'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ErrorImplToJson(_$ErrorImpl instance) =>
    <String, dynamic>{
      'apiLoanError': instance.apiLoanError,
      'runtimeType': instance.$type,
    };

_$ApiLoanSuccessImpl _$$ApiLoanSuccessImplFromJson(Map<String, dynamic> json) =>
    _$ApiLoanSuccessImpl(
      id: json['id'] as int,
    );

Map<String, dynamic> _$$ApiLoanSuccessImplToJson(
        _$ApiLoanSuccessImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$ApiLoanErrorImpl _$$ApiLoanErrorImplFromJson(Map<String, dynamic> json) =>
    _$ApiLoanErrorImpl(
      error: json['error'] as String? ?? 'Ошибка, что-то случилось!',
      message: json['message'] as String? ?? '',
    );

Map<String, dynamic> _$$ApiLoanErrorImplToJson(_$ApiLoanErrorImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
      'message': instance.message,
    };
