// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:nutrition/core/services/navigation/navigation.dart';

// import 'package:nutrition/core/widget/widget.dart';
// import 'package:nutrition/features/health_profile/health_profile.dart';
// import 'package:nutrition/features/info_html/info_html.dart';

// class BtnCkd extends ConsumerWidget {
//   const BtnCkd({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final state = ref.watch(healthProfileProvider);
//     final notifier = ref.watch(healthProfileProvider.notifier);
//     final stateCkd = state.ckd;

//     final listBoolAll = stateCkd.listSelected;
//     final listBoolWithoutLast = [...listBoolAll];
//     final boolLast = listBoolWithoutLast.removeLast();

//     final listTextAll = stateCkd.listCkd.map((e) => e.value);
//     final listTextWithoutLast = [...listTextAll];
//     final textLast = listTextWithoutLast.removeLast();

//     return AppInputCard(
//       child: Column(
//         children: [
//           BtnToggleText(
//             onPressedInfo: () => ref
//                 .read(appRouterServiceProvider)
//                 .router
//                 .pushNamed(InfoHtmlPage.name, extra: EnumInfoType.activity),
//             textList: listTextWithoutLast.toList(),
//             isSelected: listBoolWithoutLast.toList(),
//             onPressed: notifier.setCkd,
//             title: 'Укажите стадию ХБП\n(Хроническая болезнь почек)',
//           ),

//           //  all last values
//           BtnToggleText(
//             textList: [textLast],
//             isSelected: [boolLast],
//             onPressed: (v) => notifier.setCkd(v + listBoolWithoutLast.length),
//             errorText: stateCkd.error,
//           ),
//           const FieldCreatinine(),
//         ],
//       ),
//     );
//   }
// }
