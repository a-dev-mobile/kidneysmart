// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_app_update_check_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InitImpl _$$InitImplFromJson(Map<String, dynamic> json) => _$InitImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$InitImplToJson(_$InitImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

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
      latestVersion: json['latestVersion'] == null
          ? null
          : LatestVersion.fromJson(
              json['latestVersion'] as Map<String, dynamic>),
      enumAppUpdateType: json['updateType'] == null
          ? EnumAppUpdateType.none
          : enumAppUpdateTypeFromJson(json['updateType'] as String?),
    );

Map<String, dynamic> _$$ApiAppUpdateCheckResSuccessImplToJson(
        _$ApiAppUpdateCheckResSuccessImpl instance) =>
    <String, dynamic>{
      'latestVersion': instance.latestVersion,
      'updateType': enumAppUpdateTypeToJson(instance.enumAppUpdateType),
    };

_$LatestVersionImpl _$$LatestVersionImplFromJson(Map<String, dynamic> json) =>
    _$LatestVersionImpl(
      versionCode: json['versionCode'] as int,
      fileSize: json['fileSize'] as int,
      updateDescription: json['updateDescription'] as String,
      versionName: json['versionName'] as String,
      url: json['url'] as String,
      checksum: json['checksum'] as String,
    );

Map<String, dynamic> _$$LatestVersionImplToJson(_$LatestVersionImpl instance) =>
    <String, dynamic>{
      'versionCode': instance.versionCode,
      'fileSize': instance.fileSize,
      'updateDescription': instance.updateDescription,
      'versionName': instance.versionName,
      'url': instance.url,
      'checksum': instance.checksum,
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
