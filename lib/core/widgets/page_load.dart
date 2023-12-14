import 'package:flutter/material.dart';


class AppPageLoad extends StatelessWidget {
  const AppPageLoad({
    super.key,
    this.size = 100,
    this.title,
  });
  final double size;
  final String? title;
  @override
  Widget build(BuildContext context) {

    return Material(
      child: Center(
        child: CircularProgressIndicator()
      ),
    );
  }
}
