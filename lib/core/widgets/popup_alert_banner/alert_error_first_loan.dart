import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kidneysmart/app/style/color/app_color.dart';
import 'package:kidneysmart/app/style/typography/app_text_styles.dart';
import 'package:kidneysmart/core/widgets/alert_snackbar.dart';
import 'package:kidneysmart/core/widgets/pdf_page.dart';

class AlertErrorFirstLoan extends StatefulWidget {
  const AlertErrorFirstLoan({
    required this.isInitiallyVisible,
    super.key,
  });

  final bool isInitiallyVisible;

  @override
  State<AlertErrorFirstLoan> createState() => AlertErrorFirstLoanState();
}

class AlertErrorFirstLoanState extends State<AlertErrorFirstLoan> {
  late bool isShow;

  @override
  void initState() {
    super.initState();
    isShow = widget.isInitiallyVisible;
  }

  void closeAlert() {
    setState(() {
      isShow = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppAlert(
      isVisible: isShow,
      alertType: AlertType.error,
      isAddPaddingBottom: true,
      onPressedClose: closeAlert,
      title: 'К сожалению вы не выполнили условия акции первый заём 0%',
      widgetMsg: RichText(
        text: TextSpan(
          style: AppTextStyle.s14w400h18.copyWith(color: AppColors.redText),
          children: [
            const TextSpan(
              text: 'Вам начислены проценты за пользование займом. ',
            ),
            TextSpan(
              text: '\nПодробные условия акции',
              style: const TextStyle(decoration: TextDecoration.underline),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  context.pushNamed<void>(
                    PdfPage.name,
                    extra: 'https://nadodeneg.ru/akcii-pod-nol/',
                  );
                },
            ),
          ],
        ),
      ),
    );
  }
}
