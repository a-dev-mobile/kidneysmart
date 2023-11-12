// ignore_for_file: unused_element, avoid-passing-async-when-sync-expected


import 'package:flutter/material.dart';

class DebugMenuPage extends StatelessWidget {
  const DebugMenuPage({super.key});
  static const path = '/debug_page';
  static const name = 'debug-page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Debug Menu '),
      ),
    );
  }
}
