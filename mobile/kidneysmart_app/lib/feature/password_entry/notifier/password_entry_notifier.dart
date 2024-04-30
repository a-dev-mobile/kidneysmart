import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kidneysmart/core/enum/enum_screen_state.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'password_entry_notifier.freezed.dart';
part 'password_entry_notifier.g.dart';
part 'password_entry_state.dart';

@riverpod
class PasswordEntryNotifier extends _$PasswordEntryNotifier {
  @override
  PasswordEntryState build() {
    Future.microtask(load);
    return const PasswordEntryState();
  }

  Future<void> load() async {
    state = state.copyWith(enumStatus: EnumScreenStatus.success);
  }
}
