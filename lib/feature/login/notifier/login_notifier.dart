import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kidneysmart/core/enum/enum_page_status.dart';
import 'package:kidneysmart/core/storage/local_storage.dart';


import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_notifier.freezed.dart';
part 'login_notifier.g.dart';
part 'login_state.dart';

@Riverpod(keepAlive: false)
class LoginNotifier extends _$LoginNotifier {
  late final _storage = ref.read(localStorageProvider);
  @override
  LoginState build() {
    return const LoginState();
  }



}
