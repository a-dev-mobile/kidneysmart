import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/features/steps/ckd/ckd.dart';
import 'package:nutrition/shared/widget/widget.dart';

class CkdPage extends ConsumerWidget {
  const CkdPage({super.key});

  static const path = '/CkdPage';
  static const name = 'CkdPage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ignore: unused_local_variable
    final state = ref.watch(ckdProvider);
    final notifier = ref.watch(ckdProvider.notifier);

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const Spacer(),
              const BtnCkd(),
              const FieldCreatinine(),
              const Spacer(),
              BasicButton(
                onPressed: notifier.nextPage,
                disabled: !notifier.isValidAll,
                text: 'Продолжить',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
