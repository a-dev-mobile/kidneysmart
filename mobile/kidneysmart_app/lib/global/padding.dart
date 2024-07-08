import 'package:flutter/material.dart';

class AppPaddingConst {
  static const EdgeInsetsGeometry kDefaultPadding = EdgeInsets.all(16);
  static const EdgeInsetsGeometry kSmallPadding = EdgeInsets.all(8);
  static const EdgeInsetsGeometry kMediumPadding = EdgeInsets.all(24);
  static const EdgeInsetsGeometry kLargePadding = EdgeInsets.all(32);
  static const EdgeInsetsGeometry kHorizontalPadding =
      EdgeInsets.symmetric(horizontal: 16);
  static const EdgeInsetsGeometry kVerticalPadding =
      EdgeInsets.symmetric(vertical: 16);

  /// Additional padding constants for more precise padding configurations
  static const EdgeInsetsGeometry kTinyPadding = EdgeInsets.all(4);
  static const EdgeInsetsGeometry kExtraSmallPadding = EdgeInsets.all(2);
  static const EdgeInsetsGeometry kExtraLargePadding = EdgeInsets.all(48);

  /// Padding constants with custom values
  static EdgeInsetsGeometry customPadding({
    double left = 0,
    double right = 0,
    double top = 0,
    double bottom = 0,
  }) {
    return EdgeInsets.fromLTRB(left, top, right, bottom);
  }

  /// Returns padding for a given ratio of the screen width
  static EdgeInsetsGeometry screenRatioPadding(
    BuildContext context,
    double ratio,
  ) {
    final screenWidth = MediaQuery.of(context).size.width;
    final paddingValue = screenWidth * ratio;

    return EdgeInsets.all(paddingValue);
  }

  /// Returns padding for a given ratio of the screen height
  static EdgeInsetsGeometry screenHeightRatioPadding(
    BuildContext context,
    double ratio,
  ) {
    final screenHeight = MediaQuery.of(context).size.height;
    final paddingValue = screenHeight * ratio;

    return EdgeInsets.all(paddingValue);
  }

  /// Returns padding for a given ratio of the shortest side of the screen
  static EdgeInsetsGeometry shortestSideRatioPadding(
    BuildContext context,
    double ratio,
  ) {
    final shortestSide = MediaQuery.of(context).size.shortestSide;
    final paddingValue = shortestSide * ratio;

    return EdgeInsets.all(paddingValue);
  }

  /// Returns horizontal padding for a given ratio of the screen width
  static EdgeInsetsGeometry horizontalRatioPadding(
    BuildContext context,
    double ratio,
  ) {
    final screenWidth = MediaQuery.of(context).size.width;
    final paddingValue = screenWidth * ratio;

    return EdgeInsets.symmetric(horizontal: paddingValue);
  }

  /// Returns vertical padding for a given ratio of the screen height
  static EdgeInsetsGeometry verticalRatioPadding(
    BuildContext context,
    double ratio,
  ) {
    final screenHeight = MediaQuery.of(context).size.height;
    final paddingValue = screenHeight * ratio;

    return EdgeInsets.symmetric(vertical: paddingValue);
  }

  /// Returns padding with only left margin
  static EdgeInsetsGeometry leftMarginPadding(double value) {
    return EdgeInsets.only(left: value);
  }

  /// Returns padding with only right margin
  static EdgeInsetsGeometry rightMarginPadding(double value) {
    return EdgeInsets.only(right: value);
  }

  /// Returns padding with only top margin
  static EdgeInsetsGeometry topMarginPadding(double value) {
    return EdgeInsets.only(top: value);
  }

  /// Returns padding with only bottom margin
  static EdgeInsetsGeometry bottomMarginPadding(double value) {
    return EdgeInsets.only(bottom: value);
  }

  /// Returns padding with only vertical margins set to the same value
  static EdgeInsetsGeometry verticalMarginPadding(double value) {
    return EdgeInsets.symmetric(vertical: value);
  }

  /// Returns padding with different values for each margin
  static EdgeInsetsGeometry marginPadding({
    double left = 0,
    double right = 0,
    double top = 0,
    double bottom = 0,
  }) {
    return EdgeInsets.fromLTRB(left, top, right, bottom);
  }

  /// Returns padding with all margins set to the same value
  static EdgeInsetsGeometry uniformMarginPadding(double value) {
    return EdgeInsets.all(value);
  }

  /// Returns padding with only horizontal margins set to the same value
  static EdgeInsetsGeometry horizontalMarginPadding(double value) {
    return EdgeInsets.symmetric(horizontal: value);
  }

  /// Returns padding with different values for each margin based on a ratio of screen width
  static EdgeInsetsGeometry screenRatioMarginPadding(
    BuildContext context, {
    double leftRatio = 0,
    double rightRatio = 0,
    double topRatio = 0,
    double bottomRatio = 0,
  }) {
    final screenWidth = MediaQuery.of(context).size.width;
    final leftPaddingValue = screenWidth * leftRatio;
    final rightPaddingValue = screenWidth * rightRatio;
    final topPaddingValue = screenWidth * topRatio;
    final bottomPaddingValue = screenWidth * bottomRatio;

    return EdgeInsets.fromLTRB(
      leftPaddingValue,
      topPaddingValue,
      rightPaddingValue,
      bottomPaddingValue,
    );
  }

  /// Returns padding with different values for each margin based on a ratio of screen height
  static EdgeInsetsGeometry screenHeightRatioMarginPadding(
    BuildContext context, {
    double leftRatio = 0,
    double rightRatio = 0,
    double topRatio = 0,
    double bottomRatio = 0,
  }) {
    final screenHeight = MediaQuery.of(context).size.height;
    final leftPaddingValue = screenHeight * leftRatio;
    final rightPaddingValue = screenHeight * rightRatio;
    final topPaddingValue = screenHeight * topRatio;
    final bottomPaddingValue = screenHeight * bottomRatio;

    return EdgeInsets.fromLTRB(
      leftPaddingValue,
      topPaddingValue,
      rightPaddingValue,
      bottomPaddingValue,
    );
  }

  /// Returns padding with different values for each margin based on a ratio of the shortest side of the screen
  static EdgeInsetsGeometry shortestSideRatioMarginPadding(
    BuildContext context, {
    double leftRatio = 0,
    double rightRatio = 0,
    double topRatio = 0,
    double bottomRatio = 0,
  }) {
    final shortestSide = MediaQuery.of(context).size.shortestSide;
    final leftPaddingValue = shortestSide * leftRatio;
    final rightPaddingValue = shortestSide * rightRatio;
    final topPaddingValue = shortestSide * topRatio;
    final bottomPaddingValue = shortestSide * bottomRatio;

    return EdgeInsets.fromLTRB(
      leftPaddingValue,
      topPaddingValue,
      rightPaddingValue,
      bottomPaddingValue,
    );
  }

  /// Returns padding with different values for horizontal margins and vertical margins
  static EdgeInsetsGeometry horizontalVerticalMarginPadding({
    double horizontal = 0,
    double vertical = 0,
  }) {
    return EdgeInsets.symmetric(
      horizontal: horizontal,
      vertical: vertical,
    );
  }

  /// Returns padding with different values for each margin based on a ratio of screen width and height
  static EdgeInsetsGeometry screenRatioMarginPaddingBothAxes(
    BuildContext context, {
    double leftRightRatio = 0,
    double topBottomRatio = 0,
  }) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final leftRightPaddingValue = screenWidth * leftRightRatio;
    final topBottomPaddingValue = screenHeight * topBottomRatio;

    return EdgeInsets.fromLTRB(
      leftRightPaddingValue,
      topBottomPaddingValue,
      leftRightPaddingValue,
      topBottomPaddingValue,
    );
  }
}
