import 'package:flutter/material.dart';

/// {@template load_page}
/// Widget with disabling user action during load
/// {@endtemplate}
class AppErrorPage extends StatelessWidget {
  const AppErrorPage({
    this.msg = '',
    super.key,
  });
  final String msg;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Center(
            child: Text('Error $msg'),
          ),
        ),
      );
}
