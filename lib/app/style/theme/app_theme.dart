// ignore_for_file: no-equal-arguments

import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:kidneysmart/app/style/color/app_color.dart';

/// base class for the theme
//  https://rydmike.com/flexcolorscheme/themesplayground-v7/#/
abstract class AppThemeFlex {
  /// *---* [Light Theme] *---*
  static ThemeData lightThemeData(BuildContext context) {
    return FlexThemeData.light(
      colors: const FlexSchemeColor(
        primary: Color(0xff00856e),
        secondary: Color(0xff00856e),
        error: AppColors.red,
      ),
      usedColors: 1,

      // appBarStyle: FlexAppBarStyle.custom,
      bottomAppBarElevation: 0,
      tabBarStyle: FlexTabBarStyle.forAppBar,
      lightIsWhite: true,
      surfaceTint: const Color(0xffffffff),

      subThemesData: const FlexSubThemesData(
        unselectedToggleIsColored: true,
        blendOnLevel: 10,
        blendOnColors: false,
        useM2StyleDividerInM3: true,
        elevatedButtonSchemeColor: SchemeColor.onPrimary,
        elevatedButtonSecondarySchemeColor: SchemeColor.primary,
        outlinedButtonOutlineSchemeColor: SchemeColor.primary,
        inputDecoratorIsFilled: false,
        inputDecoratorRadius: 10,
        dialogElevation: 0,
        bottomSheetElevation: 0,
        bottomSheetModalElevation: 0,
        fabSchemeColor: SchemeColor.primary,
        menuItemBackgroundSchemeColor: SchemeColor.onPrimary,
      ),
      visualDensity: FlexColorScheme.comfortablePlatformDensity,
      useMaterial3: true,
      swapLegacyOnMaterial3: true,
      fontFamily: 'Inter',
    );
  }

  /// darkThemeData
  static ThemeData darkThemeData(BuildContext context) {
    return FlexThemeData.dark(
      colors: const FlexSchemeColor(
        primary: Color(0xff00856e),
        primaryContainer: Color(0xff273f33),
        secondary: Color(0xffffffff),
        secondaryContainer: Color(0xff4d6b5c),
        tertiary: AppColors.greyGreyLightText,
        tertiaryContainer: Color(0xff356c50),
        appBarColor: Color(0xff4d6b5c),
        error: Color(0xffcf6679),
      ),
      surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
      blendLevel: 15,
      tabBarStyle: FlexTabBarStyle.forBackground,
      subThemesData: const FlexSubThemesData(
        blendOnLevel: 30,
        defaultRadius: 10,
        elevatedButtonRadius: 40,
        outlinedButtonRadius: 40,
        toggleButtonsRadius: 25,
        inputDecoratorIsFilled: false,
        fabSchemeColor: SchemeColor.primary,
        bottomNavigationBarUnselectedLabelSchemeColor: SchemeColor.tertiary,
        bottomNavigationBarUnselectedIconSchemeColor: SchemeColor.tertiary,
        navigationBarUnselectedLabelSchemeColor: SchemeColor.tertiary,
        navigationBarUnselectedIconSchemeColor: SchemeColor.tertiary,
        navigationRailUnselectedLabelSchemeColor: SchemeColor.tertiary,
        navigationRailUnselectedIconSchemeColor: SchemeColor.tertiary,
      ),
      visualDensity: FlexColorScheme.comfortablePlatformDensity,
      // To use the playground font, add GoogleFonts package and uncomment
    );
  }
}
