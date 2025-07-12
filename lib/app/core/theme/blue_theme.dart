import 'package:flutter/material.dart';
import 'package:hello_f1/app/core/theme/app_colors.dart';
import 'package:hello_f1/app/core/theme/app_text.dart';

ThemeData get blueTheme {
  final colors = AppColors.blue();
  const textStyles = AppTextStyles();
  return ThemeData(
    colorSchemeSeed: colors.primary,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: colors.bottomBarBackground,
      selectedIconTheme: IconThemeData(color: colors.bottomBarActive),
      unselectedIconTheme: IconThemeData(color: colors.bottomBarColor),
    ),
    bottomAppBarTheme: BottomAppBarTheme(color: colors.bottomBarBackground),
    extensions: [colors, textStyles],
    textTheme: TextTheme(
      headlineLarge: textStyles.headlineLarge.copyWith(color: colors.colorText),
      headlineSmall: textStyles.headlineSmall.copyWith(color: colors.colorText),
      bodyMedium: textStyles.bodyMedium.copyWith(
        color: colors.colorTextSecondary,
      ),
      bodySmall: textStyles.bodySmall.copyWith(color: colors.colorText),
      labelLarge: textStyles.labelLarge.copyWith(
        color: colors.colorTextSecondary,
      ),
      labelMedium: textStyles.labelMedium.copyWith(
        color: colors.colorTextSecondary,
      ),
      labelSmall: textStyles.labelSmall.copyWith(
        color: colors.colorTextSecondary,
      ),
      displayLarge: textStyles.displayLarge.copyWith(
        color: colors.colorTextSecondary,
      ),
    ),
  );
}
