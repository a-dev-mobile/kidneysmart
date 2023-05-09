import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:nutrition/features/steps/common/widget/widget.dart';
import 'package:nutrition/features/steps/name/name.dart';
import 'package:nutrition/gen/gen.dart';
import 'package:nutrition/shared/data/remote/dadata/dadata.dart';
import 'package:nutrition/shared/theme/theme.dart';
import 'package:nutrition/shared/widget/widget.dart';

/// {@template step_name_page}
/// StepNamePage widget
/// {@endtemplate}
class StepNamePage extends ConsumerStatefulWidget {
  /// {@macro weight_page}
  const StepNamePage({super.key});

  static const path = '/StepNamePage';
  static const name = 'StepNamePage';

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _StepNamePageState();
}

/// State for widget WeightPage
class _StepNamePageState extends ConsumerState<StepNamePage>
    with WidgetsBindingObserver {
  late final TextEditingController controller;

  @override
  void initState() {
    super.initState();
    final initValue = ref.read(stepNameProvider).result;

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

    ref
        .read(stepNameProvider.notifier)
        .setKeyboard(isKeyboardOpen: isKeyboardOpen);
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final state = ref.watch(stepNameProvider);
    final notifier = ref.watch(stepNameProvider.notifier);

    return StepContainer(
      widgets: [
        const Text(
          'Давайте познакомимся!',
          textAlign: TextAlign.center,
          style: AppTextStyles.headlineLarge,
        ),
        const SizedBox(height: 16),
        // AnimatedContainer(
        //   duration: const Duration(milliseconds: 300),
        //   height: state.isKeyboardOpen ? 50 : 280,
        //   child: SizedBox(
        //     width: 280,
        //     height: 240,
        //     child: SvgPicture.asset(AssetPaths.nameStepSvg),
        //   ),
        // ),

        ContainerSvgAnimate(
          assetPaths: AssetPaths.nameStepSvg,
          heightMax: 240,
          isKeyboardOpen: state.isKeyboardOpen,
        ),
        const SizedBox(height: 16),
        const Text(
          'Как Вас зовут?',
          textAlign: TextAlign.center,
          style: AppTextStyles.headlineLarge,
        ),
        const SizedBox(height: 16),
        TypeAheadField<DataFio>(
          hideOnEmpty: true,
          hideOnLoading: true,
          hideOnError: true,

          textFieldConfiguration: TextFieldConfiguration(
            // autofocus: true,
            decoration: InputDecoration(
              labelText: 'Введите имя',
              errorMaxLines: 3,
              errorText:
                  state.enumValid.maybeMapOrNullValue(error: state.error),
            ),
            controller: controller,
            onChanged: notifier.setName,
            keyboardType: TextInputType.name,
            minLines: 1,
            maxLines: 5,
            textInputAction: TextInputAction.done,
          ),
          suggestionsCallback: notifier.getSuggestionsName,
          itemBuilder: (context, DataFio suggestion) {
            return ListTile(
              visualDensity: const VisualDensity(vertical: -4),
              title: Text(suggestion.name),
            );
          },

          // ignore: prefer-extracting-callbacks
          onSuggestionSelected: (DataFio suggestion) {
            notifier
              ..setName(suggestion.name)
              ..setGender(suggestion.gender);

            controller.text = suggestion.name;
          },
        ),
        const Spacer(),
        BtnStepNextBack(
          isValid: notifier.isValid,
          backPressed: notifier.previousPage,
          nextPressed: notifier.nextPage,
        ),
      ],
    );
  }
}
