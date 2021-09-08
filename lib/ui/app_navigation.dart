import 'package:bloc_skeleton/main.dart';
import 'package:bloc_skeleton/ui/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class _RouteNames{
  static const String home = 'home';
}

class AppNavigation{

  static String get initialRoute => _RouteNames.home;
  static NavigatorState get _navigatorState => MyApp.navigatorState;

  ///
  /// Root Navigator
  ///
  static void pop([result]) => _navigatorState.pop(result);
  static void toHome() => _navigatorState.pushNamedAndRemoveUntil(_RouteNames.home, (_) => false);

  static Route<dynamic> onGenerateRoute(RouteSettings settings){
    switch(settings.name){
      case _RouteNames.home:
        return MaterialPageRoute(builder: (context)=>HomeScreen(), settings: settings);
      default:
        throw "Not found route";
    }
  }
}