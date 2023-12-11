import 'package:flutter/material.dart';
import 'package:kidneysmart/core/widgets/default_app_bar.dart';
import 'package:kidneysmart/core/widgets/title_registration.dart';

class MenuLoanHistory extends StatelessWidget {
  const MenuLoanHistory({
    super.key,
    this.onPressed,
  });
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints:
          BoxConstraints(minHeight: DefaultAppBar.defaultPreferredSize.height),
      child: Row(
        // mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const TitleRegistration('Заём'),
          Container(
            transform: Matrix4.translationValues(16, 0, 0),
            child: TextButton(
              onPressed: onPressed,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('История займов'),
                  Icon(Icons.navigate_next),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
