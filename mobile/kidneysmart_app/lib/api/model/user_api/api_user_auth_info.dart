// ignore_for_file: avoid_bool_literals_in_conditional_expressions, invalid_annotation_target
// ignore_for_file: sort_constructors_first
// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kidneysmart/api/utils/helper_for_json.dart';

import 'package:kidneysmart/core/enum/enum_auth_status.dart';
import 'package:kidneysmart/core/enum/enum_step.dart';

part 'api_user_auth_info.freezed.dart';
part 'api_user_auth_info.g.dart';

@freezed
class ApiUserAuthInfo with _$ApiUserAuthInfo {
  const factory ApiUserAuthInfo({
    @JsonKey(name: 'id') int? id,
    //
    @JsonKey(
      name: 'authorization_status',
      toJson: authorizationStatusToJson,
      fromJson: authorizationStatusFromJson,
    )
    @Default(EnumAuthStatus.activeOrRequestLoan)
    EnumAuthStatus enumAuthStatus,
    //
    @JsonKey(
      name: 'step',
      toJson: stepToJson,
      fromJson: stepFromJson,
    )
    EnumStep? enumStep,
  }) = _ApiUserAuthInfo;

  factory ApiUserAuthInfo.fromJson(Map<String, dynamic> json) =>
      _$ApiUserAuthInfoFromJson(json);
}
