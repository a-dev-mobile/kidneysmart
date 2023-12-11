import 'package:flutter/material.dart';
import 'package:kidneysmart/core/widgets/alert_snackbar.dart';

class Banner31Day extends StatefulWidget {
  const Banner31Day({
    required this.isInitiallyVisible,
    super.key,
  });

  final bool isInitiallyVisible;

  @override
  State<Banner31Day> createState() => Banner31DayState();
}

class Banner31DayState extends State<Banner31Day> {
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
      alertType: AlertType.success,
      isAddPaddingBottom: true,
      onPressedClose: closeAlert,
      title:
          'Уважаемый клиент! Вам доступен продукт сроком на 31 день с возможностью досрочного погашения!',
      textMsg: 'Для подачи заявки воспользуйтесь калькулятором',
    );
  }
}
