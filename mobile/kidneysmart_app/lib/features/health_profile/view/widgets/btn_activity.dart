// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:kidneysmart/core/services/navigation/navigation.dart';

// import 'package:kidneysmart/core/widget/widget.dart';
// import 'package:kidneysmart/features/health_profile/health_profile.dart';
// import 'package:kidneysmart/features/info_html/info_html.dart';

// class BtnActivity extends ConsumerWidget {
//   const BtnActivity({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final state = ref.watch(healthProfileProvider);
//     final notifier = ref.watch(healthProfileProvider.notifier);
//     final stateActivity = state.activity;

//     return AppInputCard(
//       child: BtnToggleText(
//         textList: stateActivity.listActivity.map((e) => e.value).toList(),
//         isSelected: stateActivity.listSelected,
//         onPressed: notifier.setActivity,
//         onPressedInfo: () => ref
//             .read(appRouterServiceProvider)
//             .router
//             .pushNamed(InfoHtmlPage.name, extra: EnumInfoType.activity),
//         errorText: stateActivity.enumValid
//             .maybeMapOrNullValue(error: stateActivity.error),
//         title: 'Укажите свою физическую активность',
//       ),
//     );
//   }
// }

// /*
// class BtnActivity extends StatelessWidget {
//   const BtnActivity({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final l = context.l10n;
//     final cubit = context.watch<ActivityCubit>();
//     final state = cubit.state;
//     final valid = state.validActivity;

//     return AppCard(
//       child: BtnToggleText(
//             textList: [l.normal, l.light],
//             isSelected: state.activitySelected,
//             onPressed:(v)=> cubit.checkActivity(v: v),
//             title: 'Укажите свою физическую активность',
//             errorText: valid.errorText(l: l),
//           onPressedAbout: cubit.goAboutActivity,
//           ),
//     );
//   }
// }
//  */
