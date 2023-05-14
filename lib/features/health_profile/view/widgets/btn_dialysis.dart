// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:kidneysmart/core/services/navigation/navigation.dart';

// import 'package:kidneysmart/core/widget/widget.dart';
// import 'package:kidneysmart/features/health_profile/health_profile.dart';
// import 'package:kidneysmart/features/info_html/info_html.dart';

// class BtnDialysis extends ConsumerWidget {
//   const BtnDialysis({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final state = ref.watch(healthProfileProvider);
//     final notifier = ref.watch(healthProfileProvider.notifier);
//     final stateDialysis = state.dialysis;

//     return Visibility(
//       visible: state.ckd.enumCkdSelected
//           .maybeMapValue(orElse: false, five: true, fiveDialysis: true),
//       child: AppInputCard(
//         child: BtnToggleText(
//           textStyle: const TextStyle(fontSize: 14),
//           textList: stateDialysis.listDialysis.map((e) => e.value).toList(),
//           isSelected: stateDialysis.listSelected,
//           onPressed: notifier.setDialysis,
//           onPressedInfo: () => ref
//               .read(appRouterServiceProvider)
//               .router
//               .pushNamed(InfoHtmlPage.name, extra: EnumInfoType.dialysis),
//           errorText: stateDialysis.enumValid
//               .maybeMapOrNullValue(error: stateDialysis.error),
//           title: 'Укажите на диализе вы или нет',
//         ),
//       ),
//     );
//   }
// }
