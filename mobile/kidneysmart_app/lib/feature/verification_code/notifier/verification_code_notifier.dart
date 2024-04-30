import 'package:dartlog/dartlog.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kidneysmart/core/enum/enum_http_method.dart';
import 'package:kidneysmart/core/enum/enum_screen_state.dart';
import 'package:kidneysmart/core/models/auth_token.dart';
import 'package:kidneysmart/core/notifier/debug_notifier/debug_notifier.dart';
import 'package:kidneysmart/core/service/network/network_client.dart';
import 'package:kidneysmart/core/storage/app_storage.dart';
import 'package:kidneysmart/feature/password_create/view/password_create_screen.dart';

import 'package:kidneysmart/feature/verification_code/enum/enum_backend_status_verification_code.dart';
import 'package:kidneysmart/feature/verification_code/enum/enum_frontend_status_verification_code.dart';
import 'package:kidneysmart/feature/verification_code/model/req_res_verification_code.dart';
import 'package:kidneysmart/navigation/app_router.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'verification_code_notifier.freezed.dart';
part 'verification_code_notifier.g.dart';
part 'verification_code_state.dart';

@riverpod
class VerificationCodeNotifier extends _$VerificationCodeNotifier {
  late final _storage = ref.read(appStorageProvider);
  late final _client = ref.read(networkClientProvider);
  late final _go = ref.read(appRouterProvider);
  late final _debugState = ref.read(debugNotifierProvider);
  @override
  VerificationCodeState build() {
    Future.microtask(load);
    return const VerificationCodeState();
  }

  Future<void> load() async {
    state = state.copyWith(enumScreenStatus: EnumScreenStatus.load);
    // await Future<void>.delayed(const Duration(seconds: 3));
    state = state.copyWith(email: _storage.getEmail());
    state = state.copyWith(enumScreenStatus: EnumScreenStatus.success);
  }

  Future<void> verificationCode() async {
    state = state.copyWith(
      enumFrontendStatus: EnumFrontendStatusVerificationCode.load,
      response: const ResponseVerificationCode(),
    );

    final email = state.email;
    final code = state.code;

    if (email == null || code == null) {
      state = state.copyWith(
        enumFrontendStatus: EnumFrontendStatusVerificationCode.emailOrCodeNull,
      );
      return;
    }

    try {
      final req = RequestVerificationCode(email: email, code: code);

      final responseRaw = await _client.request<dynamic>(
        method: EnumHttpMethod.post,
        url: '${_debugState.enumProject.api}/kidneysmart-auth/v1/verify-code',
        body: req.toJson(),
      );

      final response = ResponseVerificationCode.fromJson(
        responseRaw.data as Map<String, dynamic>,
      );

      state = state.copyWith(
        enumFrontendStatus: EnumFrontendStatusVerificationCode.success,
        response: response,
      );
      // Проверка и установка токенов
      _checkAndSetTokens(response);
    } on Object catch (e, s) {
      Logger.error('error kidneysmart-auth/v1/verify-code', e, s);
      _go.pushErrorScreen(extra: e);
    }
  }

  void setCode(String value) {
    state = state.copyWith(code: value);
  }

  void _checkAndSetTokens(ResponseVerificationCode response) {
    final isSuccess =
        response.enumBackendStatusVerificationCode?.isVerificationSuccessful ??
            false;
    if (!isSuccess) return;

    final accessToken = response.accessToken;
    final expiresIn = response.expiresIn;
    final refreshToken = response.refreshToken;
    if (accessToken == null || expiresIn == null || refreshToken == null) {
      throw Exception('Authentication token data is incomplete');
    }

    _storage.setAuthToken(
      AuthToken(
        accessToken: accessToken,
        expiresIn: expiresIn,
        refreshToken: refreshToken,
      ),
    );

    state = state.copyWith(
      enumFrontendStatus: EnumFrontendStatusVerificationCode.success,
      response: response,
    );
  }
}
