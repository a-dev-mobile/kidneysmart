// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_notifier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginStateImpl _$$LoginStateImplFromJson(Map<String, dynamic> json) =>
    _$LoginStateImpl(
      enumScreenStatus:
          $enumDecodeNullable(_$EnumStatusEnumMap, json['enumScreenStatus']) ??
              EnumStatus.init,
      enumResultStatus:
          $enumDecodeNullable(_$EnumStatusEnumMap, json['enumResultStatus']) ??
              EnumStatus.init,
      email: json['email'] as String? ?? '',
      response: json['response'] == null
          ? const ResponseLogin()
          : ResponseLogin.fromJson(json['response'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LoginStateImplToJson(_$LoginStateImpl instance) =>
    <String, dynamic>{
      'enumScreenStatus': _$EnumStatusEnumMap[instance.enumScreenStatus]!,
      'enumResultStatus': _$EnumStatusEnumMap[instance.enumResultStatus]!,
      'email': instance.email,
      'response': instance.response,
    };

const _$EnumStatusEnumMap = {
  EnumStatus.init: 'init',
  EnumStatus.load: 'load',
  EnumStatus.success: 'success',
  EnumStatus.error: 'error',
};

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$loginNotifierHash() => r'094098e1b706ec85fd7e250754648ff43b3b10d5';

/// See also [LoginNotifier].
@ProviderFor(LoginNotifier)
final loginNotifierProvider =
    AutoDisposeNotifierProvider<LoginNotifier, LoginState>.internal(
  LoginNotifier.new,
  name: r'loginNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$loginNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$LoginNotifier = AutoDisposeNotifier<LoginState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
