import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:nutrition/features/steps/common/widget/widget.dart';
import 'package:nutrition/features/steps/weight/weight.dart';
import 'package:nutrition/gen/gen.dart';
import 'package:nutrition/shared/log/log.dart';
import 'package:nutrition/shared/theme/theme.dart';
import 'package:nutrition/shared/widget/widget.dart';

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
class _WeightPageState extends ConsumerState<StepWeightPage>
    with WidgetsBindingObserver {
  late final TextEditingController controller;

  @override
  void initState() {
    super.initState();
    final initValue = ref.read(weightProvider).result;

    controller = TextEditingController(text: initValue);
    // регистрируем слушателя
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
    final _ = WidgetsBinding.instance.removeObserver(this);
  }

  @override
  void didChangeMetrics() {
    super.didChangeMetrics();
    final isKeyboardOpen =
        WidgetsBinding.instance.window.viewInsets.bottom != 0;
    log.i('isKeyboardClosed = $isKeyboardOpen');
    ref
        .read(weightProvider.notifier)
        .setKeyboard(isKeyboardOpen: isKeyboardOpen);
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(weightProvider);
    final notifier = ref.watch(weightProvider.notifier);

    return ClearFocus(
      child: SafeArea(
        child: Scaffold(
          appBar: const AppMyAppBar(),
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const Text(
                  'Отличная работа!',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.headlineLarge,
                ),
                const SizedBox(height: 16),
                state.enumGender.maybeMapValue(
                  male: _SetGenderImage(
                    assetPaths: AssetPaths.weightMaleSvg,
                    isKeyboardOpen: state.isKeyboardOpen,
                  ),
                  orElse: _SetGenderImage(
                    assetPaths: AssetPaths.weighFemaleSvg,
                    isKeyboardOpen: state.isKeyboardOpen,
                  ),
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
                const Spacer(),
                BtnStepNextBack(
                  isValid: notifier.isValid,
                  backPressed: context.pop<void>,
                  nextPressed: notifier.nextPage,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _SetGenderImage extends StatelessWidget {
  const _SetGenderImage({
    required this.assetPaths,
    this.isKeyboardOpen = false,
  });
  final String assetPaths;
  final bool isKeyboardOpen;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: isKeyboardOpen ? 0 : 250,
      child: SizedBox(
        height: 250,
        child: SvgPicture.asset(assetPaths),
      ),
    );
  }
}
