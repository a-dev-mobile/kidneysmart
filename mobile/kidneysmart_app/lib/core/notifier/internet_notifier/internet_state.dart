part of 'internet_notifier.dart';

@freezed
sealed class InternetState with _$InternetState {
  // const InternetState._();

  const factory InternetState({
    @Default(EnumInternetStatus.connected)
    EnumInternetStatus enumInternetStatus,
  }) = _InternetState;

  factory InternetState.fromJson(Map<String, Object?> json) =>
      _$InternetStateFromJson(json);
}
