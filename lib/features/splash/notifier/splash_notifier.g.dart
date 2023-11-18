// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'splash_notifier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SplashStateImpl _$$SplashStateImplFromJson(Map<String, dynamic> json) =>
    _$SplashStateImpl(
      enumPageStatus: $enumDecodeNullable(
              _$EnumPageStatusEnumMap, json['enumPageStatus']) ??
          EnumPageStatus.init,
    );

Map<String, dynamic> _$$SplashStateImplToJson(_$SplashStateImpl instance) =>
    <String, dynamic>{
      'enumPageStatus': _$EnumPageStatusEnumMap[instance.enumPageStatus]!,
    };

const _$EnumPageStatusEnumMap = {
  EnumPageStatus.init: 'init',
  EnumPageStatus.load: 'load',
  EnumPageStatus.success: 'success',
  EnumPageStatus.error: 'error',
};

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$splashNotifierHash() => r'd97925674b6d601810d1e312ff9f5e12c0031b7d';

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
