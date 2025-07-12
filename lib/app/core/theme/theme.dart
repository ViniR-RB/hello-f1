import 'package:flutter/material.dart';
import 'package:hello_f1/app/core/theme/app_colors.dart';
import 'package:hello_f1/app/core/theme/app_text.dart';

extension ThemeDataColorsExtension on ThemeData {
  AppColors get colors => extension<AppColors>()!;
}

extension ThemeDataTextsExtension on ThemeData {
  AppTextStyles get textStyles => extension<AppTextStyles>()!;
}