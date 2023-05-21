import 'package:meta/meta.dart';

/// Represents all app failures
class _Failure implements Exception {
  /// Expected value is null or empty
  const _Failure.empty();

  /// Any status other than 200
  const _Failure.badRequest();

  ///  Expected value has invalid format
  const _Failure.unprocessableEntity();

  /// Get the error message for specified failure
  const _Failure.other();
}
// end

//          --TURN_GEN--
//             (union)
//  *************************************
//         GENERATED CODE
//  *************************************
// coverage:ignore-file
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: avoid-non-null-assertion
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: unnecessary_null_checks
// ignore_for_file: unused_element
// ignore_for_file: avoid_unused_constructor_parameters
// ignore_for_file: avoid_positional_boolean_parameters,
// ignore_for_file: always_put_required_named_parameters_first

@immutable

/// Represents all app failures
class Failure implements Exception {
  const Failure.empty() : _tag = _FailureTag.empty;

  const Failure.badRequest() : _tag = _FailureTag.badRequest;

  const Failure.unprocessableEntity() : _tag = _FailureTag.unprocessableEntity;

  const Failure.other() : _tag = _FailureTag.other;

  Map<String, dynamic> toMap() {
    switch (_tag) {
      case _FailureTag.empty:
        return {
          'tag': 'empty',
        };
      case _FailureTag.badRequest:
        return {
          'tag': 'badRequest',
        };
      case _FailureTag.unprocessableEntity:
        return {
          'tag': 'unprocessableEntity',
        };
      case _FailureTag.other:
        return {
          'tag': 'other',
        };
    }
  }

  static Failure fromMap(Map<dynamic, dynamic> map) {
    final tag = map['tag'];
    switch (tag) {
      case 'empty':
        return const Failure.empty();
      case 'badRequest':
        return const Failure.badRequest();
      case 'unprocessableEntity':
        return const Failure.unprocessableEntity();
      case 'other':
        return const Failure.other();
      default:
        throw ArgumentError('Invalid map: $map');
    }
  }

  T map<T>({
    required T Function(_FailureEmpty v) empty,
    required T Function(_FailureBadRequest v) badRequest,
    required T Function(_FailureUnprocessableEntity v) unprocessableEntity,
    required T Function(_FailureOther v) other,
  }) {
    switch (_tag) {
      case _FailureTag.empty:
        return empty(
          const _FailureEmpty(),
        );
      case _FailureTag.badRequest:
        return badRequest(
          const _FailureBadRequest(),
        );
      case _FailureTag.unprocessableEntity:
        return unprocessableEntity(
          const _FailureUnprocessableEntity(),
        );
      case _FailureTag.other:
        return other(
          const _FailureOther(),
        );
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function(_FailureEmpty v)? empty,
    T Function(_FailureBadRequest v)? badRequest,
    T Function(_FailureUnprocessableEntity v)? unprocessableEntity,
    T Function(_FailureOther v)? other,
  }) {
    switch (_tag) {
      case _FailureTag.empty:
        if (empty != null) {
          return empty(
            const _FailureEmpty(),
          );
        }
        return orElse();
      case _FailureTag.badRequest:
        if (badRequest != null) {
          return badRequest(
            const _FailureBadRequest(),
          );
        }
        return orElse();
      case _FailureTag.unprocessableEntity:
        if (unprocessableEntity != null) {
          return unprocessableEntity(
            const _FailureUnprocessableEntity(),
          );
        }
        return orElse();
      case _FailureTag.other:
        if (other != null) {
          return other(
            const _FailureOther(),
          );
        }
        return orElse();
    }
  }

  T? mapOrNull<T>({
    T? Function(_FailureEmpty v)? empty,
    T? Function(_FailureBadRequest v)? badRequest,
    T? Function(_FailureUnprocessableEntity v)? unprocessableEntity,
    T? Function(_FailureOther v)? other,
  }) {
    switch (_tag) {
      case _FailureTag.empty:
        return empty?.call(
          const _FailureEmpty(),
        );
      case _FailureTag.badRequest:
        return badRequest?.call(
          const _FailureBadRequest(),
        );
      case _FailureTag.unprocessableEntity:
        return unprocessableEntity?.call(
          const _FailureUnprocessableEntity(),
        );
      case _FailureTag.other:
        return other?.call(
          const _FailureOther(),
        );
    }
  }

  T? maybeMapOrNull<T>({
    T? Function(_FailureEmpty v)? empty,
    T? Function(_FailureBadRequest v)? badRequest,
    T? Function(_FailureUnprocessableEntity v)? unprocessableEntity,
    T? Function(_FailureOther v)? other,
  }) {
    switch (_tag) {
      case _FailureTag.empty:
        if (empty != null) {
          return empty(
            const _FailureEmpty(),
          );
        }
        return null;
      case _FailureTag.badRequest:
        if (badRequest != null) {
          return badRequest(
            const _FailureBadRequest(),
          );
        }
        return null;
      case _FailureTag.unprocessableEntity:
        if (unprocessableEntity != null) {
          return unprocessableEntity(
            const _FailureUnprocessableEntity(),
          );
        }
        return null;
      case _FailureTag.other:
        if (other != null) {
          return other(
            const _FailureOther(),
          );
        }
        return null;
    }
  }

  T when<T>({
    required T Function() empty,
    required T Function() badRequest,
    required T Function() unprocessableEntity,
    required T Function() other,
  }) {
    switch (_tag) {
      case _FailureTag.empty:
        return empty();
      case _FailureTag.badRequest:
        return badRequest();
      case _FailureTag.unprocessableEntity:
        return unprocessableEntity();
      case _FailureTag.other:
        return other();
    }
  }

  @override
  bool operator ==(dynamic other) {
    switch (_tag) {
      case _FailureTag.empty:
        return identical(this, other) ||
            (other.runtimeType == runtimeType && other is Failure);

      case _FailureTag.badRequest:
        return identical(this, other) ||
            (other.runtimeType == runtimeType && other is Failure);

      case _FailureTag.unprocessableEntity:
        return identical(this, other) ||
            (other.runtimeType == runtimeType && other is Failure);

      case _FailureTag.other:
        return identical(this, other) ||
            (other.runtimeType == runtimeType && other is Failure);
    }
  }

  @override
  int get hashCode {
    switch (_tag) {
      case _FailureTag.empty:
        return Object.hashAll(
          [
            runtimeType,
          ],
        );
      case _FailureTag.badRequest:
        return Object.hashAll(
          [
            runtimeType,
          ],
        );
      case _FailureTag.unprocessableEntity:
        return Object.hashAll(
          [
            runtimeType,
          ],
        );
      case _FailureTag.other:
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
      case _FailureTag.empty:
        return 'Failure.empty()';
      case _FailureTag.badRequest:
        return 'Failure.badRequest()';
      case _FailureTag.unprocessableEntity:
        return 'Failure.unprocessableEntity()';
      case _FailureTag.other:
        return 'Failure.other()';
    }
  }

  final _FailureTag _tag;
}

enum _FailureTag {
  empty,
  badRequest,
  unprocessableEntity,
  other,
}

@immutable
class _FailureEmpty extends Failure {
  const _FailureEmpty() : super.empty();
}

@immutable
class _FailureBadRequest extends Failure {
  const _FailureBadRequest() : super.badRequest();
}

@immutable
class _FailureUnprocessableEntity extends Failure {
  const _FailureUnprocessableEntity() : super.unprocessableEntity();
}

@immutable
class _FailureOther extends Failure {
  const _FailureOther() : super.other();
}
