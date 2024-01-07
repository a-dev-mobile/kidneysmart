// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_create_notifier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PasswordCreateStateImpl _$$PasswordCreateStateImplFromJson(
        Map<String, dynamic> json) =>
    _$PasswordCreateStateImpl(
      enumStatus:
          $enumDecodeNullable(_$EnumStatusEnumMap, json['enumStatus']) ??
              EnumStatus.init,
    );

Map<String, dynamic> _$$PasswordCreateStateImplToJson(
        _$PasswordCreateStateImpl instance) =>
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

String _$passwordCreateNotifierHash() =>
    r'80667d560d3b32593fb5022c6676089db3e2a55d';

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
