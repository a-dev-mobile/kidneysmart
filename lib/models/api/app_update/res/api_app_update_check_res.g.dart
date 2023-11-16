// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_app_update_check_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SuccessImpl _$$SuccessImplFromJson(Map<String, dynamic> json) =>
    _$SuccessImpl(
      ApiAppUpdateCheckResSuccess.fromJson(
          json['successResponse'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SuccessImplToJson(_$SuccessImpl instance) =>
    <String, dynamic>{
      'successResponse': instance.successResponse,
      'runtimeType': instance.$type,
    };

_$ErrorImpl _$$ErrorImplFromJson(Map<String, dynamic> json) => _$ErrorImpl(
      ApiAppUpdateCheckResError.fromJson(
          json['errorResponse'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ErrorImplToJson(_$ErrorImpl instance) =>
    <String, dynamic>{
      'errorResponse': instance.errorResponse,
      'runtimeType': instance.$type,
    };

_$ApiAppUpdateCheckResSuccessImpl _$$ApiAppUpdateCheckResSuccessImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiAppUpdateCheckResSuccessImpl(
      enumAppUpdateType: json['updateType'] == null
          ? EnumAppUpdateType.none
          : enumAppUpdateTypeFromJson(json['updateType'] as String?),
    );

Map<String, dynamic> _$$ApiAppUpdateCheckResSuccessImplToJson(
        _$ApiAppUpdateCheckResSuccessImpl instance) =>
    <String, dynamic>{
      'updateType': enumAppUpdateTypeToJson(instance.enumAppUpdateType),
    };

_$ApiAppUpdateCheckResErrorImpl _$$ApiAppUpdateCheckResErrorImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiAppUpdateCheckResErrorImpl(
      message: json['message'] as String? ?? 'Something happened',
    );

Map<String, dynamic> _$$ApiAppUpdateCheckResErrorImplToJson(
        _$ApiAppUpdateCheckResErrorImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
    };
