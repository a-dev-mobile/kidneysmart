// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'step_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StepDataImpl _$$StepDataImplFromJson(Map<String, dynamic> json) =>
    _$StepDataImpl(
      app_id: json['app_id'] as String,
      user_id: json['user_id'] as String,
      step: Step.fromJson(json['step'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StepDataImplToJson(_$StepDataImpl instance) =>
    <String, dynamic>{
      'app_id': instance.app_id,
      'user_id': instance.user_id,
      'step': instance.step,
    };

_$StepImpl _$$StepImplFromJson(Map<String, dynamic> json) => _$StepImpl(
      name: json['name'] as String,
      info: json['info'] as String?,
    );

Map<String, dynamic> _$$StepImplToJson(_$StepImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'info': instance.info,
    };
