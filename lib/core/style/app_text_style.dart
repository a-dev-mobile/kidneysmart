import 'package:flutter/material.dart';

abstract class AppTextStyles {
  static const FontWeight thin = FontWeight.w100;
  static const FontWeight extraLight = FontWeight.w200;
  static const FontWeight light = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;
  static const FontWeight extraBold = FontWeight.w800;
  static const FontWeight black = FontWeight.w900;

  static TextStyle headlineLarge({Color? color}) => TextStyle(
        color: color,
        fontSize: 32,
        fontWeight: regular,
        letterSpacing: 0,
      );

  static TextStyle headlineMedium({Color? color}) => TextStyle(
        color: color,
        fontSize: 28,
        fontWeight: regular,
        letterSpacing: 0,
      );

  static TextStyle headlineSmall({Color? color}) => TextStyle(
        color: color,
        fontSize: 24,
        fontWeight: regular,
        letterSpacing: 0,
      );

  static TextStyle bodyLarge({Color? color}) => TextStyle(
        color: color,
        fontSize: 16,
        fontWeight: regular,
        letterSpacing: 0.5,
      );

  static TextStyle bodyMedium({Color? color}) => TextStyle(
        color: color,
        fontSize: 14,
        fontWeight: regular,
        letterSpacing: 0.25,
      );

  static TextStyle labelLarge({Color? color}) => TextStyle(
        color: color,
        fontSize: 14,
        fontWeight: medium,
        letterSpacing: 0.1,
      );
}
