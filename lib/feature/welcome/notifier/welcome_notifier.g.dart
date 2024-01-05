// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'welcome_notifier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WelcomeStateImpl _$$WelcomeStateImplFromJson(Map<String, dynamic> json) =>
    _$WelcomeStateImpl(
      enumStatus:
          $enumDecodeNullable(_$EnumStatusEnumMap, json['enumStatus']) ??
              EnumStatus.init,
    );

Map<String, dynamic> _$$WelcomeStateImplToJson(_$WelcomeStateImpl instance) =>
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

String _$welcomeNotifierHash() => r'db456fab8a99d1f306784ad4f00eb9f8686fd6b2';

/// See also [WelcomeNotifier].
@ProviderFor(WelcomeNotifier)
final welcomeNotifierProvider =
    AutoDisposeNotifierProvider<WelcomeNotifier, WelcomeState>.internal(
  WelcomeNotifier.new,
  name: r'welcomeNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$welcomeNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$WelcomeNotifier = AutoDisposeNotifier<WelcomeState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
