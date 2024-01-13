

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kidneysmart/core/enum/enum_page_status.dart';
import 'package:kidneysmart/core/service/network/network_client.dart';
import 'package:kidneysmart/core/storage/app_storage.dart';
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

  void saveCodeLocal(String value) {
  }
}
