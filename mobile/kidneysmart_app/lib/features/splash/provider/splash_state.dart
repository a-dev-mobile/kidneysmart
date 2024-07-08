import 'dart:convert';

import 'package:meta/meta.dart';

class _SplashState {
  const _SplashState.load();
  const _SplashState.success();
}

// end

//          --TURN_GEN--
//             (union)
//  *************************************
//         GENERATED CODE
//  *************************************
// coverage:ignore-file
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: camel_case_types
// ignore_for_file: avoid-non-null-assertion
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: unnecessary_null_checks
// ignore_for_file: unused_element
// ignore_for_file: sort_constructors_first
// ignore_for_file: avoid_unused_constructor_parameters
// ignore_for_file: avoid_positional_boolean_parameters,
// ignore_for_file: always_put_required_named_parameters_first

enum SplashStateTag {
  load,
  success,
}

@immutable
class SplashState {
  final SplashStateTag _tag;

  const SplashState.load() : _tag = SplashStateTag.load;

  const SplashState.success() : _tag = SplashStateTag.success;

  bool get load => _tag == SplashStateTag.load;
  bool get success => _tag == SplashStateTag.success;

  factory SplashState.fromJson(
    String source, [
    SplashStateTag? tag,
  ]) =>
      SplashState.fromMap(
        json.decode(source) as Map<String, dynamic>,
        tag,
      );

  Map<String, dynamic> toMap() {
    switch (_tag) {
      case SplashStateTag.load:
        return {
          'tag': 'load',
        };
      case SplashStateTag.success:
        return {
          'tag': 'success',
        };
    }
  }

  String toJson() => json.encode(toMap());

  factory SplashState.fromMap(
    Map<dynamic, dynamic> map, [
    SplashStateTag? tag,
  ]) {
    tag ??= SplashStateTag.values.byName(map['tag'].toString());
    switch (tag) {
      case SplashStateTag.load:
        return const SplashState.load();
      case SplashStateTag.success:
        return const SplashState.success();
    }
  }

  T map<T>({
    required T Function(_SplashStateLoad v) load,
    required T Function(_SplashStateSuccess v) success,
  }) {
    switch (_tag) {
      case SplashStateTag.load:
        return load(
          const _SplashStateLoad(),
        );
      case SplashStateTag.success:
        return success(
          const _SplashStateSuccess(),
        );
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function(_SplashStateLoad v)? load,
    T Function(_SplashStateSuccess v)? success,
  }) {
    switch (_tag) {
      case SplashStateTag.load:
        if (load != null) {
          return load(
            const _SplashStateLoad(),
          );
        }
        return orElse();
      case SplashStateTag.success:
        if (success != null) {
          return success(
            const _SplashStateSuccess(),
          );
        }
        return orElse();
    }
  }

  T? mapOrNull<T>({
    T? Function(_SplashStateLoad v)? load,
    T? Function(_SplashStateSuccess v)? success,
  }) {
    switch (_tag) {
      case SplashStateTag.load:
        return load?.call(
          const _SplashStateLoad(),
        );
      case SplashStateTag.success:
        return success?.call(
          const _SplashStateSuccess(),
        );
    }
  }

  T? maybeMapOrNull<T>({
    T? Function(_SplashStateLoad v)? load,
    T? Function(_SplashStateSuccess v)? success,
  }) {
    switch (_tag) {
      case SplashStateTag.load:
        if (load != null) {
          return load(
            const _SplashStateLoad(),
          );
        }
        return null;
      case SplashStateTag.success:
        if (success != null) {
          return success(
            const _SplashStateSuccess(),
          );
        }
        return null;
    }
  }

  T when<T>({
    required T Function() load,
    required T Function() success,
  }) {
    switch (_tag) {
      case SplashStateTag.load:
        return load();
      case SplashStateTag.success:
        return success();
    }
  }

  @override
  bool operator ==(dynamic other) {
    switch (_tag) {
      case SplashStateTag.load:
        return identical(this, other) ||
            (other.runtimeType == runtimeType && other is SplashState);

      case SplashStateTag.success:
        return identical(this, other) ||
            (other.runtimeType == runtimeType && other is SplashState);
    }
  }

  @override
  int get hashCode {
    switch (_tag) {
      case SplashStateTag.load:
        return Object.hashAll(
          [
            runtimeType,
          ],
        );
      case SplashStateTag.success:
        return Object.hashAll(
          [
            runtimeType,
          ],
        );
    }
  }

  @override
  String toString() {
    switch (_tag) {
      case SplashStateTag.load:
        return 'SplashState.load()';
      case SplashStateTag.success:
        return 'SplashState.success()';
    }
  }
}

@immutable
class _SplashStateLoad extends SplashState {
  const _SplashStateLoad() : super.load();
}

@immutable
class _SplashStateSuccess extends SplashState {
  const _SplashStateSuccess() : super.success();
}
