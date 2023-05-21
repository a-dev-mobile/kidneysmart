import 'package:meta/meta.dart';

// turngen
class _OnboardingState {
  const _OnboardingState.error([String msg = 'error']);
  const _OnboardingState.load();
  const _OnboardingState.success({required String textMarkdown});
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
class OnboardingState {
  const OnboardingState.error([String msg = 'error'])
      : _tag = _OnboardingStateTag.error,
        _msg_error = msg,
        _textMarkdown_success = null;

  const OnboardingState.load()
      : _tag = _OnboardingStateTag.load,
        _msg_error = null,
        _textMarkdown_success = null;

  const OnboardingState.success({required String textMarkdown})
      : _tag = _OnboardingStateTag.success,
        _msg_error = null,
        _textMarkdown_success = textMarkdown;

  Map<String, dynamic> toMap() {
    switch (_tag) {
      case _OnboardingStateTag.error:
        return {
          'tag': 'error',
          'msg': _msg_error,
        };
      case _OnboardingStateTag.load:
        return {
          'tag': 'load',
        };
      case _OnboardingStateTag.success:
        return {
          'tag': 'success',
          'textMarkdown': _textMarkdown_success,
        };
    }
  }

  static OnboardingState fromMap(Map<dynamic, dynamic> map) {
    final tag = map['tag'];
    switch (tag) {
      case 'error':
        return OnboardingState.error(
          map['msg'] as String? ?? 'error',
        );
      case 'load':
        return const OnboardingState.load();
      case 'success':
        return OnboardingState.success(
          textMarkdown: map['textMarkdown'] != null
              ? map['textMarkdown'] as String
              : throw Exception(
                  "map['textMarkdown']_type_'Null'",
                ),
        );
      default:
        throw ArgumentError('Invalid map: $map');
    }
  }

  T map<T>({
    required T Function(_OnboardingStateError v) error,
    required T Function(_OnboardingStateLoad v) load,
    required T Function(_OnboardingStateSuccess v) success,
  }) {
    switch (_tag) {
      case _OnboardingStateTag.error:
        return error(
          _OnboardingStateError(
            _msg_error!,
          ),
        );
      case _OnboardingStateTag.load:
        return load(
          const _OnboardingStateLoad(),
        );
      case _OnboardingStateTag.success:
        return success(
          _OnboardingStateSuccess(
            _textMarkdown_success!,
          ),
        );
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function(_OnboardingStateError v)? error,
    T Function(_OnboardingStateLoad v)? load,
    T Function(_OnboardingStateSuccess v)? success,
  }) {
    switch (_tag) {
      case _OnboardingStateTag.error:
        if (error != null) {
          return error(
            _OnboardingStateError(
              _msg_error!,
            ),
          );
        }
        return orElse();
      case _OnboardingStateTag.load:
        if (load != null) {
          return load(
            const _OnboardingStateLoad(),
          );
        }
        return orElse();
      case _OnboardingStateTag.success:
        if (success != null) {
          return success(
            _OnboardingStateSuccess(
              _textMarkdown_success!,
            ),
          );
        }
        return orElse();
    }
  }

  T? mapOrNull<T>({
    T? Function(_OnboardingStateError v)? error,
    T? Function(_OnboardingStateLoad v)? load,
    T? Function(_OnboardingStateSuccess v)? success,
  }) {
    switch (_tag) {
      case _OnboardingStateTag.error:
        return error?.call(
          _OnboardingStateError(
            _msg_error!,
          ),
        );
      case _OnboardingStateTag.load:
        return load?.call(
          const _OnboardingStateLoad(),
        );
      case _OnboardingStateTag.success:
        return success?.call(
          _OnboardingStateSuccess(
            _textMarkdown_success!,
          ),
        );
    }
  }

  T? maybeMapOrNull<T>({
    T? Function(_OnboardingStateError v)? error,
    T? Function(_OnboardingStateLoad v)? load,
    T? Function(_OnboardingStateSuccess v)? success,
  }) {
    switch (_tag) {
      case _OnboardingStateTag.error:
        if (error != null) {
          return error(
            _OnboardingStateError(
              _msg_error!,
            ),
          );
        }
        return null;
      case _OnboardingStateTag.load:
        if (load != null) {
          return load(
            const _OnboardingStateLoad(),
          );
        }
        return null;
      case _OnboardingStateTag.success:
        if (success != null) {
          return success(
            _OnboardingStateSuccess(
              _textMarkdown_success!,
            ),
          );
        }
        return null;
    }
  }

  T when<T>({
    required T Function(
      String msg,
    ) error,
    required T Function() load,
    required T Function(
      String textMarkdown,
    ) success,
  }) {
    switch (_tag) {
      case _OnboardingStateTag.error:
        return error(
          _msg_error!,
        );
      case _OnboardingStateTag.load:
        return load();
      case _OnboardingStateTag.success:
        return success(
          _textMarkdown_success!,
        );
    }
  }

  @override
  bool operator ==(dynamic other) {
    switch (_tag) {
      case _OnboardingStateTag.error:
        return identical(this, other) ||
            (other.runtimeType == runtimeType &&
                other is OnboardingState &&
                (identical(
                      other._msg_error,
                      _msg_error,
                    ) ||
                    other._msg_error == _msg_error));
      case _OnboardingStateTag.load:
        return identical(this, other) ||
            (other.runtimeType == runtimeType && other is OnboardingState);

      case _OnboardingStateTag.success:
        return identical(this, other) ||
            (other.runtimeType == runtimeType &&
                other is OnboardingState &&
                (identical(
                      other._textMarkdown_success,
                      _textMarkdown_success,
                    ) ||
                    other._textMarkdown_success == _textMarkdown_success));
    }
  }

  @override
  int get hashCode {
    switch (_tag) {
      case _OnboardingStateTag.error:
        return Object.hashAll(
          [
            runtimeType,
            _msg_error,
          ],
        );
      case _OnboardingStateTag.load:
        return Object.hashAll(
          [
            runtimeType,
          ],
        );
      case _OnboardingStateTag.success:
        return Object.hashAll(
          [
            runtimeType,
            _textMarkdown_success,
          ],
        );
    }
  }

  @override
  String toString() {
    switch (_tag) {
      case _OnboardingStateTag.error:
        return 'OnboardingState.error(msg: $_msg_error)';
      case _OnboardingStateTag.load:
        return 'OnboardingState.load()';
      case _OnboardingStateTag.success:
        return 'OnboardingState.success(textMarkdown: $_textMarkdown_success)';
    }
  }

  final _OnboardingStateTag _tag;
  final String? _msg_error;
  final String? _textMarkdown_success;
}

enum _OnboardingStateTag {
  error,
  load,
  success,
}

@immutable
class _OnboardingStateError extends OnboardingState {
  const _OnboardingStateError(
    this.msg,
  ) : super.error(
          msg,
        );
  final String msg;

  _OnboardingStateError copyWith({
    String? msg,
  }) {
    return _OnboardingStateError(
      msg ?? this.msg,
    );
  }
}

@immutable
class _OnboardingStateLoad extends OnboardingState {
  const _OnboardingStateLoad() : super.load();
}

@immutable
class _OnboardingStateSuccess extends OnboardingState {
  const _OnboardingStateSuccess(
    this.textMarkdown,
  ) : super.success(
          textMarkdown: textMarkdown,
        );
  final String textMarkdown;

  _OnboardingStateSuccess copyWith({
    String? textMarkdown,
  }) {
    return _OnboardingStateSuccess(
      textMarkdown ?? this.textMarkdown,
    );
  }
}
