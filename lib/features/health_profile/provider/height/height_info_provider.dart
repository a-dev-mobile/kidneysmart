// ignore_for_file: constant_identifier_names

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/features/common/common.dart';

final heightInfoProvider =
    StateNotifierProvider<HeightInfoNotifier, WeightState>(
  (ref) {
    return HeightInfoNotifier(
      ref: ref,
    )..load();
  },
);

class HeightInfoNotifier extends StateNotifier<WeightState> {
  HeightInfoNotifier({
    required Ref ref,
  })  : _ref = ref,
        super(
          const WeightState(),
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

    state = WeightState(heightList: list);
  }
}
