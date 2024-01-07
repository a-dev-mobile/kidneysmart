

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kidneysmart/core/enum/enum_page_status.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'verification_code_notifier.freezed.dart';
part 'verification_code_notifier.g.dart';
part 'verification_code_state.dart';



@riverpod
class VerificationCodeNotifier extends _$VerificationCodeNotifier {
  @override
  VerificationCodeState build() {
    Future.microtask(load);
    return const VerificationCodeState();
  }


  Future<void> load() async {

  state = state.copyWith(enumStatus: EnumStatus.success);

    
  }
}
