import 'package:dartlog/dartlog.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kidneysmart/core/enum/enum_http_method.dart';
import 'package:kidneysmart/core/enum/enum_page_status.dart';
import 'package:kidneysmart/core/service/network/network_client.dart';
import 'package:kidneysmart/core/storage/local_storage.dart';
import 'package:kidneysmart/feature/login/enum/enum_login.dart';
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
  late final _storage = ref.read(localStorageProvider);
  late final _client = ref.read(networkClientProvider);
  late final _go = ref.read(appRouterProvider).router;
  @override
  LoginState build() {
    return const LoginState();
  }

  Future<void> login({required String email}) async {
    state = state.copyWith(enumStatus: EnumStatus.load);

    try {
      final req = RequestLogin(email: email);

      final responseRaw = await _client.request<dynamic>(
        method: EnumHttpMethod.post,
        url: 'https://wayofdt.com/kidneysmart-auth/v1/login',
        body: req.toJson(),
      );

      final response =
          ResponseLogin.fromJson(responseRaw.data as Map<String, dynamic>);

      state =
          state.copyWith(enumStatus: EnumStatus.success, response: response);

      switch (response.enumLoginStatus) {
        case EnumLoginStatus.registrationSuccessful:
        case EnumLoginStatus.emailVerificationRequired:
          await _go.pushNamed(VerificationCodePage.name);
        case EnumLoginStatus.passwordSetRequired:
          await _go.pushNamed(PasswordCreatePage.name);
        case EnumLoginStatus.passwordEntryRequired:
          await _go.pushNamed(PasswordEntryPage.name);

        case EnumLoginStatus.emailSendFailed:
        case EnumLoginStatus.internalError:
        case EnumLoginStatus.invalidEmailFormat:
        case EnumLoginStatus.invalidParameters:
        case EnumLoginStatus.invalidRequestBody:
        case EnumLoginStatus.userCreationFailed:
        case null:
      }
    } on Exception catch (e, s) {
      Logger.error('error kidneysmart-auth/v1/login', e, s);
      state = state.copyWith(enumStatus: EnumStatus.error);
    }
  }
}
