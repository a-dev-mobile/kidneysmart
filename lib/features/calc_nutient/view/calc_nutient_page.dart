import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/features/calc_nutient/calc_nutient.dart';
import 'package:nutrition/shared/widget/widget.dart';

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
        body: ListView(
          padding: const EdgeInsets.all(10),
          children: [
            const WidgetMarkdown(
              markdown: '''
### Василий, персональные рекомендации для вас готовы!
**Ежедневные советы по питанию**

---
`Можно всегда изменить в приложении`''',
            ),
            state.enumResult.maybeMapValue(
              orElse: const AppPartLoad(),
              success: WidgetMarkdown(markdown: state.markdownResult),
            ),
          ],
        ),
      ),
    );
  }
}
