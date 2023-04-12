import 'package:meta/meta.dart';

// turngen
class _OnboardingState {
  const _OnboardingState.error([String msg = 'error']);
  const _OnboardingState.load();
  const _OnboardingState.success({required String textMarkdown});
}
// end

//          --TURN_GEN--
//          v0.8.7 (union)
//  *************************************
//         GENERATED CODE
//  *************************************
// coverage:ignore-file
// ignore_for_file: avoid_unused_constructor_parameters, unused_element, avoid-non-null-assertion,  library_private_types_in_public_api,non_constant_identifier_names, always_put_required_named_parameters_first,  avoid_positional_boolean_parameters, strict_raw_type, curly_braces_in_flow_control_structures
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

  T map<T>({
    required T Function(_OnboardingStateError v) error,
    required T Function(_OnboardingStateLoad v) load,
    required T Function(_OnboardingStateSuccess v) success,
  }) {
    switch (_tag) {
      case _OnboardingStateTag.error:
        return error(_OnboardingStateError(_msg_error!));
      case _OnboardingStateTag.load:
        return load(const _OnboardingStateLoad());
      case _OnboardingStateTag.success:
        return success(_OnboardingStateSuccess(_textMarkdown_success!));
    }
  }

  T maybeMap<T>({
    T Function(_OnboardingStateError v)? error,
    T Function(_OnboardingStateLoad v)? load,
    T Function(_OnboardingStateSuccess v)? success,
    required T Function() orElse,
  }) {
    switch (_tag) {
      case _OnboardingStateTag.error:
        if (error != null) return error(_OnboardingStateError(_msg_error!));
        return orElse();
      case _OnboardingStateTag.load:
        if (load != null) return load(const _OnboardingStateLoad());
        return orElse();
      case _OnboardingStateTag.success:
        if (success != null)
          return success(_OnboardingStateSuccess(_textMarkdown_success!));
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
        return error?.call(_OnboardingStateError(_msg_error!));
      case _OnboardingStateTag.load:
        return load?.call(const _OnboardingStateLoad());
      case _OnboardingStateTag.success:
        return success?.call(_OnboardingStateSuccess(_textMarkdown_success!));
    }
  }

  T? maybeMapOrNull<T>({
    T? Function(_OnboardingStateError v)? error,
    T? Function(_OnboardingStateLoad v)? load,
    T? Function(_OnboardingStateSuccess v)? success,
  }) {
    switch (_tag) {
      case _OnboardingStateTag.error:
        if (error != null) return error(_OnboardingStateError(_msg_error!));
        return null;
      case _OnboardingStateTag.load:
        if (load != null) return load(const _OnboardingStateLoad());
        return null;
      case _OnboardingStateTag.success:
        if (success != null)
          return success(_OnboardingStateSuccess(_textMarkdown_success!));
        return null;
    }
  }

  T when<T>({
    required T Function(String msg) error,
    required T Function() load,
    required T Function(String textMarkdown) success,
  }) {
    switch (_tag) {
      case _OnboardingStateTag.error:
        return error(_msg_error!);
      case _OnboardingStateTag.load:
        return load();
      case _OnboardingStateTag.success:
        return success(_textMarkdown_success!);
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
        return Object.hashAll([runtimeType, _msg_error]);
      case _OnboardingStateTag.load:
        return Object.hashAll([runtimeType]);
      case _OnboardingStateTag.success:
        return Object.hashAll([runtimeType, _textMarkdown_success]);
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
  const _OnboardingStateError(this.msg) : super.error(msg);
  final String msg;
}

@immutable
class _OnboardingStateLoad extends OnboardingState {
  const _OnboardingStateLoad() : super.load();
}

@immutable
class _OnboardingStateSuccess extends OnboardingState {
  const _OnboardingStateSuccess(this.textMarkdown)
      : super.success(textMarkdown: textMarkdown);
  final String textMarkdown;
}
