import 'package:flutter/material.dart';
import 'package:kidneysmart/core/utils/utils.dart';

extension ContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => theme.textTheme;

  Brightness get brightness => theme.brightness;

  Brightness get sysBrightness => mq.platformBrightness;

  bool get isDark => brightness == Brightness.dark;
}
