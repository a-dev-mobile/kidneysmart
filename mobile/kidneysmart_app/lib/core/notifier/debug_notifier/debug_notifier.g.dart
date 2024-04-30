// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'debug_notifier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DebugStateImpl _$$DebugStateImplFromJson(Map<String, dynamic> json) =>
    _$DebugStateImpl(
      enumProject:
          $enumDecodeNullable(_$EnumProjectEnumMap, json['enumProject']) ??
              EnumProject.prod,
      enumStore: $enumDecodeNullable(_$EnumStoreEnumMap, json['enumStore']) ??
          EnumStore.unknown,
      isDebugMenuEnabled: json['isDebugMenuEnabled'] as bool? ?? false,
      isShowBtnHttpLog: json['isShowBtnHttpLog'] as bool? ?? false,
      isShowRepaintRainbow: json['isShowRepaintRainbow'] as bool? ?? false,
      isShowPaintSizeEnabled: json['isShowPaintSizeEnabled'] as bool? ?? false,
      isShowUrlPdfPage: json['isShowUrlPdfPage'] as bool? ?? false,
      forceUpdate: json['forceUpdate'] as bool? ?? false,
    );

Map<String, dynamic> _$$DebugStateImplToJson(_$DebugStateImpl instance) =>
    <String, dynamic>{
      'enumProject': _$EnumProjectEnumMap[instance.enumProject]!,
      'enumStore': _$EnumStoreEnumMap[instance.enumStore]!,
      'isDebugMenuEnabled': instance.isDebugMenuEnabled,
      'isShowBtnHttpLog': instance.isShowBtnHttpLog,
      'isShowRepaintRainbow': instance.isShowRepaintRainbow,
      'isShowPaintSizeEnabled': instance.isShowPaintSizeEnabled,
      'isShowUrlPdfPage': instance.isShowUrlPdfPage,
      'forceUpdate': instance.forceUpdate,
    };

const _$EnumProjectEnumMap = {
  EnumProject.prod: 'prod',
  EnumProject.dev: 'dev',
};

const _$EnumStoreEnumMap = {
  EnumStore.appStore: 'appStore',
  EnumStore.googlePlay: 'googlePlay',
  EnumStore.getApps: 'getApps',
  EnumStore.packageInstaller: 'packageInstaller',
  EnumStore.ruStore: 'ruStore',
  EnumStore.appGallery: 'appGallery',
  EnumStore.other: 'other',
  EnumStore.unknown: 'unknown',
};

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$debugNotifierHash() => r'57cb10e01486d1a1d647587f69ff2a7bc2ede623';

/// See also [DebugNotifier].
@ProviderFor(DebugNotifier)
final debugNotifierProvider =
    NotifierProvider<DebugNotifier, DebugState>.internal(
  DebugNotifier.new,
  name: r'debugNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$debugNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$DebugNotifier = Notifier<DebugState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
