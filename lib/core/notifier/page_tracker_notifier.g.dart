// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_tracker_notifier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PageTrackerStateImpl _$$PageTrackerStateImplFromJson(
        Map<String, dynamic> json) =>
    _$PageTrackerStateImpl(
      page: json['page'] as String?,
    );

Map<String, dynamic> _$$PageTrackerStateImplToJson(
        _$PageTrackerStateImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$pageTrackerNotifierHash() =>
    r'ba37ba8f7566738c859f28846476286fec8803c5';

/// See also [PageTrackerNotifier].
@ProviderFor(PageTrackerNotifier)
final pageTrackerNotifierProvider =
    NotifierProvider<PageTrackerNotifier, PageTrackerState>.internal(
  PageTrackerNotifier.new,
  name: r'pageTrackerNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$pageTrackerNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PageTrackerNotifier = Notifier<PageTrackerState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
