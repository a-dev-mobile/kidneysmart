// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_history_notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiHistoryNotificationImpl _$$ApiHistoryNotificationImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiHistoryNotificationImpl(
      id: json['id'] as int?,
      read: json['read'] as bool?,
      loanId: json['loanId'] as int?,
      phone: json['phone'] as String?,
      title: json['title'] as String?,
      message: json['message'] as String?,
      response: json['response'] as String?,
      sendDate: json['sendDate'] == null
          ? null
          : SendDate.fromJson(json['sendDate'] as Map<String, dynamic>),
      status: json['status'] as String?,
      delivered: json['delivered'] as bool?,
      sender: json['sender'] as String?,
      responseId: json['responseId'] as String?,
      smsProvider: json['smsProvider'] as String?,
      keywordStatus: json['keywordStatus'] as bool?,
      template: json['template'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : CreatedAt.fromJson(json['createdAt'] as Map<String, dynamic>),
      priority: json['priority'] as int?,
      admUserId: json['admUserId'] as int?,
      detail: json['detail'] == null
          ? null
          : Detail.fromJson(json['detail'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ApiHistoryNotificationImplToJson(
        _$ApiHistoryNotificationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'read': instance.read,
      'loanId': instance.loanId,
      'phone': instance.phone,
      'title': instance.title,
      'message': instance.message,
      'response': instance.response,
      'sendDate': instance.sendDate,
      'status': instance.status,
      'delivered': instance.delivered,
      'sender': instance.sender,
      'responseId': instance.responseId,
      'smsProvider': instance.smsProvider,
      'keywordStatus': instance.keywordStatus,
      'template': instance.template,
      'createdAt': instance.createdAt,
      'priority': instance.priority,
      'admUserId': instance.admUserId,
      'detail': instance.detail,
    };

_$CreatedAtImpl _$$CreatedAtImplFromJson(Map<String, dynamic> json) =>
    _$CreatedAtImpl(
      date: json['date'] as String?,
      timezoneType: json['timezoneType'] as int?,
      timezone: json['timezone'] as String?,
    );

Map<String, dynamic> _$$CreatedAtImplToJson(_$CreatedAtImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'timezoneType': instance.timezoneType,
      'timezone': instance.timezone,
    };

_$DetailImpl _$$DetailImplFromJson(Map<String, dynamic> json) => _$DetailImpl(
      id: json['id'] as int?,
      alwaysVisible: json['alwaysVisible'] as bool?,
      manualSending: json['manualSending'] as bool?,
      pushImageUrl: json['pushImageUrl'] as String?,
      pushImageSendingMode: json['pushImageSendingMode'] as String?,
    );

Map<String, dynamic> _$$DetailImplToJson(_$DetailImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'alwaysVisible': instance.alwaysVisible,
      'manualSending': instance.manualSending,
      'pushImageUrl': instance.pushImageUrl,
      'pushImageSendingMode': instance.pushImageSendingMode,
    };

_$SendDateImpl _$$SendDateImplFromJson(Map<String, dynamic> json) =>
    _$SendDateImpl(
      date: json['date'] as String?,
      timezoneType: json['timezoneType'] as int?,
      timezone: json['timezone'] as String?,
    );

Map<String, dynamic> _$$SendDateImplToJson(_$SendDateImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'timezoneType': instance.timezoneType,
      'timezone': instance.timezone,
    };
