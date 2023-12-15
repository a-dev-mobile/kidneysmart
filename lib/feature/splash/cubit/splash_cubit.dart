// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kidneysmart/api/api_client.dart';
import 'package:kidneysmart/bootstrap.dart';
import 'package:kidneysmart/core/enum/enum_page_status.dart';
import 'package:kidneysmart/core/service/error_handler/error_handler.dart';
import 'package:kidneysmart/core/storage/local_storage.dart';

import 'package:kidneysmart/navigation/app_router.dart';

import 'package:package_info_plus/package_info_plus.dart';

part 'splash_state.dart';
part 'splash_cubit.freezed.dart';

class SplashCubit extends Cubit<SplashState> {
  final AppRouter _router;
  final LocalStorage _storage;
  final ApiClient _client;

  SplashCubit({
    required AppRouter router,
    required ApiClient client,
    required LocalStorage storage,
  })  : _router = router,
        _storage = storage,
        _client = client,
        super(const SplashState());

  Future<void> load() async {
    await Future<void>.delayed(const Duration(seconds: 2));
    emit(state.copyWith(enumPageStatus: EnumPageStatus.load));

    try {
      await Future<void>.delayed(const Duration(seconds: 2));
      emit(state.copyWith(enumPageStatus: EnumPageStatus.success));
      await Future<void>.delayed(const Duration(seconds: 2));
      // throw Exception('error loading state');
    } catch (e, stackTrace) {
      await ErrorHandler.instance.recordError(e, stackTrace);
      emit(state.copyWith(enumPageStatus: EnumPageStatus.error));
    }
  }
}
