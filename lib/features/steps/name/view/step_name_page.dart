import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

import 'package:kidneysmart/core/data/remote/dadata/dadata.dart';

import 'package:kidneysmart/core/theme/theme.dart';
import 'package:kidneysmart/core/widget/widget.dart';
import 'package:kidneysmart/features/steps/common/listener/listener_keyboard.dart';

import 'package:kidneysmart/features/steps/name/name.dart';
import 'package:kidneysmart/gen/gen.dart';

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

class _StepNamePageState extends ConsumerState<StepNamePage> {
  late final TextEditingController controller;
  late final ListenerKeyboard keyboardListener;
  @override
  void initState() {
    super.initState();
    final initValue = ref.read(stepNameProvider).result;

    controller = TextEditingController(text: initValue);

    // _scrollController.addListener(_scrollMaxScrollExtent);
    keyboardListener = ListenerKeyboard(
      context: context,
      onKeyboardStateChanged: (isKeyboardOpen, height) => ref
          .read(stepNameProvider.notifier)
          .setKeyboard(isKeyboardOpen: isKeyboardOpen, height: height),
    );
    keyboardListener.startListening();
  }

  @override
  void dispose() {
    controller.dispose();
    keyboardListener.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final state = ref.watch(stepNameProvider);
    final notifier = ref.watch(stepNameProvider.notifier);

    ref.listen<StepNameState>(stepNameProvider, (p, c) {
      if (p!.keyboard.isOpen != c.keyboard.isOpen) {
        // _scroll(isKeyboardOpen: c.keyboard.isOpen);
      }
    });

    return StepContainer(
      enumValid: state.enumValid,
      backPressed: notifier.backPressed,
      nextPressed: notifier.nextPressed,
      titleAppBar: 'Давайте познакомимся!',
      widgets: [
        ContainerSvgAnimate(
          assetPaths: AssetPaths.nameStepSvg,
          heightMax: 240,
          isKeyboardOpen: state.keyboard.isOpen,
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
      ],
    );
  }

  // Future<void> _scroll({bool isKeyboardOpen = false}) async {
  //   await Future<void>.delayed(const Duration(milliseconds: 500));

  //   var height = 0.0;
  //   if (isKeyboardOpen) height = offsetSuggestion + 90;

  //   await _scrollController.animateTo(
  //     height,
  //     duration: const Duration(milliseconds: 500),
  //     curve: Curves.easeOut,
  //   );
  // }
}
