import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kidneysmart/core/enum/enum_screen_state.dart';
import 'package:kidneysmart/core/notifier/debug_notifier/debug_notifier.dart';
import 'package:kidneysmart/core/service/network/network_client.dart';
import 'package:kidneysmart/core/storage/app_storage.dart';
import 'package:kidneysmart/feature/password_create/enum/enum_frontend_status_password_create.dart';
import 'package:kidneysmart/feature/password_create/model/req_res_password_create.dart';
import 'package:kidneysmart/navigation/app_router.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'password_create_notifier.freezed.dart';
part 'password_create_notifier.g.dart';
part 'password_create_state.dart';

@riverpod
class PasswordCreateNotifier extends _$PasswordCreateNotifier {
  late final _storage = ref.read(appStorageProvider);
  late final _client = ref.read(networkClientProvider);
  late final _go = ref.read(appRouterProvider);
  late final _debugState = ref.read(debugNotifierProvider);
  String? _primaryPassword;
  String? _confirmationPassword;
  @override
  PasswordCreateState build() {
    Future.microtask(load);
    return const PasswordCreateState();
  }

  Future<void> load() async {
    state = state.copyWith(enumScreenStatus: EnumScreenStatus.load);
    // await Future<void>.delayed(const Duration(seconds: 3));
    state = state.copyWith(email: _storage.getEmail());
    state = state.copyWith(enumScreenStatus: EnumScreenStatus.success);
  }

  void setPassword() {
    state = state.copyWith(
      enumFrontendStatus: EnumFrontendStatusPasswordCreate.init,
    );
    if (_primaryPassword != _confirmationPassword) {
      state = state.copyWith(
        enumFrontendStatus: EnumFrontendStatusPasswordCreate.passwordMismatch,
      );
      return;
    }
    // state = state.copyWith(
    //   enumFrontendStatus: EnumFrontendStatusPasswordCreate.load,
    // );
  }

  void savePassword({required String value, bool isConfirmation = false}) {
    if (isConfirmation) {
      _confirmationPassword = value;
    } else {
      _primaryPassword = value;
    }
  }
}
