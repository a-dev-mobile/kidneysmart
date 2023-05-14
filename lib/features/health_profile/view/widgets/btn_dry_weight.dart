// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:kidneysmart/core/services/navigation/navigation.dart';

// import 'package:kidneysmart/core/widget/widget.dart';
// import 'package:kidneysmart/features/health_profile/health_profile.dart';
// import 'package:kidneysmart/features/info_html/info_html.dart';

// class BtnDryWeight extends ConsumerWidget {
//   const BtnDryWeight({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final state = ref.watch(healthProfileProvider);
//     final notifier = ref.watch(healthProfileProvider.notifier);
//     final stateDry = state.dryWeightSelect;

//     return Visibility(
//       visible: notifier.isDialysis && notifier.isCkdFive,
//       child: AppInputCard(
//         child: BtnToggleText(
//           textList: stateDry.listDryWeight.map((e) => e.value).toList(),
//           isSelected: stateDry.listSelected,
//           onPressed: notifier.setSelectDryWeight,
//           onPressedInfo: () => ref
//               .read(appRouterServiceProvider)
//               .router
//               .pushNamed(InfoHtmlPage.name, extra: EnumInfoType.dryWeight),
//           errorText:
//               stateDry.enumValid.maybeMapOrNullValue(error: stateDry.error),
//           title: 'Вы знаете свой "сухой" вес?',
//         ),
//       ),
//     );
//   }
// }
