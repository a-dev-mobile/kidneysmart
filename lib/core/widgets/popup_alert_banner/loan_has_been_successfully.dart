import 'package:flutter/material.dart';

import 'package:kidneysmart/core/cubits/preloading/wp/wp_preloading_cubit.dart';
import 'package:kidneysmart/core/widgets/alert_snackbar.dart';

class LoanHasBeenSuccessfullyPopUp extends StatefulWidget {
  const LoanHasBeenSuccessfullyPopUp({
    required this.isInitiallyVisible,
    super.key,
  });

  final bool isInitiallyVisible;

  @override
  State<LoanHasBeenSuccessfullyPopUp> createState() =>
      _LoanHasBeenSuccessfullyPopUpState();
}

class _LoanHasBeenSuccessfullyPopUpState
    extends State<LoanHasBeenSuccessfullyPopUp> {
  bool isShow = true;
  late bool vacationExpired;
  late WpPreloadingState wpState;

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
      alertType: AlertType.success,
      onPressedClose: closeAlert,
      title: 'Поздравляем!\nВаш заём успешно погашен.',
      textMsg:
          'Вам предварительно одобрен новый заем, деньги у вас через 2 минуты',
    );
  }
}
