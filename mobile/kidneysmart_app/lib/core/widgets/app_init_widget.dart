import 'package:flutter/material.dart';

class AppInitWidget extends StatelessWidget {
  const AppInitWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(),
          SizedBox(height: 20),
          Text('Initializing...'),
        ],
      ),
    );
  }
}
