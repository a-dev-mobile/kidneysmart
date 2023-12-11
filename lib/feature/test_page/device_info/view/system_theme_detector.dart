import 'package:flutter/material.dart';

class SystemThemeDetector extends StatefulWidget {
  const SystemThemeDetector({super.key});

  @override
  SystemThemeDetectorState createState() => SystemThemeDetectorState();
}

class SystemThemeDetectorState extends State<SystemThemeDetector> {
  Brightness? _theme;

  @override
  void initState() {
    super.initState();
    // Don't get the theme here
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _theme = getSystemTheme();
  }

  Brightness getSystemTheme() {
    return MediaQuery.of(context).platformBrightness;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Current System Theme: ${_theme == Brightness.dark ? 'dark' : 'light'}',
        ),
      ],
    );
  }
}
