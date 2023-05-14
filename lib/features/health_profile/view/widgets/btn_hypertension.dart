// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:kidneysmart/core/services/navigation/navigation.dart';

// import 'package:kidneysmart/core/widget/widget.dart';
// import 'package:kidneysmart/features/health_profile/health_profile.dart';
// import 'package:kidneysmart/features/info_html/info_html.dart';

// class BtnHypertension extends ConsumerWidget {
//   const BtnHypertension({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final state = ref.watch(healthProfileProvider);
//     final notifier = ref.watch(healthProfileProvider.notifier);
//     final stateHypertension = state.hypertension;

//     return AppInputCard(
//       child: BtnToggleText(
//         onPressedInfo: () => ref
//             .read(appRouterServiceProvider)
//             .router
//             .pushNamed(InfoHtmlPage.name, extra: EnumInfoType.hypertension),
//         textList:
//             stateHypertension.listHypertension.map((e) => e.value).toList(),
//         isSelected: stateHypertension.listSelected,
//         onPressed: notifier.setHypertension,
//         errorText: stateHypertension.enumValid
//             .maybeMapOrNullValue(error: stateHypertension.error),
//         title: 'Наличие гипертензии\n(высокое кровяное давление)',
//       ),
//     );
//   }
// }
