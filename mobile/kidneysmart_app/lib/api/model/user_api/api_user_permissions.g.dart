// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_user_permissions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiUserPermissionsImpl _$$ApiUserPermissionsImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiUserPermissionsImpl(
      enumAuthStatus: json['authorization_status'] == null
          ? EnumAuthStatus.activeOrRequestLoan
          : authorizationStatusFromJson(json['authorization_status'] as int?),
      id: json['id'] as int?,
      canViewCards: json['can_view_cards'] as bool?,
      canAddCard: json['can_add_card'] as bool?,
      canIssueCard: json['can_issue_card'] as bool?,
      canChangeIban: json['can_change_iban'] as bool?,
      canIssueIban: json['can_issue_iban'] as bool?,
      enumstep: stepFromJson(json['step'] as String?),
      activeRegion: json['active_region'] as bool?,
    );

Map<String, dynamic> _$$ApiUserPermissionsImplToJson(
        _$ApiUserPermissionsImpl instance) =>
    <String, dynamic>{
      'authorization_status':
          authorizationStatusToJson(instance.enumAuthStatus),
      'id': instance.id,
      'can_view_cards': instance.canViewCards,
      'can_add_card': instance.canAddCard,
      'can_issue_card': instance.canIssueCard,
      'can_change_iban': instance.canChangeIban,
      'can_issue_iban': instance.canIssueIban,
      'step': stepToJson(instance.enumstep),
      'active_region': instance.activeRegion,
    };
