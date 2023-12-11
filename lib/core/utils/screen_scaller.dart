import 'package:flutter/widgets.dart';

class ScreenScaler {
  // Base design dimensions
  static const double baseWidth = 320;
  static const double baseHeight = 568;

  // Caching the scaling factors
  static double? _scalingFactorWidth;
  static double? _scalingFactorHeight;

  // Private method to get the width scaling factor
  static double _getScalingFactorWidth(BuildContext context) {
    if (_scalingFactorWidth == null) {
      final screenWidth = MediaQuery.of(context).size.width;
      _scalingFactorWidth = screenWidth / baseWidth;
    }
    return _scalingFactorWidth!;
  }

  // Private method to get the height scaling factor
  static double _getScalingFactorHeight(BuildContext context) {
    if (_scalingFactorHeight == null) {
      final screenHeight = MediaQuery.of(context).size.height;
      _scalingFactorHeight = screenHeight / baseHeight;
    }
    return _scalingFactorHeight!;
  }

  /// Returns the scaled width based on the screen size.
  static double getScaledWidth(BuildContext context, double size) {
    return size * _getScalingFactorWidth(context);
  }

  /// Returns the scaled height based on the screen size.
  static double getScaledHeight(BuildContext context, double size) {
    return size * _getScalingFactorHeight(context);
  }
}
