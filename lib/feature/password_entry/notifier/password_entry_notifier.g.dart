// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_entry_notifier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PasswordEntryStateImpl _$$PasswordEntryStateImplFromJson(
        Map<String, dynamic> json) =>
    _$PasswordEntryStateImpl(
      enumStatus:
          $enumDecodeNullable(_$EnumStatusEnumMap, json['enumStatus']) ??
              EnumStatus.init,
    );

Map<String, dynamic> _$$PasswordEntryStateImplToJson(
        _$PasswordEntryStateImpl instance) =>
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

String _$passwordEntryNotifierHash() =>
    r'c050d7a3a02da8a3a22d3a785d9404fa9f897df5';

/// See also [PasswordEntryNotifier].
@ProviderFor(PasswordEntryNotifier)
final passwordEntryNotifierProvider = AutoDisposeNotifierProvider<
    PasswordEntryNotifier, PasswordEntryState>.internal(
  PasswordEntryNotifier.new,
  name: r'passwordEntryNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$passwordEntryNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PasswordEntryNotifier = AutoDisposeNotifier<PasswordEntryState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
