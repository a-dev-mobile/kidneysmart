import 'package:flutter/material.dart';
import 'package:kidneysmart/api/model/user_api/api_user_loan.dart';
import 'package:kidneysmart/core/widgets/alert_snackbar.dart';
import 'package:kidneysmart/feature/dashboard/pages/active_credit/utils/get_loan_status.dart';

class AlertMakePayment extends StatefulWidget {
  const AlertMakePayment({
    required this.apiUserLoan,
    super.key,
  });

  final ApiUserLoan apiUserLoan;

  @override
  State<AlertMakePayment> createState() => _AlertMakePaymentState();
}

class _AlertMakePaymentState extends State<AlertMakePayment> {
  bool isShow = true;

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
      onPressedClose: closeAlert,
      title: 'Внесите платеж',
      textMsg: 'Ваш платеж ${getLoanStatus(widget.apiUserLoan)}',
    );
  }
}
