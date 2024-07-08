// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_user_permissions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiUserPermissions _$ApiUserPermissionsFromJson(Map<String, dynamic> json) {
  return _ApiUserPermissions.fromJson(json);
}

/// @nodoc
mixin _$ApiUserPermissions {
  @JsonKey(
      name: 'authorization_status',
      toJson: authorizationStatusToJson,
      fromJson: authorizationStatusFromJson)
  EnumAuthStatus get enumAuthStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'can_view_cards')
  bool? get canViewCards => throw _privateConstructorUsedError;
  @JsonKey(name: 'can_add_card')
  bool? get canAddCard => throw _privateConstructorUsedError;
  @JsonKey(name: 'can_issue_card')
  bool? get canIssueCard => throw _privateConstructorUsedError;
  @JsonKey(name: 'can_change_iban')
  bool? get canChangeIban => throw _privateConstructorUsedError;
  @JsonKey(name: 'can_issue_iban')
  bool? get canIssueIban => throw _privateConstructorUsedError; //
  @JsonKey(name: 'step', toJson: stepToJson, fromJson: stepFromJson)
  EnumStep? get enumstep => throw _privateConstructorUsedError; //
  @JsonKey(name: 'active_region')
  bool? get activeRegion => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiUserPermissionsCopyWith<ApiUserPermissions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiUserPermissionsCopyWith<$Res> {
  factory $ApiUserPermissionsCopyWith(
          ApiUserPermissions value, $Res Function(ApiUserPermissions) then) =
      _$ApiUserPermissionsCopyWithImpl<$Res, ApiUserPermissions>;
  @useResult
  $Res call(
      {@JsonKey(
          name: 'authorization_status',
          toJson: authorizationStatusToJson,
          fromJson: authorizationStatusFromJson)
      EnumAuthStatus enumAuthStatus,
      @JsonKey(name: 'id') int? id,
      @JsonKey(name: 'can_view_cards') bool? canViewCards,
      @JsonKey(name: 'can_add_card') bool? canAddCard,
      @JsonKey(name: 'can_issue_card') bool? canIssueCard,
      @JsonKey(name: 'can_change_iban') bool? canChangeIban,
      @JsonKey(name: 'can_issue_iban') bool? canIssueIban,
      @JsonKey(name: 'step', toJson: stepToJson, fromJson: stepFromJson)
      EnumStep? enumstep,
      @JsonKey(name: 'active_region') bool? activeRegion});
}

/// @nodoc
class _$ApiUserPermissionsCopyWithImpl<$Res, $Val extends ApiUserPermissions>
    implements $ApiUserPermissionsCopyWith<$Res> {
  _$ApiUserPermissionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enumAuthStatus = null,
    Object? id = freezed,
    Object? canViewCards = freezed,
    Object? canAddCard = freezed,
    Object? canIssueCard = freezed,
    Object? canChangeIban = freezed,
    Object? canIssueIban = freezed,
    Object? enumstep = freezed,
    Object? activeRegion = freezed,
  }) {
    return _then(_value.copyWith(
      enumAuthStatus: null == enumAuthStatus
          ? _value.enumAuthStatus
          : enumAuthStatus // ignore: cast_nullable_to_non_nullable
              as EnumAuthStatus,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      canViewCards: freezed == canViewCards
          ? _value.canViewCards
          : canViewCards // ignore: cast_nullable_to_non_nullable
              as bool?,
      canAddCard: freezed == canAddCard
          ? _value.canAddCard
          : canAddCard // ignore: cast_nullable_to_non_nullable
              as bool?,
      canIssueCard: freezed == canIssueCard
          ? _value.canIssueCard
          : canIssueCard // ignore: cast_nullable_to_non_nullable
              as bool?,
      canChangeIban: freezed == canChangeIban
          ? _value.canChangeIban
          : canChangeIban // ignore: cast_nullable_to_non_nullable
              as bool?,
      canIssueIban: freezed == canIssueIban
          ? _value.canIssueIban
          : canIssueIban // ignore: cast_nullable_to_non_nullable
              as bool?,
      enumstep: freezed == enumstep
          ? _value.enumstep
          : enumstep // ignore: cast_nullable_to_non_nullable
              as EnumStep?,
      activeRegion: freezed == activeRegion
          ? _value.activeRegion
          : activeRegion // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiUserPermissionsImplCopyWith<$Res>
    implements $ApiUserPermissionsCopyWith<$Res> {
  factory _$$ApiUserPermissionsImplCopyWith(_$ApiUserPermissionsImpl value,
          $Res Function(_$ApiUserPermissionsImpl) then) =
      __$$ApiUserPermissionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(
          name: 'authorization_status',
          toJson: authorizationStatusToJson,
          fromJson: authorizationStatusFromJson)
      EnumAuthStatus enumAuthStatus,
      @JsonKey(name: 'id') int? id,
      @JsonKey(name: 'can_view_cards') bool? canViewCards,
      @JsonKey(name: 'can_add_card') bool? canAddCard,
      @JsonKey(name: 'can_issue_card') bool? canIssueCard,
      @JsonKey(name: 'can_change_iban') bool? canChangeIban,
      @JsonKey(name: 'can_issue_iban') bool? canIssueIban,
      @JsonKey(name: 'step', toJson: stepToJson, fromJson: stepFromJson)
      EnumStep? enumstep,
      @JsonKey(name: 'active_region') bool? activeRegion});
}

/// @nodoc
class __$$ApiUserPermissionsImplCopyWithImpl<$Res>
    extends _$ApiUserPermissionsCopyWithImpl<$Res, _$ApiUserPermissionsImpl>
    implements _$$ApiUserPermissionsImplCopyWith<$Res> {
  __$$ApiUserPermissionsImplCopyWithImpl(_$ApiUserPermissionsImpl _value,
      $Res Function(_$ApiUserPermissionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enumAuthStatus = null,
    Object? id = freezed,
    Object? canViewCards = freezed,
    Object? canAddCard = freezed,
    Object? canIssueCard = freezed,
    Object? canChangeIban = freezed,
    Object? canIssueIban = freezed,
    Object? enumstep = freezed,
    Object? activeRegion = freezed,
  }) {
    return _then(_$ApiUserPermissionsImpl(
      enumAuthStatus: null == enumAuthStatus
          ? _value.enumAuthStatus
          : enumAuthStatus // ignore: cast_nullable_to_non_nullable
              as EnumAuthStatus,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      canViewCards: freezed == canViewCards
          ? _value.canViewCards
          : canViewCards // ignore: cast_nullable_to_non_nullable
              as bool?,
      canAddCard: freezed == canAddCard
          ? _value.canAddCard
          : canAddCard // ignore: cast_nullable_to_non_nullable
              as bool?,
      canIssueCard: freezed == canIssueCard
          ? _value.canIssueCard
          : canIssueCard // ignore: cast_nullable_to_non_nullable
              as bool?,
      canChangeIban: freezed == canChangeIban
          ? _value.canChangeIban
          : canChangeIban // ignore: cast_nullable_to_non_nullable
              as bool?,
      canIssueIban: freezed == canIssueIban
          ? _value.canIssueIban
          : canIssueIban // ignore: cast_nullable_to_non_nullable
              as bool?,
      enumstep: freezed == enumstep
          ? _value.enumstep
          : enumstep // ignore: cast_nullable_to_non_nullable
              as EnumStep?,
      activeRegion: freezed == activeRegion
          ? _value.activeRegion
          : activeRegion // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiUserPermissionsImpl implements _ApiUserPermissions {
  const _$ApiUserPermissionsImpl(
      {@JsonKey(
          name: 'authorization_status',
          toJson: authorizationStatusToJson,
          fromJson: authorizationStatusFromJson)
      this.enumAuthStatus = EnumAuthStatus.activeOrRequestLoan,
      @JsonKey(name: 'id') this.id,
      @JsonKey(name: 'can_view_cards') this.canViewCards,
      @JsonKey(name: 'can_add_card') this.canAddCard,
      @JsonKey(name: 'can_issue_card') this.canIssueCard,
      @JsonKey(name: 'can_change_iban') this.canChangeIban,
      @JsonKey(name: 'can_issue_iban') this.canIssueIban,
      @JsonKey(name: 'step', toJson: stepToJson, fromJson: stepFromJson)
      this.enumstep,
      @JsonKey(name: 'active_region') this.activeRegion});

  factory _$ApiUserPermissionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiUserPermissionsImplFromJson(json);

  @override
  @JsonKey(
      name: 'authorization_status',
      toJson: authorizationStatusToJson,
      fromJson: authorizationStatusFromJson)
  final EnumAuthStatus enumAuthStatus;
  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'can_view_cards')
  final bool? canViewCards;
  @override
  @JsonKey(name: 'can_add_card')
  final bool? canAddCard;
  @override
  @JsonKey(name: 'can_issue_card')
  final bool? canIssueCard;
  @override
  @JsonKey(name: 'can_change_iban')
  final bool? canChangeIban;
  @override
  @JsonKey(name: 'can_issue_iban')
  final bool? canIssueIban;
//
  @override
  @JsonKey(name: 'step', toJson: stepToJson, fromJson: stepFromJson)
  final EnumStep? enumstep;
//
  @override
  @JsonKey(name: 'active_region')
  final bool? activeRegion;

  @override
  String toString() {
    return 'ApiUserPermissions(enumAuthStatus: $enumAuthStatus, id: $id, canViewCards: $canViewCards, canAddCard: $canAddCard, canIssueCard: $canIssueCard, canChangeIban: $canChangeIban, canIssueIban: $canIssueIban, enumstep: $enumstep, activeRegion: $activeRegion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiUserPermissionsImpl &&
            (identical(other.enumAuthStatus, enumAuthStatus) ||
                other.enumAuthStatus == enumAuthStatus) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.canViewCards, canViewCards) ||
                other.canViewCards == canViewCards) &&
            (identical(other.canAddCard, canAddCard) ||
                other.canAddCard == canAddCard) &&
            (identical(other.canIssueCard, canIssueCard) ||
                other.canIssueCard == canIssueCard) &&
            (identical(other.canChangeIban, canChangeIban) ||
                other.canChangeIban == canChangeIban) &&
            (identical(other.canIssueIban, canIssueIban) ||
                other.canIssueIban == canIssueIban) &&
            (identical(other.enumstep, enumstep) ||
                other.enumstep == enumstep) &&
            (identical(other.activeRegion, activeRegion) ||
                other.activeRegion == activeRegion));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      enumAuthStatus,
      id,
      canViewCards,
      canAddCard,
      canIssueCard,
      canChangeIban,
      canIssueIban,
      enumstep,
      activeRegion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiUserPermissionsImplCopyWith<_$ApiUserPermissionsImpl> get copyWith =>
      __$$ApiUserPermissionsImplCopyWithImpl<_$ApiUserPermissionsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiUserPermissionsImplToJson(
      this,
    );
  }
}

abstract class _ApiUserPermissions implements ApiUserPermissions {
  const factory _ApiUserPermissions(
          {@JsonKey(
              name: 'authorization_status',
              toJson: authorizationStatusToJson,
              fromJson: authorizationStatusFromJson)
          final EnumAuthStatus enumAuthStatus,
          @JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'can_view_cards') final bool? canViewCards,
          @JsonKey(name: 'can_add_card') final bool? canAddCard,
          @JsonKey(name: 'can_issue_card') final bool? canIssueCard,
          @JsonKey(name: 'can_change_iban') final bool? canChangeIban,
          @JsonKey(name: 'can_issue_iban') final bool? canIssueIban,
          @JsonKey(name: 'step', toJson: stepToJson, fromJson: stepFromJson)
          final EnumStep? enumstep,
          @JsonKey(name: 'active_region') final bool? activeRegion}) =
      _$ApiUserPermissionsImpl;

  factory _ApiUserPermissions.fromJson(Map<String, dynamic> json) =
      _$ApiUserPermissionsImpl.fromJson;

  @override
  @JsonKey(
      name: 'authorization_status',
      toJson: authorizationStatusToJson,
      fromJson: authorizationStatusFromJson)
  EnumAuthStatus get enumAuthStatus;
  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'can_view_cards')
  bool? get canViewCards;
  @override
  @JsonKey(name: 'can_add_card')
  bool? get canAddCard;
  @override
  @JsonKey(name: 'can_issue_card')
  bool? get canIssueCard;
  @override
  @JsonKey(name: 'can_change_iban')
  bool? get canChangeIban;
  @override
  @JsonKey(name: 'can_issue_iban')
  bool? get canIssueIban;
  @override //
  @JsonKey(name: 'step', toJson: stepToJson, fromJson: stepFromJson)
  EnumStep? get enumstep;
  @override //
  @JsonKey(name: 'active_region')
  bool? get activeRegion;
  @override
  @JsonKey(ignore: true)
  _$$ApiUserPermissionsImplCopyWith<_$ApiUserPermissionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
