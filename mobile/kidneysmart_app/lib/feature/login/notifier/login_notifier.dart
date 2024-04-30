import 'package:dartlog/dartlog.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kidneysmart/core/enum/enum_http_method.dart';
import 'package:kidneysmart/core/enum/enum_screen_state.dart';
import 'package:kidneysmart/core/notifier/debug_notifier/debug_notifier.dart';
import 'package:kidneysmart/core/service/network/network_client.dart';
import 'package:kidneysmart/core/storage/app_storage.dart';
import 'package:kidneysmart/core/widgets/app_error_screen.dart';
import 'package:kidneysmart/feature/login/enum/enum_backend_status_login.dart';
import 'package:kidneysmart/feature/login/enum/enum_frontend_status_login.dart';
import 'package:kidneysmart/feature/login/model/req_res_login.dart';
import 'package:kidneysmart/feature/password_create/view/password_create_screen.dart';

import 'package:kidneysmart/feature/verification_code/view/verification_code_screen.dart';
import 'package:kidneysmart/navigation/app_router.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_notifier.freezed.dart';
part 'login_notifier.g.dart';
part 'login_state.dart';

@Riverpod(keepAlive: false)
class LoginNotifier extends _$LoginNotifier {
  late final _storage = ref.read(appStorageProvider);
  late final _client = ref.read(networkClientProvider);
  late final _go = ref.read(appRouterProvider);
  late final _debugState = ref.read(debugNotifierProvider);
  @override
  LoginState build() {
    Future.microtask(load);
    return const LoginState();
  }

  Future<void> load() async {
    state = state.copyWith(enumScreenStatus: EnumScreenStatus.load);
    // await Future<void>.delayed(const Duration(seconds: 3));
    final email = _storage.getEmail();

    state = state.copyWith(email: email);
    state = state.copyWith(enumScreenStatus: EnumScreenStatus.success);
  }

  Future<void> login() async {
    state = state.copyWith(
      enumFrontendStatus: EnumFrontendStatusLogin.load,
      response: const ResponseLogin(),
    );
    // await Future<void>.delayed(const Duration(seconds: 3));

    final email = state.email;
    if (email == null) {
      state = state.copyWith(
        enumFrontendStatus: EnumFrontendStatusLogin.emailIsNull,
      );
      return;
    }

    try {
      final req = RequestLogin(email: email);

      final responseRaw = await _client.request<dynamic>(
        method: EnumHttpMethod.post,
        url: '${_debugState.enumProject.api}/kidneysmart-auth/v1/login',
        body: req.toJson(),
      );

      final response =
          ResponseLogin.fromJson(responseRaw.data as Map<String, dynamic>);

      state = state.copyWith(
        enumFrontendStatus: EnumFrontendStatusLogin.success,
        response: response,
      );
    } on Object catch (e, s) {
      Logger.error('error kidneysmart-auth/v1/login', e, s);
      _go.pushErrorScreen(extra: e);
    }
  }

  void saveEmailLocal(String email) {
    state = state.copyWith(email: email);
    _storage.setEmail(email);
  }
}
