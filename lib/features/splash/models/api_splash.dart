// ignore_for_file: avoid_final_parameters, invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_splash.freezed.dart';
part 'api_splash.g.dart';

/// ApiSplash data class
@freezed
class ApiSplash with _$ApiSplash {
  const factory ApiSplash({
    @JsonKey(name: 'value') required final String value,
  }) = _ApiSplash;



  /// Generate ApiSplash class from Map<String, Object?>
  factory ApiSplash.fromJson(Map<String, Object?> json) =>
      _$ApiSplashFromJson(json);
}
