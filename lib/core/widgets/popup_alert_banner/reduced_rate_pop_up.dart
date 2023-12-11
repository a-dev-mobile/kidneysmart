import 'package:flutter/material.dart';
import 'package:kidneysmart/core/widgets/alert_snackbar.dart';

class ReducedRatePopUp extends StatefulWidget {
  const ReducedRatePopUp({
    required this.isInitiallyVisible,
    super.key,
  });
  final bool isInitiallyVisible;

  @override
  State<ReducedRatePopUp> createState() => _ReducedRatePopUpState();
}

class _ReducedRatePopUpState extends State<ReducedRatePopUp> {
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
      alertType: AlertType.warning,
      onPressedClose: closeAlert,
      title: 'Уважаемый клиент!',
      textMsg:
          'Обращаем Ваше внимание, что ставка 0,8% действует только для договоров, оформленных с 1.07.2023 включительно согласно Федеральному закону от 29.12.2022 N 613-ФЗ «О внесении изменений в Федеральный закон «О потребительском кредите (займе)»',
    );
  }
}
