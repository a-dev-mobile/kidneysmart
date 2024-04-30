// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DocumentDataImpl _$$DocumentDataImplFromJson(Map<String, dynamic> json) =>
    _$DocumentDataImpl(
      title: json['title'] as String,
      prefix: json['prefix'] as String? ?? '',
      suffix: json['suffix'] as String? ?? '',
      url: json['url'] as String?,
      number: json['number'] as String?,
      date: json['date'] as String?,
    );

Map<String, dynamic> _$$DocumentDataImplToJson(_$DocumentDataImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'prefix': instance.prefix,
      'suffix': instance.suffix,
      'url': instance.url,
      'number': instance.number,
      'date': instance.date,
    };
