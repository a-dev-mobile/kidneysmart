// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'debug_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DebugStateImpl _$$DebugStateImplFromJson(Map<String, dynamic> json) =>
    _$DebugStateImpl(
      enumProject:
          $enumDecodeNullable(_$EnumProjectEnumMap, json['enumProject']) ??
              EnumProject.prod_ND,
      enumStore: $enumDecodeNullable(_$EnumStoreEnumMap, json['enumStore']) ??
          EnumStore.unknown,
      isDebugMenuEnabled: json['isDebugMenuEnabled'] as bool? ?? false,
      isShowDevicePreview: json['isShowDevicePreview'] as bool? ?? false,
      isShowBtnHttpLog: json['isShowBtnHttpLog'] as bool? ?? false,
      isShowRepaintRainbow: json['isShowRepaintRainbow'] as bool? ?? false,
      isShowPaintSizeEnabled: json['isShowPaintSizeEnabled'] as bool? ?? false,
      isShowUrlPdfPage: json['isShowUrlPdfPage'] as bool? ?? false,
    );

Map<String, dynamic> _$$DebugStateImplToJson(_$DebugStateImpl instance) =>
    <String, dynamic>{
      'enumProject': _$EnumProjectEnumMap[instance.enumProject]!,
      'enumStore': _$EnumStoreEnumMap[instance.enumStore]!,
      'isDebugMenuEnabled': instance.isDebugMenuEnabled,
      'isShowDevicePreview': instance.isShowDevicePreview,
      'isShowBtnHttpLog': instance.isShowBtnHttpLog,
      'isShowRepaintRainbow': instance.isShowRepaintRainbow,
      'isShowPaintSizeEnabled': instance.isShowPaintSizeEnabled,
      'isShowUrlPdfPage': instance.isShowUrlPdfPage,
    };

const _$EnumProjectEnumMap = {
  EnumProject.prod_C7: 'prod_C7',
  EnumProject.prod_ND: 'prod_ND',
  EnumProject.prod_BLK: 'prod_BLK',
  EnumProject.stage_1_C7: 'stage_1_C7',
  EnumProject.stage_2_C7: 'stage_2_C7',
  EnumProject.stage_0_ND: 'stage_0_ND',
  EnumProject.stage_1_ND: 'stage_1_ND',
  EnumProject.stage_2_ND: 'stage_2_ND',
  EnumProject.stage_3_ND: 'stage_3_ND',
  EnumProject.stage_0_BLK: 'stage_0_BLK',
  EnumProject.stage_4_BLK: 'stage_4_BLK',
  EnumProject.stage_5_BLK: 'stage_5_BLK',
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
