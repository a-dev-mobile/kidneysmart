import 'package:flutter/material.dart';

/* no: tojson fromJson */
@immutable
class _ConnectivityState {
  const _ConnectivityState.isDisonnected();
  const _ConnectivityState.isConnected();
  const _ConnectivityState.notDetermined();
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

enum ConnectivityStateTag {
  isDisonnected,
  isConnected,
  notDetermined,
}

@immutable
class ConnectivityState {
  final ConnectivityStateTag _tag;

  const ConnectivityState.isDisonnected()
      : _tag = ConnectivityStateTag.isDisonnected;

  const ConnectivityState.isConnected()
      : _tag = ConnectivityStateTag.isConnected;

  const ConnectivityState.notDetermined()
      : _tag = ConnectivityStateTag.notDetermined;

  bool get isDisonnected => _tag == ConnectivityStateTag.isDisonnected;
  bool get isConnected => _tag == ConnectivityStateTag.isConnected;
  bool get notDetermined => _tag == ConnectivityStateTag.notDetermined;

  T map<T>({
    required T Function(_ConnectivityStateIsDisonnected v) isDisonnected,
    required T Function(_ConnectivityStateIsConnected v) isConnected,
    required T Function(_ConnectivityStateNotDetermined v) notDetermined,
  }) {
    switch (_tag) {
      case ConnectivityStateTag.isDisonnected:
        return isDisonnected(
          const _ConnectivityStateIsDisonnected(),
        );
      case ConnectivityStateTag.isConnected:
        return isConnected(
          const _ConnectivityStateIsConnected(),
        );
      case ConnectivityStateTag.notDetermined:
        return notDetermined(
          const _ConnectivityStateNotDetermined(),
        );
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function(_ConnectivityStateIsDisonnected v)? isDisonnected,
    T Function(_ConnectivityStateIsConnected v)? isConnected,
    T Function(_ConnectivityStateNotDetermined v)? notDetermined,
  }) {
    switch (_tag) {
      case ConnectivityStateTag.isDisonnected:
        if (isDisonnected != null) {
          return isDisonnected(
            const _ConnectivityStateIsDisonnected(),
          );
        }
        return orElse();
      case ConnectivityStateTag.isConnected:
        if (isConnected != null) {
          return isConnected(
            const _ConnectivityStateIsConnected(),
          );
        }
        return orElse();
      case ConnectivityStateTag.notDetermined:
        if (notDetermined != null) {
          return notDetermined(
            const _ConnectivityStateNotDetermined(),
          );
        }
        return orElse();
    }
  }

  T? mapOrNull<T>({
    T? Function(_ConnectivityStateIsDisonnected v)? isDisonnected,
    T? Function(_ConnectivityStateIsConnected v)? isConnected,
    T? Function(_ConnectivityStateNotDetermined v)? notDetermined,
  }) {
    switch (_tag) {
      case ConnectivityStateTag.isDisonnected:
        return isDisonnected?.call(
          const _ConnectivityStateIsDisonnected(),
        );
      case ConnectivityStateTag.isConnected:
        return isConnected?.call(
          const _ConnectivityStateIsConnected(),
        );
      case ConnectivityStateTag.notDetermined:
        return notDetermined?.call(
          const _ConnectivityStateNotDetermined(),
        );
    }
  }

  T? maybeMapOrNull<T>({
    T? Function(_ConnectivityStateIsDisonnected v)? isDisonnected,
    T? Function(_ConnectivityStateIsConnected v)? isConnected,
    T? Function(_ConnectivityStateNotDetermined v)? notDetermined,
  }) {
    switch (_tag) {
      case ConnectivityStateTag.isDisonnected:
        if (isDisonnected != null) {
          return isDisonnected(
            const _ConnectivityStateIsDisonnected(),
          );
        }
        return null;
      case ConnectivityStateTag.isConnected:
        if (isConnected != null) {
          return isConnected(
            const _ConnectivityStateIsConnected(),
          );
        }
        return null;
      case ConnectivityStateTag.notDetermined:
        if (notDetermined != null) {
          return notDetermined(
            const _ConnectivityStateNotDetermined(),
          );
        }
        return null;
    }
  }

  T when<T>({
    required T Function() isDisonnected,
    required T Function() isConnected,
    required T Function() notDetermined,
  }) {
    switch (_tag) {
      case ConnectivityStateTag.isDisonnected:
        return isDisonnected();
      case ConnectivityStateTag.isConnected:
        return isConnected();
      case ConnectivityStateTag.notDetermined:
        return notDetermined();
    }
  }

  @override
  bool operator ==(dynamic other) {
    switch (_tag) {
      case ConnectivityStateTag.isDisonnected:
        return identical(this, other) ||
            (other.runtimeType == runtimeType && other is ConnectivityState);

      case ConnectivityStateTag.isConnected:
        return identical(this, other) ||
            (other.runtimeType == runtimeType && other is ConnectivityState);

      case ConnectivityStateTag.notDetermined:
        return identical(this, other) ||
            (other.runtimeType == runtimeType && other is ConnectivityState);
    }
  }

  @override
  int get hashCode {
    switch (_tag) {
      case ConnectivityStateTag.isDisonnected:
        return Object.hashAll(
          [
            runtimeType,
          ],
        );
      case ConnectivityStateTag.isConnected:
        return Object.hashAll(
          [
            runtimeType,
          ],
        );
      case ConnectivityStateTag.notDetermined:
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
      case ConnectivityStateTag.isDisonnected:
        return 'ConnectivityState.isDisonnected()';
      case ConnectivityStateTag.isConnected:
        return 'ConnectivityState.isConnected()';
      case ConnectivityStateTag.notDetermined:
        return 'ConnectivityState.notDetermined()';
    }
  }
}

@immutable
class _ConnectivityStateIsDisonnected extends ConnectivityState {
  const _ConnectivityStateIsDisonnected() : super.isDisonnected();
}

@immutable
class _ConnectivityStateIsConnected extends ConnectivityState {
  const _ConnectivityStateIsConnected() : super.isConnected();
}

@immutable
class _ConnectivityStateNotDetermined extends ConnectivityState {
  const _ConnectivityStateNotDetermined() : super.notDetermined();
}
