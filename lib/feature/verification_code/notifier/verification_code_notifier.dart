import 'package:dartlog/dartlog.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kidneysmart/core/enum/enum_http_method.dart';
import 'package:kidneysmart/core/enum/enum_page_status.dart';
import 'package:kidneysmart/core/notifier/debug_notifier/debug_notifier.dart';
import 'package:kidneysmart/core/service/network/network_client.dart';
import 'package:kidneysmart/core/storage/app_storage.dart';
import 'package:kidneysmart/feature/verification_code/enum/enum_response_verification_code.dart';
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
    state = state.copyWith(enumScreenStatus: EnumStatus.load);
    // await Future<void>.delayed(const Duration(seconds: 3));
    state = state.copyWith(email: _storage.getEmail());
    state = state.copyWith(enumScreenStatus: EnumStatus.success);
  }

  Future<void> verificationCode() async {
    state = state.copyWith(
      enumResultStatus: EnumStatus.load,
      response: const ResponseVerificationCode(),
    );
    // await Future<void>.delayed(const Duration(seconds: 3));
    try {
      final req = RequestVerificationCode(email: state.email, code: state.code);

      final responseRaw = await _client.request<dynamic>(
        method: EnumHttpMethod.post,
        url: '${_debugState.enumProject.api}/kidneysmart-auth/v1/verify-code',
        body: req.toJson(),
      );

      final response = ResponseVerificationCode.fromJson(
          responseRaw.data as Map<String, dynamic>);

      state = state.copyWith(
        enumResultStatus: EnumStatus.success,
        response: response,
      );

    } on Object catch (e, s) {
      Logger.error('error kidneysmart-auth/v1/verify-code', e, s);
      _go.pushErrorScreen(extra: e);
    }
  }

  void setCode(String value) {
    state = state.copyWith(code: value);
  }
}
