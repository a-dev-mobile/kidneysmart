part of 'api_history_notification.dart';

@freezed
class SendDate with _$SendDate {
  const factory SendDate({
    String? date,
    int? timezoneType,
    String? timezone,
  }) = _SendDate;

  factory SendDate.fromJson(Map<String, dynamic> json) =>
      _$SendDateFromJson(json);
}
