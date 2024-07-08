// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kidneysmart/api/utils/helper_for_json.dart';
import 'package:kidneysmart/core/enum/enum_auth_status.dart';
import 'package:kidneysmart/core/enum/enum_step.dart';

part 'api_user_permissions.freezed.dart';
part 'api_user_permissions.g.dart';

@freezed
class ApiUserPermissions with _$ApiUserPermissions {
  const factory ApiUserPermissions({
    @JsonKey(
      name: 'authorization_status',
      toJson: authorizationStatusToJson,
      fromJson: authorizationStatusFromJson,
    )
    @Default(EnumAuthStatus.activeOrRequestLoan)
    EnumAuthStatus enumAuthStatus,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'can_view_cards') bool? canViewCards,
    @JsonKey(name: 'can_add_card') bool? canAddCard,
    @JsonKey(name: 'can_issue_card') bool? canIssueCard,
    @JsonKey(name: 'can_change_iban') bool? canChangeIban,
    @JsonKey(name: 'can_issue_iban') bool? canIssueIban,
    //
    @JsonKey(
      name: 'step',
      toJson: stepToJson,
      fromJson: stepFromJson,
    )
    EnumStep? enumstep,
    //
    @JsonKey(name: 'active_region') bool? activeRegion,
  }) = _ApiUserPermissions;

  factory ApiUserPermissions.fromJson(Map<String, Object?> json) =>
      _$ApiUserPermissionsFromJson(json);
}
