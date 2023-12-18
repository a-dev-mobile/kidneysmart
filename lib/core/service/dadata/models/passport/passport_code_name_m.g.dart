// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passport_code_name_m.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PassportCodeNameImpl _$$PassportCodeNameImplFromJson(
        Map<String, dynamic> json) =>
    _$PassportCodeNameImpl(
      (json['suggestions'] as List<dynamic>)
          .map((e) =>
              PassportCodeNameSuggestions.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PassportCodeNameImplToJson(
        _$PassportCodeNameImpl instance) =>
    <String, dynamic>{
      'suggestions': instance.suggestions,
    };

_$PassportCodeNameSuggestionsImpl _$$PassportCodeNameSuggestionsImplFromJson(
        Map<String, dynamic> json) =>
    _$PassportCodeNameSuggestionsImpl(
      value: json['value'] as String? ?? '',
      unrestricted_value: json['unrestricted_value'] as String? ?? '',
      data: json['data'] == null
          ? const PassportCodeNameData()
          : PassportCodeNameData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PassportCodeNameSuggestionsImplToJson(
        _$PassportCodeNameSuggestionsImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'unrestricted_value': instance.unrestricted_value,
      'data': instance.data,
    };

_$PassportCodeNameDataImpl _$$PassportCodeNameDataImplFromJson(
        Map<String, dynamic> json) =>
    _$PassportCodeNameDataImpl(
      code: json['code'] as String? ?? '',
      name: json['name'] as String? ?? '',
      region_code: json['region_code'] as String? ?? '',
      type: json['type'] as String? ?? '',
    );

Map<String, dynamic> _$$PassportCodeNameDataImplToJson(
        _$PassportCodeNameDataImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'region_code': instance.region_code,
      'type': instance.type,
    };
