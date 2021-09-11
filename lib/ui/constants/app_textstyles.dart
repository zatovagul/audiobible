import 'package:bloc_skeleton/ui/app_navigation.dart';
import 'package:bloc_skeleton/ui/constants/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTextStyles{
  ///SF pro
  static TextStyle dark13 = TextStyle(fontSize: w1 * 13, color: AppColors.dark, fontWeight: FontWeight.w400, fontFamily: sfPro);
  static TextStyle dark13w500 = TextStyle(fontSize: w1 * 13, color: AppColors.dark, fontWeight: FontWeight.w500, fontFamily: sfPro);
  static TextStyle dark18 = TextStyle(fontSize: w1 * 18, color: AppColors.lightDark, fontWeight: FontWeight.w400, fontFamily: sfPro);

  ///Philosopher
  static TextStyle dark16w700 = TextStyle(fontSize: w1 * 16, color: AppColors.dark, fontWeight: FontWeight.w700, fontFamily: philosopher);
  static TextStyle dark18P = TextStyle(fontSize: w1 * 18, color: AppColors.dark, fontWeight: FontWeight.w400, fontFamily: philosopher);
  static TextStyle dark18w700 = TextStyle(fontSize: w1 * 18, color: AppColors.dark, fontWeight: FontWeight.w700, fontFamily: philosopher);
  static TextStyle dark20w700 = TextStyle(fontSize: w1 * 20, color: AppColors.dark, fontWeight: FontWeight.w700, fontFamily: philosopher);
  static TextStyle dark24w700 = TextStyle(fontSize: w1 * 24, color: AppColors.dark, fontWeight: FontWeight.w700, fontFamily: philosopher);
  static TextStyle dark28w700 = TextStyle(fontSize: w1 * 28, color: AppColors.dark, fontWeight: FontWeight.w700, fontFamily: philosopher);
  static TextStyle dark32w700 = TextStyle(fontSize: w1 * 32, color: AppColors.dark, fontWeight: FontWeight.w700, fontFamily: philosopher);

  static TextStyle white18w700 = TextStyle(fontSize: w1 * 18, color: Colors.white, fontWeight: FontWeight.w700, fontFamily: philosopher);
  static TextStyle white24w700 = TextStyle(fontSize: w1 * 24, color: Colors.white, fontWeight: FontWeight.w700, fontFamily: philosopher);
  static TextStyle white57w700 = TextStyle(fontSize: w1 * 57, color: Colors.white, fontWeight: FontWeight.w700, fontFamily: philosopher);

  static String sfPro = "SF Pro", philosopher = "Philosopher";

  static double get w1=>AppNavigation.size.w1;
}