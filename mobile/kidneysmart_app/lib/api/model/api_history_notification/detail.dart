part of 'api_history_notification.dart';

@freezed
class Detail with _$Detail {
  const factory Detail({
    int? id,
    bool? alwaysVisible,
    bool? manualSending,
    String? pushImageUrl,
    String? pushImageSendingMode,
  }) = _Detail;

  factory Detail.fromJson(Map<String, dynamic> json) => _$DetailFromJson(json);
}
