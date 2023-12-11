import 'package:bloc/bloc.dart';
import 'package:kidneysmart/core/log/logger.dart';

// ignore_for_file:avoid-non-ascii-symbols, avoid-dynamic
class AppBlocObserver extends BlocObserver {
  const AppBlocObserver();
  @override
  void onTransition(
    Bloc<dynamic, dynamic> bloc,
    Transition<dynamic, dynamic> transition,
  ) {
    super.onTransition(bloc, transition);
    log.t({
      '🙏${bloc.runtimeType}': 'transition',
      '🙏prev': '${transition.currentState}',
      '🙏curr': '${transition.nextState}',
    });
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);

    log.e(
      '🚑 bloc: error: ${bloc.runtimeType} on error',
      error: error,
      stackTrace: stackTrace,
    );
  }

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);

    log.t({
      '🙌${bloc.runtimeType}': 'change',
      '🙌prev': '${change.currentState}',
      '🙌curr': '${change.nextState}',
    });
  }

  @override
  void onEvent(Bloc<dynamic, dynamic> bloc, Object? event) {
    super.onEvent(bloc, event);

    log
      ..d(
        '✍ ${bloc.runtimeType}',
      )
      ..t('++ $event');
  }

  @override
  void onCreate(BlocBase<dynamic> bloc) {
    super.onCreate(bloc);
    log.d('👍 ${bloc.runtimeType} on create');
  }

  @override
  void onClose(BlocBase<dynamic> bloc) {
    super.onClose(bloc);
    log.d('👎 ${bloc.runtimeType}  on close');
  }
}
