import 'package:dartlog/dartlog.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kidneysmart/core/enum/enum_http_method.dart';
import 'package:kidneysmart/core/enum/enum_page_status.dart';
import 'package:kidneysmart/core/service/network/network_client.dart';
import 'package:kidneysmart/core/storage/app_storage.dart';
import 'package:kidneysmart/core/widgets/app_error_screen.dart';
import 'package:kidneysmart/feature/login/enum/enum_response_login.dart';
import 'package:kidneysmart/feature/login/model/req_res_login.dart';
import 'package:kidneysmart/feature/password_create/view/password_create_page.dart';
import 'package:kidneysmart/feature/password_entry/view/password_entry_page.dart';
import 'package:kidneysmart/feature/verification_code/view/verification_code_page.dart';
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
  @override
  LoginState build() {
    Future.microtask(load);
    return const LoginState();
  }

  Future<void> load() async {
    state = state.copyWith(enumScreenStatus: EnumStatus.load);
    // await Future<void>.delayed(const Duration(seconds: 3));
    state = state.copyWith(email: _storage.getEmail());
    state = state.copyWith(enumScreenStatus: EnumStatus.success);
  }

  Future<void> login() async {
    state = state.copyWith(
      enumResultStatus: EnumStatus.load,
      response: const ResponseLogin(),
    );
    // await Future<void>.delayed(const Duration(seconds: 3));
    try {
      final req = RequestLogin(email: state.email);

      final responseRaw = await _client.request<dynamic>(
        method: EnumHttpMethod.post,
        url: 'https://wayofdt.com/kidneysmart-auth/v1/login',
        body: req.toJson(),
      );

      final response =
          ResponseLogin.fromJson(responseRaw.data as Map<String, dynamic>);

      state = state.copyWith(
        enumResultStatus: EnumStatus.success,
        response: response,
      );

      switch (response.enumResponseLoginStatus) {
        case EnumResponseLoginStatus.registrationSuccessful:
        case EnumResponseLoginStatus.emailVerificationRequired:
          await _go.router.pushNamed(VerificationCodePage.name);
        case EnumResponseLoginStatus.passwordSetRequired:
          await _go.router.pushNamed(PasswordCreatePage.name);
        case EnumResponseLoginStatus.passwordEntryRequired:
          await _go.router.pushNamed(PasswordEntryPage.name);

        case EnumResponseLoginStatus.emailSendFailed:
        case EnumResponseLoginStatus.internalError:
        case EnumResponseLoginStatus.invalidEmailFormat:
        case EnumResponseLoginStatus.invalidParameters:
        case EnumResponseLoginStatus.invalidRequestBody:
        case EnumResponseLoginStatus.userCreationFailed:
        case null:
      }
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
