// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_notifier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginStateImpl _$$LoginStateImplFromJson(Map<String, dynamic> json) =>
    _$LoginStateImpl(
      enumScreenStatus: $enumDecodeNullable(
              _$EnumScreenStatusEnumMap, json['enumScreenStatus']) ??
          EnumScreenStatus.init,
      enumFrontendStatus: $enumDecodeNullable(
              _$EnumFrontendStatusLoginEnumMap, json['enumFrontendStatus']) ??
          EnumFrontendStatusLogin.init,
      email: json['email'] as String?,
      response: json['response'] == null
          ? const ResponseLogin()
          : ResponseLogin.fromJson(json['response'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LoginStateImplToJson(_$LoginStateImpl instance) =>
    <String, dynamic>{
      'enumScreenStatus': _$EnumScreenStatusEnumMap[instance.enumScreenStatus]!,
      'enumFrontendStatus':
          _$EnumFrontendStatusLoginEnumMap[instance.enumFrontendStatus]!,
      'email': instance.email,
      'response': instance.response,
    };

const _$EnumScreenStatusEnumMap = {
  EnumScreenStatus.init: 'init',
  EnumScreenStatus.load: 'load',
  EnumScreenStatus.success: 'success',
  EnumScreenStatus.error: 'error',
};

const _$EnumFrontendStatusLoginEnumMap = {
  EnumFrontendStatusLogin.init: 'init',
  EnumFrontendStatusLogin.load: 'load',
  EnumFrontendStatusLogin.emailIsNull: 'emailIsNull',
  EnumFrontendStatusLogin.success: 'success',
};

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$loginNotifierHash() => r'37d57f3d0e5a78eef766ecb77f725e269a472643';

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
