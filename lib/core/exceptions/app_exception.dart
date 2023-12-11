import 'package:equatable/equatable.dart';

class AppException implements Exception, Equatable {
  const AppException({required dynamic message}) : _message = message;

  final dynamic _message;

  String get getMessage {
    if (_message is String) return _message as String;

    return '';
  }

  @override
  bool? get stringify => false;

  @override
  List<Object?> get props => [_message];
}
