// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'internet_notifier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InternetStateImpl _$$InternetStateImplFromJson(Map<String, dynamic> json) =>
    _$InternetStateImpl(
      enumInternetStatus: $enumDecodeNullable(
              _$EnumInternetStatusEnumMap, json['enumInternetStatus']) ??
          EnumInternetStatus.connected,
    );

Map<String, dynamic> _$$InternetStateImplToJson(_$InternetStateImpl instance) =>
    <String, dynamic>{
      'enumInternetStatus':
          _$EnumInternetStatusEnumMap[instance.enumInternetStatus]!,
    };

const _$EnumInternetStatusEnumMap = {
  EnumInternetStatus.mobile: 'mobile',
  EnumInternetStatus.wifi: 'wifi',
  EnumInternetStatus.connected: 'connected',
  EnumInternetStatus.notConnected: 'notConnected',
};

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$internerNotifierHash() => r'ea18efa8c8c3d7ca62182c5fc89e29ccab986522';

/// See also [InternerNotifier].
@ProviderFor(InternerNotifier)
final internerNotifierProvider =
    NotifierProvider<InternerNotifier, InternetState>.internal(
  InternerNotifier.new,
  name: r'internerNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$internerNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$InternerNotifier = Notifier<InternetState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
