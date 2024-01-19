import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kidneysmart/core/enum/enum_screen_state.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'password_create_notifier.freezed.dart';
part 'password_create_notifier.g.dart';
part 'password_create_state.dart';

@riverpod
class PasswordCreateNotifier extends _$PasswordCreateNotifier {
  @override
  PasswordCreateState build() {
    Future.microtask(load);
    return const PasswordCreateState();
  }

  Future<void> load() async {
    state = state.copyWith(enumStatus: EnumScreenStatus.success);
  }
}
