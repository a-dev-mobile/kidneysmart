// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_notifier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SettingStateImpl _$$SettingStateImplFromJson(Map<String, dynamic> json) =>
    _$SettingStateImpl(
      enumTheme: $enumDecodeNullable(_$EnumThemeEnumMap, json['enumTheme']) ??
          EnumTheme.light,
    );

Map<String, dynamic> _$$SettingStateImplToJson(_$SettingStateImpl instance) =>
    <String, dynamic>{
      'enumTheme': _$EnumThemeEnumMap[instance.enumTheme]!,
    };

const _$EnumThemeEnumMap = {
  EnumTheme.light: 'light',
  EnumTheme.dark: 'dark',
};

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$settingNotifierHash() => r'eee7266498023f106e4ef55e0e261a8517c9f55a';

/// See also [SettingNotifier].
@ProviderFor(SettingNotifier)
final settingNotifierProvider =
    NotifierProvider<SettingNotifier, SettingState>.internal(
  SettingNotifier.new,
  name: r'settingNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$settingNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SettingNotifier = Notifier<SettingState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
