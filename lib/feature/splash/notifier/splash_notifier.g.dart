// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'splash_notifier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SplashStateImpl _$$SplashStateImplFromJson(Map<String, dynamic> json) =>
    _$SplashStateImpl(
      enumStatus:
          $enumDecodeNullable(_$EnumScreenStatusEnumMap, json['enumStatus']) ??
              EnumScreenStatus.init,
    );

Map<String, dynamic> _$$SplashStateImplToJson(_$SplashStateImpl instance) =>
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

String _$splashNotifierHash() => r'9add85eb94204cd7817fe09e508f4712486b6552';

/// See also [SplashNotifier].
@ProviderFor(SplashNotifier)
final splashNotifierProvider =
    AutoDisposeNotifierProvider<SplashNotifier, SplashState>.internal(
  SplashNotifier.new,
  name: r'splashNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$splashNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SplashNotifier = AutoDisposeNotifier<SplashState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
