import 'dart:convert';


import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kidneysmart/enum/enum_page_status.dart';
import 'package:kidneysmart/enum/enum_project.dart';
import 'package:kidneysmart/enum/enum_store.dart';
import 'package:meta/meta.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'debug_notifier.g.dart';
part 'debug_state.dart';
part 'debug_notifier.freezed.dart';

@Riverpod(keepAlive: true)
class DebugNotifier extends _$DebugNotifier {
  @override
  DebugState build() {
    Future.microtask(load);
    return const DebugState();
  }

  Future<void> load() async {
    await loadStart();
    await Future<void>.delayed(const Duration(seconds: 2));
    await loadStart();
  }

  Future<void> loadStart() async {
    state = state.copyWith(enumProject: EnumProject.prod_BLK);
    await Future<void>.delayed(const Duration(seconds: 3));
    state = state.copyWith(enumProject: EnumProject.prod_C7);
    await Future<void>.delayed(const Duration(seconds: 3));
     state = state.copyWith(enumProject: EnumProject.prod_ND);
    await Future<void>.delayed(const Duration(seconds: 3));
  state = state.copyWith(enumProject: EnumProject.stage_1_ND);
  }
}
