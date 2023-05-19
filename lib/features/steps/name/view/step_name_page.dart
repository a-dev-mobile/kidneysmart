import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kidneysmart/core/constants/app_insets.dart';
import 'package:kidneysmart/core/theme/theme.dart';
import 'package:kidneysmart/core/widget/universal/page_body.dart';
import 'package:kidneysmart/core/widget/widget.dart';
import 'package:kidneysmart/features/drawer/views/app_drawer.dart';
import 'package:kidneysmart/features/steps/common/listener/listener_keyboard_2.dart';
import 'package:kidneysmart/features/steps/common/widget/widget.dart';
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
  late final ListenerKeyboard2 keyboardListener;
  @override
  void initState() {
    super.initState();
    final initValue = ref.read(stepNameProvider).result;

    controller = TextEditingController(text: initValue);

    // _scrollController.addListener(_scrollMaxScrollExtent);
    keyboardListener = ListenerKeyboard2(
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
    _scrollController.dispose();
    super.dispose();
  }

  final ScrollController _scrollController = ScrollController();

  static const double offsetSuggestion = 170;
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final state = ref.watch(stepNameProvider);
    final notifier = ref.watch(stepNameProvider.notifier);

    ref.listen<StepNameState>(stepNameProvider, (p, c) {
      if (p!.keyboard.isOpen != c.keyboard.isOpen) {
        _scroll(isKeyboardOpen: c.keyboard.isOpen);
      }
    });

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
              'Давайте познакомимся!',
              textAlign: TextAlign.center,
              style: AppTextStyles.headlineLarge,
            ),
            const SizedBox(height: 16),
            SvgPicture.asset(
              AssetPaths.nameStepSvg,
              height: 240,
            ),
            const SizedBox(height: 16),
            const Text(
              'Как Вас зовут?',
              textAlign: TextAlign.center,
              style: AppTextStyles.headlineLarge,
            ),
            const SizedBox(height: 16),

            TextField(
              controller: controller,
              onChanged: notifier.setName,
              keyboardType: TextInputType.name,
              minLines: 1,
              maxLines: 5,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                labelText: 'Введите имя',
                errorMaxLines: 3,
                errorText:
                    state.enumValid.maybeMapOrNullValue(error: state.error),
              ),
            ),
            const SizedBox(height: 16),

            _Btn(notifier: notifier),
            // TypeAheadField<DataFio>(
            //   hideOnEmpty: true,
            //   hideOnLoading: true,
            //   hideOnError: true,

            //   textFieldConfiguration: TextFieldConfiguration(
            //     // autofocus: true,
            //     decoration: InputDecoration(
            //       labelText: 'Введите имя',
            //       errorMaxLines: 3,
            //       errorText:
            //           state.enumValid.maybeMapOrNullValue(error: state.error),
            //     ),
            //     controller: controller,
            //     onChanged: notifier.setName,
            //     keyboardType: TextInputType.name,
            //     minLines: 1,
            //     maxLines: 5,
            //     textInputAction: TextInputAction.done,
            //   ),
            //   suggestionsCallback: notifier.getSuggestionsName,
            //   suggestionsBoxDecoration: const SuggestionsBoxDecoration(
            //     constraints: BoxConstraints(maxHeight: offsetSuggestion),
            //   ),
            //   itemBuilder: (context, DataFio suggestion) {
            //     return ListTile(
            //       visualDensity: const VisualDensity(vertical: -4),
            //       title: Text(suggestion.name),
            //     );
            //   },

            //   // ignore: prefer-extracting-callbacks
            //   onSuggestionSelected: (DataFio suggestion) {
            //     notifier
            //       ..setName(suggestion.name)
            //       ..setGender(suggestion.gender);

            //     controller.text = suggestion.name;
            //   },
            // ),
          ],
        ),
      ),
    );
  }

  Future<void> _scroll({bool isKeyboardOpen = false}) async {
    await Future<void>.delayed(const Duration(milliseconds: 500));

    var height = 0.0;
    if (isKeyboardOpen) height = offsetSuggestion + 90;

    await _scrollController.animateTo(
      height,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeOut,
    );
  }
}

class _Btn extends StatelessWidget {
  const _Btn({
    required this.notifier,
  });

  final StepNameNotifier notifier;

  @override
  Widget build(BuildContext context) {
    return BtnStepNextBack(
      isValid: notifier.isValid,
      backPressed: notifier.previousPage,
      nextPressed: notifier.nextPage,
    );
  }
}
