import 'package:bloc_skeleton/ui/app_navigation.dart';
import 'package:flutter/cupertino.dart';

final size = AppNavigation.size;
class AppSizes{
  late double w1, h1, width, height;
  late EdgeInsets padding;
  AppSizes(BuildContext context){
    padding = MediaQuery.of(context).padding;
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    w1 = width * 1/375;
    h1 = height * 1/812;
  }
}