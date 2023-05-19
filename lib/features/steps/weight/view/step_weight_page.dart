import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kidneysmart/core/constants/app_insets.dart';
import 'package:kidneysmart/core/theme/theme.dart';
import 'package:kidneysmart/core/widget/universal/page_body.dart';
import 'package:kidneysmart/core/widget/widget.dart';
import 'package:kidneysmart/features/drawer/views/app_drawer.dart';
import 'package:kidneysmart/features/steps/common/widget/widget.dart';
import 'package:kidneysmart/features/steps/weight/weight.dart';
import 'package:kidneysmart/gen/gen.dart';

/// {@template weight_page}
/// WeightPage widget
/// {@endtemplate}
class StepWeightPage extends ConsumerStatefulWidget {
  /// {@macro weight_page}
  const StepWeightPage({super.key});

  static const path = '/WeightPage';
  static const name = 'WeightPage';

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _WeightPageState();
}

/// State for widget WeightPage
class _WeightPageState extends ConsumerState<StepWeightPage> {
  late final TextEditingController controller;

  @override
  void initState() {
    super.initState();
    final initValue = ref.read(weightProvider).result;

    controller = TextEditingController(text: initValue);
  }

  @override
  void dispose() {
    controller.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(weightProvider);
    final notifier = ref.watch(weightProvider.notifier);

    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: const AppMyAppBar(),
      drawer: const AppDrawer(),
      body: PageBody(
        controller: _scrollController,
        child: ListView(
          controller: _scrollController,
          padding: const EdgeInsets.all(AppInsets.l),
          children: [
            const Text(
              'Еще чуть-чуть...',
              textAlign: TextAlign.center,
              style: AppTextStyles.headlineLarge,
            ),
            const SizedBox(height: 16),
            ContainerSvgAnimate(
              assetPaths: state.enumGender.maybeMapValue(
                male: AssetPaths.weightMaleSvg,
                orElse: AssetPaths.weighFemaleSvg,
              ),
              isKeyboardOpen: false,
              heightMax: 250,
            ),
            const SizedBox(height: 16),
            const Text(
              'Укажите свой текущий вес',
              textAlign: TextAlign.center,
              style: AppTextStyles.headlineLarge,
            ),
            const SizedBox(height: 8),
            Text(
              'Можно указать примерно.\nВы сможете изменить вес позже',
              textAlign: TextAlign.center,
              style: AppTextStyles.labelLarge.copyWith(
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              // autofocus: true,
              controller: controller,
              decoration: InputDecoration(
                labelText: 'Вес',
                errorText:
                    state.enumValid.maybeMapOrNullValue(error: state.error),
                errorMaxLines: 2,
                suffixText: 'кг',
              ),
              keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
              ),
              onChanged: notifier.setWeight,
              inputFormatters: [
                LengthLimitingTextInputFormatter(6),
                FilteringTextInputFormatter.allow(
                  RegExp(r'(^\d*\.?\d*)'),
                ),
              ],
            ),
            const SizedBox(height: 16),
            BtnStepNextBack(
              isValid: notifier.isValid,
              backPressed: notifier.previousPage,
              nextPressed: notifier.nextPage,
            ),
          ],
        ),
      ),
    );
  }
}
