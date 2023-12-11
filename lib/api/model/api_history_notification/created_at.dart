part of 'api_history_notification.dart';

@freezed
class CreatedAt with _$CreatedAt {
  const factory CreatedAt({
    String? date,
    int? timezoneType,
    String? timezone,
  }) = _CreatedAt;

  factory CreatedAt.fromJson(Map<String, dynamic> json) =>
      _$CreatedAtFromJson(json);
}
