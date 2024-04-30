// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verification_code_notifier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerificationCodeStateImpl _$$VerificationCodeStateImplFromJson(
        Map<String, dynamic> json) =>
    _$VerificationCodeStateImpl(
      enumScreenStatus: $enumDecodeNullable(
              _$EnumScreenStatusEnumMap, json['enumScreenStatus']) ??
          EnumScreenStatus.init,
      enumFrontendStatus: $enumDecodeNullable(
              _$EnumFrontendStatusVerificationCodeEnumMap,
              json['enumFrontendStatus']) ??
          EnumFrontendStatusVerificationCode.init,
      email: json['email'] as String?,
      code: json['code'] as String?,
      response: json['response'] == null
          ? const ResponseVerificationCode()
          : ResponseVerificationCode.fromJson(
              json['response'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VerificationCodeStateImplToJson(
        _$VerificationCodeStateImpl instance) =>
    <String, dynamic>{
      'enumScreenStatus': _$EnumScreenStatusEnumMap[instance.enumScreenStatus]!,
      'enumFrontendStatus': _$EnumFrontendStatusVerificationCodeEnumMap[
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

const _$EnumFrontendStatusVerificationCodeEnumMap = {
  EnumFrontendStatusVerificationCode.init: 'init',
  EnumFrontendStatusVerificationCode.load: 'load',
  EnumFrontendStatusVerificationCode.emailOrCodeNull: 'emailOrCodeNull',
  EnumFrontendStatusVerificationCode.success: 'success',
};

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$verificationCodeNotifierHash() =>
    r'07beb08157508f31a7716e990f583c129eaf388d';

/// See also [VerificationCodeNotifier].
@ProviderFor(VerificationCodeNotifier)
final verificationCodeNotifierProvider = AutoDisposeNotifierProvider<
    VerificationCodeNotifier, VerificationCodeState>.internal(
  VerificationCodeNotifier.new,
  name: r'verificationCodeNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$verificationCodeNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$VerificationCodeNotifier = AutoDisposeNotifier<VerificationCodeState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
