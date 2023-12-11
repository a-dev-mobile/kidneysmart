import 'package:flutter/material.dart';

import 'package:kidneysmart/core/widgets/default_app_bar.dart';

class TitleRegistration extends StatelessWidget {
  const TitleRegistration(this.title, {super.key});

  final String title;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: DefaultAppBar.titleTextStyle,
      ),
    );
  }
}
