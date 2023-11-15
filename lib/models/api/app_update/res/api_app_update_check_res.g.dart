// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_app_update_check_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SuccessImpl _$$SuccessImplFromJson(Map<String, dynamic> json) =>
    _$SuccessImpl(
      SuccessResponse.fromJson(json['successResponse'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SuccessImplToJson(_$SuccessImpl instance) =>
    <String, dynamic>{
      'successResponse': instance.successResponse,
      'runtimeType': instance.$type,
    };

_$ErrorImpl _$$ErrorImplFromJson(Map<String, dynamic> json) => _$ErrorImpl(
      ErrorResponse.fromJson(json['errorResponse'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ErrorImplToJson(_$ErrorImpl instance) =>
    <String, dynamic>{
      'errorResponse': instance.errorResponse,
      'runtimeType': instance.$type,
    };

_$SuccessResponseImpl _$$SuccessResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SuccessResponseImpl(
      enumAppUpdateType: json['updateType'] == null
          ? EnumAppUpdateType.none
          : enumAppUpdateTypeFromJson(json['updateType'] as String?),
    );

Map<String, dynamic> _$$SuccessResponseImplToJson(
        _$SuccessResponseImpl instance) =>
    <String, dynamic>{
      'updateType': enumAppUpdateTypeToJson(instance.enumAppUpdateType),
    };

_$ErrorResponseImpl _$$ErrorResponseImplFromJson(Map<String, dynamic> json) =>
    _$ErrorResponseImpl(
      message: json['message'] as String? ?? 'что то',
    );

Map<String, dynamic> _$$ErrorResponseImplToJson(_$ErrorResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
    };
