import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:nutrition/core/widget/widget.dart';

import 'package:nutrition/features/steps/weight/weight.dart';

/// {@template weight_page}
/// WeightPage widget
/// {@endtemplate}
class WeightPage extends ConsumerStatefulWidget {
  /// {@macro weight_page}
  const WeightPage({super.key});

  static const path = '/WeightPage';
  static const name = 'WeightPage';

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _WeightPageState();
}

/// State for widget WeightPage
class _WeightPageState extends ConsumerState<WeightPage> {
  late final TextEditingController controller;

  @override
  void initState() {
    final initValue = ref.read(weightProvider).result;

    controller = TextEditingController(text: initValue);

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(weightProvider);
    final notifier = ref.watch(weightProvider.notifier);

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Spacer(),
              const Text('Какой у вас сейчас вес?'),
              // const DropUnitWeight(),
              const SizedBox(height: 10),
              TextField(
                controller: controller,
                decoration: InputDecoration(
                  labelText: 'Вес',
                  errorText:
                      state.enumValid.maybeMapOrNullValue(error: state.error),
                  errorMaxLines: 2,
                  suffixText: 'кг',
                ),
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                onChanged: notifier.setWeight,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(6),
                  FilteringTextInputFormatter.allow(RegExp(r'(^\d*\.?\d*)')),
                ],
              ),

              const Spacer(),
              BasicButton(
                onPressed: notifier.nextPage,
                disabled: !notifier.isValid,
                text: 'Продолжить',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
