// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_create_notifier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PasswordCreateStateImpl _$$PasswordCreateStateImplFromJson(
        Map<String, dynamic> json) =>
    _$PasswordCreateStateImpl(
      enumStatus:
          $enumDecodeNullable(_$EnumScreenStatusEnumMap, json['enumStatus']) ??
              EnumScreenStatus.init,
    );

Map<String, dynamic> _$$PasswordCreateStateImplToJson(
        _$PasswordCreateStateImpl instance) =>
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

String _$passwordCreateNotifierHash() =>
    r'38eed0a96ea9362f11d6fc4a2d140f20e377b42c';

/// See also [PasswordCreateNotifier].
@ProviderFor(PasswordCreateNotifier)
final passwordCreateNotifierProvider = AutoDisposeNotifierProvider<
    PasswordCreateNotifier, PasswordCreateState>.internal(
  PasswordCreateNotifier.new,
  name: r'passwordCreateNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$passwordCreateNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PasswordCreateNotifier = AutoDisposeNotifier<PasswordCreateState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
