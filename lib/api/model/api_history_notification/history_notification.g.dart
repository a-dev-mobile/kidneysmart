// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HistoryNotificationImpl _$$HistoryNotificationImplFromJson(
        Map<String, dynamic> json) =>
    _$HistoryNotificationImpl(
      date: json['date'] as String?,
      notifications: (json['notifications'] as List<dynamic>?)
          ?.map(
              (e) => ApiHistoryNotification.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HistoryNotificationImplToJson(
        _$HistoryNotificationImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'notifications': instance.notifications,
    };
