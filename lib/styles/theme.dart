import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:material_color_utilities/material_color_utilities.dart';

extension ColorPalette on Color {
  Color tone(int tone) {
    assert(tone >= 0 && tone <= 100);
    final color = Hct.fromInt(value);
    final tonalPalette = TonalPalette.of(color.hue, color.chroma);
    return Color(tonalPalette.get(tone));
  }
}

class AppColors {
  static Color white = const Color(0xFFFFFFFF);
  static Color black = const Color(0xFF000000);
  static Color primary = const Color(0xFF6831D7);
  static Color secondary = const Color(0xFF377BAD);
  static Color tertiary = const Color(0xFF505E7D);
  static Color neutral = const Color(0xFF5C5F5F);
  static Color neutralVariant = const Color(0xFF566061);
  static Color error = const Color(0xFFFC4747);
}

class AppThemes {
  ThemeData light = ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: Colors.white,
      colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: AppColors.primary,
        onPrimary: AppColors.primary.tone(100),
        secondary: AppColors.secondary,
        onSecondary: AppColors.secondary.tone(100),
        secondaryContainer: AppColors.secondary.tone(90),
        onSecondaryContainer: AppColors.secondary.tone(10),
        tertiary: AppColors.tertiary,
        onTertiary: AppColors.tertiary.tone(100),
        tertiaryContainer: AppColors.tertiary.tone(90),
        onTertiaryContainer: AppColors.tertiary.tone(10),
        error: AppColors.error.tone(40),
        onError: AppColors.error.tone(100),
        errorContainer: AppColors.error.tone(90),
        onErrorContainer: AppColors.error.tone(10),
        background: AppColors.neutral.tone(99),
        onBackground: AppColors.neutral.tone(10),
        surface: AppColors.neutral.tone(99),
        onSurface: AppColors.neutral.tone(10),
        surfaceVariant: AppColors.neutralVariant.tone(90),
        onSurfaceVariant: AppColors.neutralVariant.tone(30),
        outline: AppColors.neutralVariant.tone(50),
        outlineVariant: AppColors.neutralVariant.tone(80),
        inverseSurface: AppColors.neutral.tone(90),
        inversePrimary: AppColors.primary.tone(90),
        scrim: AppColors.neutral.tone(0),
        shadow: AppColors.neutral.tone(0),
      ));
}
