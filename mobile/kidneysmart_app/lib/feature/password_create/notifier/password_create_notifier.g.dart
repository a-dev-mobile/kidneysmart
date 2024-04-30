// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_create_notifier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PasswordCreateStateImpl _$$PasswordCreateStateImplFromJson(
        Map<String, dynamic> json) =>
    _$PasswordCreateStateImpl(
      enumScreenStatus: $enumDecodeNullable(
              _$EnumScreenStatusEnumMap, json['enumScreenStatus']) ??
          EnumScreenStatus.init,
      enumFrontendStatus: $enumDecodeNullable(
              _$EnumFrontendStatusPasswordCreateEnumMap,
              json['enumFrontendStatus']) ??
          EnumFrontendStatusPasswordCreate.init,
      email: json['email'] as String?,
      code: json['code'] as String?,
      response: json['response'] == null
          ? const ResponsePasswordCreate()
          : ResponsePasswordCreate.fromJson(
              json['response'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PasswordCreateStateImplToJson(
        _$PasswordCreateStateImpl instance) =>
    <String, dynamic>{
      'enumScreenStatus': _$EnumScreenStatusEnumMap[instance.enumScreenStatus]!,
      'enumFrontendStatus': _$EnumFrontendStatusPasswordCreateEnumMap[
          instance.enumFrontendStatus]!,
      'email': instance.email,
      'code': instance.code,
      'response': instance.response,
    };

const _$EnumScreenStatusEnumMap = {
  EnumScreenStatus.init: 'init',
  EnumScreenStatus.load: 'load',
  EnumScreenStatus.success: 'success',
  EnumScreenStatus.error: 'error',
};

const _$EnumFrontendStatusPasswordCreateEnumMap = {
  EnumFrontendStatusPasswordCreate.init: 'init',
  EnumFrontendStatusPasswordCreate.load: 'load',
  EnumFrontendStatusPasswordCreate.passwordMismatch: 'passwordMismatch',
  EnumFrontendStatusPasswordCreate.emailOrPasswordIsNull:
      'emailOrPasswordIsNull',
  EnumFrontendStatusPasswordCreate.success: 'success',
};

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$passwordCreateNotifierHash() =>
    r'cbe61498da3d28f35d1d0ce6d6a2ec4481049587';

/// See also [PasswordCreateNotifier].
@ProviderFor(PasswordCreateNotifier)
final passwordCreateNotifierProvider = AutoDisposeNotifierProvider<
    PasswordCreateNotifier, PasswordCreateState>.internal(
  PasswordCreateNotifier.new,
  name: r'passwordCreateNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$passwordCreateNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PasswordCreateNotifier = AutoDisposeNotifier<PasswordCreateState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
