import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class InternetCubit extends Cubit<bool?> {
  InternetCubit() : super(null) {
    _subscription =
        Connectivity().onConnectivityChanged.listen(_handleConnectivityResult);
  }

  StreamSubscription<ConnectivityResult>? _subscription;

  bool _handleConnectivityResult(ConnectivityResult result) {
    if (result == ConnectivityResult.none) {
      emit(true);
      return true;
    } else {
      emit(false);
      return false;
    }
  }

  Future<void> checkConnectivity() async {
    try {
      final result = await Connectivity().checkConnectivity();
      _handleConnectivityResult(result);
    } catch (e) {
      emit(null); // Ошибка при проверке подключения
      // Можно также использовать логирование ошибок
    }
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
