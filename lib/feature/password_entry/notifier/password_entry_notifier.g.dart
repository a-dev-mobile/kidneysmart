// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_entry_notifier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PasswordEntryStateImpl _$$PasswordEntryStateImplFromJson(
        Map<String, dynamic> json) =>
    _$PasswordEntryStateImpl(
      enumStatus:
          $enumDecodeNullable(_$EnumScreenStatusEnumMap, json['enumStatus']) ??
              EnumScreenStatus.init,
    );

Map<String, dynamic> _$$PasswordEntryStateImplToJson(
        _$PasswordEntryStateImpl instance) =>
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

String _$passwordEntryNotifierHash() =>
    r'd811b1bf32d9ec3a2ad6d93e876f8d7f35b9f9f8';

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
