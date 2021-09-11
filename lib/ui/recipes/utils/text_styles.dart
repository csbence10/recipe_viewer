import 'package:flutter/material.dart';
import 'package:recipe_viewer/ui/recipes/utils/app_colors.dart';

class TextStyles {
  static const appBar = TextStyle(
      fontSize: 16, color: AppColors.black, fontWeight: FontWeight.w700);
  static const header = TextStyle(
      fontSize: 20, color: AppColors.white, fontWeight: FontWeight.w700);
  static const title = TextStyle(
      fontSize: 16, color: AppColors.white, fontWeight: FontWeight.w500);
  static const subtitle = TextStyle(fontSize: 16, fontWeight: FontWeight.w700);
  static const body = TextStyle(fontSize: 12, fontWeight: FontWeight.w500);
}
