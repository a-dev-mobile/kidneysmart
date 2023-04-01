// ignore_for_file: constant_identifier_names

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/core/enum/enum.dart';
import 'package:nutrition/features/common/common.dart';

final heightProvider = StateNotifierProvider<HeightNotifier, HeightState>(
  (ref) {
    return HeightNotifier(
      ref: ref,
    )..load();
  },
);

class HeightNotifier extends StateNotifier<HeightState> {
  HeightNotifier({
    required Ref ref,
  })  : _ref = ref,
        super(
          const HeightState(),
        );

  // ignore: unused_field
  final Ref _ref;
  static const _MIN_HEIGHT = 50;
  static const _MAX_HEIGHT = 220;

  void load() {
    final list = <String>[];
    for (var i = _MAX_HEIGHT; i > _MIN_HEIGHT; i--) {
      list.add(i.toString());
    }

    state = HeightState(heightList: list);
  }

  void setHeight(String? v, {bool isSaveLocal = true}) {
    var error = '';

    if (v?.isEmpty ?? true && state.result.isEmpty) {
      error = 'Рост не указан';
    }
    state = state.copyWith(
      result: v,
      value: double.tryParse(v!),
      errorMessage: error,
      enumValid: error.isEmpty ? EnumValid.valid : EnumValid.error,
    );
//     if (isSaveLocal) _saveState();
  }
}
