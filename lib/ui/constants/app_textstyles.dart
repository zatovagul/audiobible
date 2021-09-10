import 'package:bloc_skeleton/ui/app_navigation.dart';
import 'package:bloc_skeleton/ui/constants/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTextStyles{
  static TextStyle dark13 = TextStyle(fontSize: w1 * 13, color: AppColors.dark, fontWeight: FontWeight.w400);
  static TextStyle dark18w700 = TextStyle(fontSize: w1 * 18, color: AppColors.dark, fontWeight: FontWeight.w700);

  static TextStyle white18w700 = TextStyle(fontSize: w1 * 18, color: Colors.white, fontWeight: FontWeight.w700);
  static TextStyle white24w700 = TextStyle(fontSize: w1 * 24, color: Colors.white, fontWeight: FontWeight.w700);
  static TextStyle white57w700 = TextStyle(fontSize: w1 * 57, color: Colors.white, fontWeight: FontWeight.w700);

  static double get w1=>AppNavigation.size.w1;
}