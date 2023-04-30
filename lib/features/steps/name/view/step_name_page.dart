import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nutrition/features/steps/common/widget/widget.dart';
import 'package:nutrition/features/steps/name/name.dart';
import 'package:nutrition/gen/gen.dart';
import 'package:nutrition/shared/theme/theme.dart';
import 'package:nutrition/shared/widget/widget.dart';

/// {@template step_name_page}
/// StepNamePage widget
/// {@endtemplate}
class StepNamePage extends ConsumerWidget {
  /// {@macro step_name_page}
  const StepNamePage({super.key});

  static const path = '/StepNamePage';
  static const name = 'StepNamePage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ignore: unused_local_variable
    final state = ref.watch(stepStepNameProvider);
    final notifier = ref.watch(stepStepNameProvider.notifier);

    return ClearFocus(
      child: SafeArea(
        child: Scaffold(
          appBar: const AppMyAppBar(),
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: CustomScrollView(
              physics: const ClampingScrollPhysics(),
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      const Text(
                        'Давайте познакомимся!',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.headlineLarge,
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        width: 280,
                        height: 240,
                        child: SvgPicture.asset(AssetPaths.nameStepSvg),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Как Вас зовут?',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.headlineLarge,
                      ),
                      const SizedBox(height: 16),
                      FieldName(
                        initValue: state.result,
                        onChangedName: notifier.setName,
                        suggestionsCallback: notifier.getSuggestionsName,
                        onChangedGender: notifier.setGender,
                      ),
                    ],
                  ),
                ),
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Column(
                    children: [
                      const SizedBox(height: 120),
                      const Spacer(),
                      BtnStepNextBack(
                        isValid: notifier.isValid,
                        backPressed: notifier.backPage,
                        nextPressed: notifier.nextPage,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
