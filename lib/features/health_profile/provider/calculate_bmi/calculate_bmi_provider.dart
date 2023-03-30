// ignore_for_file: constant_identifier_names

import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:nutrition/features/health_profile/health_profile.dart';

final calculateBmiProvider =
    StateNotifierProvider.autoDispose<CalculateBmiNotifier, CalculateBmiState>(
  (ref) {
    return CalculateBmiNotifier(
      height: ref.watch(healthProfileProvider).validHeightModel.value,
      weight: ref.watch(healthProfileProvider).validWeightModel.value,
    )..load();
  },
);

class CalculateBmiNotifier extends StateNotifier<CalculateBmiState> {
  CalculateBmiNotifier({
    required this.weight,
    required this.height,
  }) : super(
          const CalculateBmiState(),
        );

  final String weight;
  final String height;

  void load() {
    final w = double.tryParse(weight);
    final h = double.tryParse(height);

    if (w == null || h == null) return;

    final result = w / pow(h / 100, 2);

    state = state.copyWith(value: result);
  }
}
