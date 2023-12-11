import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kidneysmart/api/model/user_api/api_user_loan.dart';

import 'package:kidneysmart/app/style/color/app_color.dart';
import 'package:kidneysmart/app/style/typography/app_text_styles.dart';
import 'package:kidneysmart/core/cubits/preloading/wp/wp_preloading_cubit.dart';
import 'package:kidneysmart/core/enum/enum_vacation_status.dart';
import 'package:kidneysmart/core/utils/utils.dart';
import 'package:kidneysmart/core/widgets/alert_snackbar.dart';

class VacationPopUp extends StatefulWidget {
  const VacationPopUp({
    required this.apiUserLoan,
    super.key,
  });

  final ApiUserLoan apiUserLoan;

  @override
  State<VacationPopUp> createState() => _VacationPopUpState();
}

class _VacationPopUpState extends State<VacationPopUp> {
  bool isShow = true;
  late bool vacationExpired;
  late WpPreloadingState wpState;

  @override
  void initState() {
    super.initState();
    wpState = context.read<WpPreloadingCubit>().state;
    vacationExpired =
        DateTimeUtils.isDateExpired(widget.apiUserLoan.vacation!.dateTo);
  }

  void closeAlert() {
    setState(() {
      isShow = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final vacation = widget.apiUserLoan.vacation!;

    if (!isShow || vacation.enumVacationStatus.isInActive || vacationExpired) {
      return const SizedBox.shrink();
    }
    const emailMessage =
        'Чтобы не начислялись штрафы и пени пришлите скан или фото документов на наш email: ';

    return AppAlert(
      isVisible: isShow,
      alertType: vacation.hasDocuments ? AlertType.success : AlertType.warning,
      onPressedClose: closeAlert,
      title: '«Кредитные каникулы» - активированы!',
      widgetMsg: vacation.hasDocuments
          ? null
          : RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: emailMessage,
                    style: AppTextStyle.s14w400h20
                        .copyWith(color: AppColors.yellowAlertText),
                  ),
                  const TextSpan(
                    text: ' ',
                  ),
                  TextSpan(
                    text: wpState.emailSupport,
                    style: AppTextStyle.s14w400h20
                        .copyWith(color: AppColors.yellowAlertText),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        AppLaunchUrl.email(wpState.emailSupport);
                      },
                  ),
                ],
              ),
            ),
    );
  }
}
