import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kidneysmart/core/enum/enum_internet_status.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'internet_notifier.freezed.dart';
part 'internet_notifier.g.dart';
part 'internet_state.dart';

@Riverpod(keepAlive: true)
class InternerNotifier extends _$InternerNotifier {
  @override
  InternetState build() {
    _subscription =
        Connectivity().onConnectivityChanged.listen(_handleConnectivityResult);

    ref.onDispose(() {
      _subscription?.cancel();
    });

    return const InternetState();
  }

  StreamSubscription<ConnectivityResult>? _subscription;

  void _handleConnectivityResult(ConnectivityResult result) {
    switch (result) {
      case ConnectivityResult.none:
        state =
            state.copyWith(enumInternetStatus: EnumInternetStatus.notConnected);
      case ConnectivityResult.mobile:
        state = state.copyWith(enumInternetStatus: EnumInternetStatus.mobile);
      case ConnectivityResult.wifi:
        state = state.copyWith(enumInternetStatus: EnumInternetStatus.wifi);

      case ConnectivityResult.bluetooth:
      case ConnectivityResult.other:
      case ConnectivityResult.vpn:
      case ConnectivityResult.ethernet:
        state =
            state.copyWith(enumInternetStatus: EnumInternetStatus.connected);
    }
  }

  Future<void> checkConnectivity() async {
    try {
      final result = await Connectivity().checkConnectivity();
      _handleConnectivityResult(result);
    } catch (e) {
      state = state.copyWith(enumInternetStatus: EnumInternetStatus.connected);
    }
  }
}
