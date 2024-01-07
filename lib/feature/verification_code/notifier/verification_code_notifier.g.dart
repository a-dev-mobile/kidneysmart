// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verification_code_notifier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerificationCodeStateImpl _$$VerificationCodeStateImplFromJson(
        Map<String, dynamic> json) =>
    _$VerificationCodeStateImpl(
      enumStatus:
          $enumDecodeNullable(_$EnumStatusEnumMap, json['enumStatus']) ??
              EnumStatus.init,
    );

Map<String, dynamic> _$$VerificationCodeStateImplToJson(
        _$VerificationCodeStateImpl instance) =>
    <String, dynamic>{
      'enumStatus': _$EnumStatusEnumMap[instance.enumStatus]!,
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
    r'cddf578fe54cff439de3ef72a1cc1660c73905b0';

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
