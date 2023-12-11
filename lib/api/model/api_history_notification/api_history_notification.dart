import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_history_notification.freezed.dart';

part 'api_history_notification.g.dart';

part 'created_at.dart';

part 'detail.dart';

part 'send_data.dart';

@freezed
class ApiHistoryNotification with _$ApiHistoryNotification {
  const factory ApiHistoryNotification({
    int? id,
    bool? read,
    int? loanId,
    String? phone,
    String? title,
    String? message,
    String? response,
    SendDate? sendDate,
    String? status,
    bool? delivered,
    String? sender,
    String? responseId,
    String? smsProvider,
    bool? keywordStatus,
    String? template,
    CreatedAt? createdAt,
    int? priority,
    int? admUserId,
    Detail? detail,
  }) = _ApiHistoryNotification;

  factory ApiHistoryNotification.fromJson(Map<String, dynamic> json) =>
      _$ApiHistoryNotificationFromJson(json);
}
