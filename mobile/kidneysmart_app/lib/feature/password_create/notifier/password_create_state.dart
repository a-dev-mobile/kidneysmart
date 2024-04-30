part of 'password_create_notifier.dart';

@freezed
sealed class PasswordCreateState with _$PasswordCreateState {


  const factory PasswordCreateState({
     @Default(EnumScreenStatus.init) EnumScreenStatus enumScreenStatus,
    @Default(EnumFrontendStatusPasswordCreate.init)
    EnumFrontendStatusPasswordCreate enumFrontendStatus,
    String? email,
    String? code,
    @Default(ResponsePasswordCreate()) ResponsePasswordCreate response,

  }) = _PasswordCreateState;

  factory PasswordCreateState.fromJson(Map<String, Object?> json) =>
      _$PasswordCreateStateFromJson(json);
}
