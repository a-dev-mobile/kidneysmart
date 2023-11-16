// ignore_for_file: avoid_final_parameters, invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kidneysmart/enum/enum_app_update_type.dart';
import 'package:kidneysmart/models/api/helper_for_json.dart';

part 'api_app_update_check_res.freezed.dart';
part 'api_app_update_check_res.g.dart';

@freezed
sealed class ApiAppUpdateCheckRes with _$ApiAppUpdateCheckRes {
  const factory ApiAppUpdateCheckRes.success(
    ApiAppUpdateCheckResSuccess successResponse,
  ) = _Success;
  const factory ApiAppUpdateCheckRes.error(
    ApiAppUpdateCheckResError errorResponse,
  ) = _Error;

  factory ApiAppUpdateCheckRes.fromJson(Map<String, Object?> json) =>
      _$ApiAppUpdateCheckResFromJson(json);
}

@freezed
class ApiAppUpdateCheckResSuccess with _$ApiAppUpdateCheckResSuccess {
  const factory ApiAppUpdateCheckResSuccess({
    @JsonKey(
      name: 'updateType',
      toJson: enumAppUpdateTypeToJson,
      fromJson: enumAppUpdateTypeFromJson,
    )
    @Default(EnumAppUpdateType.none)
    EnumAppUpdateType enumAppUpdateType,
  }) = _ApiAppUpdateCheckResSuccess;

  factory ApiAppUpdateCheckResSuccess.fromJson(Map<String, Object?> json) =>
      _$ApiAppUpdateCheckResSuccessFromJson(json);
}

@freezed
class ApiAppUpdateCheckResError with _$ApiAppUpdateCheckResError {
  const factory ApiAppUpdateCheckResError({
    @Default('Something happened') String message,
  }) = _ApiAppUpdateCheckResError;

  factory ApiAppUpdateCheckResError.fromJson(Map<String, Object?> json) =>
      _$ApiAppUpdateCheckResErrorFromJson(json);
}
