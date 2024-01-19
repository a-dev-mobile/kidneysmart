// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'welcome_notifier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WelcomeStateImpl _$$WelcomeStateImplFromJson(Map<String, dynamic> json) =>
    _$WelcomeStateImpl(
      enumStatus:
          $enumDecodeNullable(_$EnumScreenStatusEnumMap, json['enumStatus']) ??
              EnumScreenStatus.init,
    );

Map<String, dynamic> _$$WelcomeStateImplToJson(_$WelcomeStateImpl instance) =>
    <String, dynamic>{
      'enumStatus': _$EnumScreenStatusEnumMap[instance.enumStatus]!,
    };

const _$EnumScreenStatusEnumMap = {
  EnumScreenStatus.init: 'init',
  EnumScreenStatus.load: 'load',
  EnumScreenStatus.success: 'success',
  EnumScreenStatus.error: 'error',
};

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$welcomeNotifierHash() => r'280926a8539026a9e875941c4a3c11d6d08b3301';

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
