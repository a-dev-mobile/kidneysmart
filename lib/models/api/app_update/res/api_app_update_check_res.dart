// ignore_for_file: avoid_final_parameters, invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kidneysmart/enum/enum_app_update_type.dart';
import 'package:kidneysmart/models/api/helper_for_json.dart';

part 'api_app_update_check_res.freezed.dart';
part 'api_app_update_check_res.g.dart';

@freezed
class ApiAppUpdateCheckRes with _$ApiAppUpdateCheckRes {
  const factory ApiAppUpdateCheckRes.success(SuccessResponse successResponse) =
      _Success;
  const factory ApiAppUpdateCheckRes.error(ErrorResponse errorResponse) =
      _Error;

  factory ApiAppUpdateCheckRes.fromJson(Map<String, Object?> json) =>
      _$ApiAppUpdateCheckResFromJson(json);
}

@freezed
class SuccessResponse with _$SuccessResponse {
  const factory SuccessResponse({
    @JsonKey(
      name: 'updateType',
      toJson: enumAppUpdateTypeToJson,
      fromJson: enumAppUpdateTypeFromJson,
    )
    @Default(EnumAppUpdateType.none)
    EnumAppUpdateType enumAppUpdateType,
  }) = _SuccessResponse;

  factory SuccessResponse.fromJson(Map<String, Object?> json) =>
      _$SuccessResponseFromJson(json);
}

@freezed
class ErrorResponse with _$ErrorResponse {
  const factory ErrorResponse({
    @Default('что то') String message,
  }) = _ErrorResponse;

  factory ErrorResponse.fromJson(Map<String, Object?> json) =>
      _$ErrorResponseFromJson(json);
}

// @freezed
// class ErrorResponse {
//   const ErrorResponse({this.errorMessage = 'Что-то случилось...'});

//   factory ErrorResponse.fromJson(Map<String, dynamic> json) =>
//       _$ErrorResponseFromJson(json);
//   final String errorMessage;
// }
