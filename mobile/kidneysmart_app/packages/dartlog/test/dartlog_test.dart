import 'package:dartlog/dartlog.dart';
import 'package:test/test.dart';


void main() {
  // Инициализация Logger
  setUp(() {
    Logger.initialize(packagePrefix: '', basePath: '');
  });

  test('Logger should log info without error', () {
    expect(() => Logger.info('Test Info Log'), returnsNormally);
  });

  test('Logger should log debug without error', () {
    expect(() => Logger.debug('Test Debug Log'), returnsNormally);
  });

  test('Logger should log warning without error', () {
    expect(() => Logger.warning('Test Warning Log'), returnsNormally);
  });

  test('Logger should log error without error', () {
    expect(() => Logger.error('Test Error Log'), returnsNormally);
  });


}
