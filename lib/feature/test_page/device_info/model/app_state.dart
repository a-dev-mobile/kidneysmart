// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.freezed.dart';
part 'app_state.g.dart';

@freezed
class AppShutdown with _$AppShutdown {
  const factory AppShutdown({
    String? app_id,
    String? user_id,
    String? screen,
  }) = _AppShutdown;

  factory AppShutdown.fromJson(Map<String, dynamic> json) =>
      _$AppShutdownFromJson(json);
}

@freezed
class AppStartup with _$AppStartup {
  const factory AppStartup({
    String? app_id,
    String? user_id,
    String? last_step,
  }) = _AppStartup;

  factory AppStartup.fromJson(Map<String, dynamic> json) =>
      _$AppStartupFromJson(json);
}
