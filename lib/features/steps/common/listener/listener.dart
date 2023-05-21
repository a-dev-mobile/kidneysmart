import 'package:meta/meta.dart';

class _ApiResponse {
  const _ApiResponse.success(String content, String? message);
  const _ApiResponse.failed(String? message, String? exception);
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
class ApiResponse {
  const ApiResponse.success(String content, String? message)
      : _tag = _ApiResponseTag.success,
        _content_success = content,
        _message_success = message,
        _message_failed = null,
        _exception_failed = null;

  const ApiResponse.failed(String? message, String? exception)
      : _tag = _ApiResponseTag.failed,
        _content_success = null,
        _message_success = null,
        _message_failed = message,
        _exception_failed = exception;

  Map<String, dynamic> toMap() {
    switch (_tag) {
      case _ApiResponseTag.success:
        return {
          'tag': 'success',
          'content': _content_success,
          'message': _message_success,
        };
      case _ApiResponseTag.failed:
        return {
          'tag': 'failed',
          'message': _message_failed,
          'exception': _exception_failed,
        };
    }
  }

  static ApiResponse fromMap(Map<dynamic, dynamic> map) {
    final tag = map['tag'];
    switch (tag) {
      case 'success':
        return ApiResponse.success(
          map['content'] != null
              ? map['content'] as String
              : throw Exception(
                  "map['content']_type_'Null'",
                ),
          map['message'] as String?,
        );
      case 'failed':
        return ApiResponse.failed(
          map['message'] as String?,
          map['exception'] as String?,
        );
      default:
        throw ArgumentError('Invalid map: $map');
    }
  }

  T map<T>({
    required T Function(_ApiResponseSuccess v) success,
    required T Function(_ApiResponseFailed v) failed,
  }) {
    switch (_tag) {
      case _ApiResponseTag.success:
        return success(
          _ApiResponseSuccess(
            _content_success!,
            _message_success,
          ),
        );
      case _ApiResponseTag.failed:
        return failed(
          _ApiResponseFailed(
            _message_failed,
            _exception_failed,
          ),
        );
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function(_ApiResponseSuccess v)? success,
    T Function(_ApiResponseFailed v)? failed,
  }) {
    switch (_tag) {
      case _ApiResponseTag.success:
        if (success != null) {
          return success(
            _ApiResponseSuccess(
              _content_success!,
              _message_success,
            ),
          );
        }
        return orElse();
      case _ApiResponseTag.failed:
        if (failed != null) {
          return failed(
            _ApiResponseFailed(
              _message_failed,
              _exception_failed,
            ),
          );
        }
        return orElse();
    }
  }

  T? mapOrNull<T>({
    T? Function(_ApiResponseSuccess v)? success,
    T? Function(_ApiResponseFailed v)? failed,
  }) {
    switch (_tag) {
      case _ApiResponseTag.success:
        return success?.call(
          _ApiResponseSuccess(
            _content_success!,
            _message_success,
          ),
        );
      case _ApiResponseTag.failed:
        return failed?.call(
          _ApiResponseFailed(
            _message_failed,
            _exception_failed,
          ),
        );
    }
  }

  T? maybeMapOrNull<T>({
    T? Function(_ApiResponseSuccess v)? success,
    T? Function(_ApiResponseFailed v)? failed,
  }) {
    switch (_tag) {
      case _ApiResponseTag.success:
        if (success != null) {
          return success(
            _ApiResponseSuccess(
              _content_success!,
              _message_success,
            ),
          );
        }
        return null;
      case _ApiResponseTag.failed:
        if (failed != null) {
          return failed(
            _ApiResponseFailed(
              _message_failed,
              _exception_failed,
            ),
          );
        }
        return null;
    }
  }

  T when<T>({
    required T Function(
      String content,
      String? message,
    ) success,
    required T Function(
      String? message,
      String? exception,
    ) failed,
  }) {
    switch (_tag) {
      case _ApiResponseTag.success:
        return success(
          _content_success!,
          _message_success,
        );
      case _ApiResponseTag.failed:
        return failed(
          _message_failed,
          _exception_failed,
        );
    }
  }

  @override
  bool operator ==(dynamic other) {
    switch (_tag) {
      case _ApiResponseTag.success:
        return identical(this, other) ||
            (other.runtimeType == runtimeType &&
                other is ApiResponse &&
                (identical(
                      other._content_success,
                      _content_success,
                    ) ||
                    other._content_success == _content_success) &&
                (identical(
                      other._message_success,
                      _message_success,
                    ) ||
                    other._message_success == _message_success));
      case _ApiResponseTag.failed:
        return identical(this, other) ||
            (other.runtimeType == runtimeType &&
                other is ApiResponse &&
                (identical(
                      other._message_failed,
                      _message_failed,
                    ) ||
                    other._message_failed == _message_failed) &&
                (identical(
                      other._exception_failed,
                      _exception_failed,
                    ) ||
                    other._exception_failed == _exception_failed));
    }
  }

  @override
  int get hashCode {
    switch (_tag) {
      case _ApiResponseTag.success:
        return Object.hashAll(
          [
            runtimeType,
            _content_success,
            _message_success,
          ],
        );
      case _ApiResponseTag.failed:
        return Object.hashAll(
          [
            runtimeType,
            _message_failed,
            _exception_failed,
          ],
        );
    }
  }

  @override
  String toString() {
    switch (_tag) {
      case _ApiResponseTag.success:
        return 'ApiResponse.success(content: $_content_success, message: $_message_success)';
      case _ApiResponseTag.failed:
        return 'ApiResponse.failed(message: $_message_failed, exception: $_exception_failed)';
    }
  }

  final _ApiResponseTag _tag;
  final String? _content_success;
  final String? _message_success;
  final String? _message_failed;
  final String? _exception_failed;
}

enum _ApiResponseTag {
  success,
  failed,
}

@immutable
class _ApiResponseSuccess extends ApiResponse {
  const _ApiResponseSuccess(
    this.content,
    this.message,
  ) : super.success(
          content,
          message,
        );
  final String content;
  final String? message;

  _ApiResponseSuccess copyWith({
    String? content,
    String? message,
  }) {
    return _ApiResponseSuccess(
      content ?? this.content,
      message ?? this.message,
    );
  }
}

@immutable
class _ApiResponseFailed extends ApiResponse {
  const _ApiResponseFailed(
    this.message,
    this.exception,
  ) : super.failed(
          message,
          exception,
        );
  final String? message;
  final String? exception;

  _ApiResponseFailed copyWith({
    String? message,
    String? exception,
  }) {
    return _ApiResponseFailed(
      message ?? this.message,
      exception ?? this.exception,
    );
  }
}
