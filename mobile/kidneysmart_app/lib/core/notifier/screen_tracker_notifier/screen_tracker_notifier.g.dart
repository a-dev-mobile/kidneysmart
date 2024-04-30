// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'screen_tracker_notifier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScreenTrackerStateImpl _$$ScreenTrackerStateImplFromJson(
        Map<String, dynamic> json) =>
    _$ScreenTrackerStateImpl(
      current: json['current'] as String?,
      previous: json['previous'] as String?,
    );

Map<String, dynamic> _$$ScreenTrackerStateImplToJson(
        _$ScreenTrackerStateImpl instance) =>
    <String, dynamic>{
      'current': instance.current,
      'previous': instance.previous,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$screenTrackerNotifierHash() =>
    r'8d0e3e6cdb4932e41e148ecb69cac91a0ebac6e7';

/// See also [ScreenTrackerNotifier].
@ProviderFor(ScreenTrackerNotifier)
final screenTrackerNotifierProvider =
    NotifierProvider<ScreenTrackerNotifier, ScreenTrackerState>.internal(
  ScreenTrackerNotifier.new,
  name: r'screenTrackerNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$screenTrackerNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ScreenTrackerNotifier = Notifier<ScreenTrackerState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
