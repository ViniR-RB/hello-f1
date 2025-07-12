import 'package:flutter/material.dart';

class AppColors extends ThemeExtension<AppColors> {
  final Color primary;
  final Color colorText;
  final Color colorTextSecondary;
  final Color cardColor;
  final Color bottomBarColor;
  final Color bottomBarActive;
  final Color iconOutline;
  final Color iconActive;

  const AppColors({
    required this.primary,
    required this.colorText,
    required this.colorTextSecondary,
    required this.cardColor,
    required this.bottomBarColor,
    required this.bottomBarActive,
    required this.iconOutline,
    required this.iconActive,
  });

  factory AppColors.blue() {
    const primary = Color(0xFF1769C9);
    return AppColors(
      primary: primary,
      colorText: const Color(0xFF0D141C),
      colorTextSecondary: const Color(0xFF4F7096),
      cardColor: const Color(0xFFE8EDF2),
      bottomBarColor: const Color(0xFF4F7096),
      bottomBarActive: primary,
      iconOutline: const Color(0xFF0D141C),
      iconActive: Color(0xFF0D141C),
    );
  }

  @override
  AppColors copyWith({
    Color? primary,
    Color? colorText,
    Color? colorTextSecondary,
    Color? cardColor,
    Color? bottomBarColor,
    Color? bottomBarActive,
    Color? iconOutline,
    Color? iconActive,
  }) {
    return AppColors(
      primary: primary ?? this.primary,
      colorText: colorText ?? this.colorText,
      colorTextSecondary: colorTextSecondary ?? this.colorTextSecondary,
      cardColor: cardColor ?? this.cardColor,
      bottomBarColor: bottomBarColor ?? this.bottomBarColor,
      bottomBarActive: bottomBarActive ?? this.bottomBarActive,
      iconOutline: iconOutline ?? this.iconOutline,
      iconActive: iconActive ?? this.iconActive,
    );
  }

  @override
  ThemeExtension<AppColors> lerp(
    covariant ThemeExtension<AppColors>? other,
    double t,
  ) {
    if (other is! AppColors) {
      return this;
    }
    return AppColors(
      primary: Color.lerp(primary, other.primary, t)!,
      colorText: Color.lerp(colorText, other.colorText, t)!,
      colorTextSecondary: Color.lerp(
        colorTextSecondary,
        other.colorTextSecondary,
        t,
      )!,
      cardColor: Color.lerp(cardColor, other.cardColor, t)!,
      bottomBarColor: Color.lerp(bottomBarColor, other.bottomBarColor, t)!,
      bottomBarActive: Color.lerp(bottomBarActive, other.bottomBarActive, t)!,
      iconOutline: Color.lerp(iconOutline, other.iconOutline, t)!,
      iconActive: Color.lerp(iconActive, other.iconActive, t)!,
    );
  }
}
