// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verification_code_notifier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerificationCodeStateImpl _$$VerificationCodeStateImplFromJson(
        Map<String, dynamic> json) =>
    _$VerificationCodeStateImpl(
      enumScreenStatus:
          $enumDecodeNullable(_$EnumStatusEnumMap, json['enumScreenStatus']) ??
              EnumStatus.init,
      enumResultStatus:
          $enumDecodeNullable(_$EnumStatusEnumMap, json['enumResultStatus']) ??
              EnumStatus.init,
      email: json['email'] as String? ?? '',
      code: json['code'] as String? ?? '',
      response: json['response'] == null
          ? const ResponseVerificationCode()
          : ResponseVerificationCode.fromJson(
              json['response'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VerificationCodeStateImplToJson(
        _$VerificationCodeStateImpl instance) =>
    <String, dynamic>{
      'enumScreenStatus': _$EnumStatusEnumMap[instance.enumScreenStatus]!,
      'enumResultStatus': _$EnumStatusEnumMap[instance.enumResultStatus]!,
      'email': instance.email,
      'code': instance.code,
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

String _$verificationCodeNotifierHash() =>
    r'd074f48f16bcf73ffe15512860a26e35966154e4';

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
