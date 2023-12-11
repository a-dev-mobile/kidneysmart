import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kidneysmart/api/model/api_history_notification/api_history_notification.dart';

part 'history_notification.freezed.dart';

part 'history_notification.g.dart';

@freezed
class HistoryNotification with _$HistoryNotification {
  const factory HistoryNotification({
    String? date,
    List<ApiHistoryNotification>? notifications,
  }) = _HistoryNotification;

  factory HistoryNotification.fromJson(Map<String, dynamic> json) =>
      _$HistoryNotificationFromJson(json);
}
