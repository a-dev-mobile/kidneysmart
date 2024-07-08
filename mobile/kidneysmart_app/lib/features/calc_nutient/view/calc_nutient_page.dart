import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kidneysmart/features/calc_nutient/calc_nutient.dart';

class CalcNutrientPage extends ConsumerWidget {
  const CalcNutrientPage({super.key});
  static const path = '/CalcNutrientPage';
  static const name = 'CalcNutrientPage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ignore: unused_local_variable
    final state = ref.watch(calcNutientProvider);
    // ignore: unused_local_variable
    final notifier = ref.watch(calcNutientProvider.notifier);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Результат'),
        ),
      ),
    );
  }
}
