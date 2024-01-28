import 'package:dartlog/dartlog.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kidneysmart/core/enum/enum_http_method.dart';
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

  Future<void> setPassword() async {
    state = state.copyWith(
      enumFrontendStatus: EnumFrontendStatusPasswordCreate.init,
    );
    if (_primaryPassword != _confirmationPassword) {
      state = state.copyWith(
        enumFrontendStatus: EnumFrontendStatusPasswordCreate.passwordMismatch,
      );
      return;
    }
    final email = state.email;
    final password = _primaryPassword;
    if (email == null || password == null) {
      state = state.copyWith(
        enumFrontendStatus:
            EnumFrontendStatusPasswordCreate.emailOrPasswordIsNull,
      );
      return;
    }

    final endpoint =
        '${_debugState.enumProject.api}/kidneysmart-auth/v1/set-password';
    try {
      final req = RequestPasswordCreate(email: email, password: password);
      final responseRaw = await _client.request<dynamic>(
        method: EnumHttpMethod.post,
        url: endpoint,
        body: req.toJson(),
      );

      final response = ResponsePasswordCreate.fromJson(
        responseRaw.data as Map<String, dynamic>,
      );

      state = state.copyWith(
        enumFrontendStatus: EnumFrontendStatusPasswordCreate.success,
        response: response,
      );
    } on Object catch (e, s) {
      Logger.error(endpoint, e, s);
      _go.pushErrorScreen(extra: e);
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
