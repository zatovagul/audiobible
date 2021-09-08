import 'package:bloc_skeleton/common/di/service_locator.dart';
import 'package:bloc_skeleton/ui/app_navigation.dart';
import 'package:bloc_skeleton/ui/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

void main()async{
  await initServiceLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  static final _navigatorGlobalKey = GlobalKey<NavigatorState>();
  static NavigatorState get navigatorState {
    if (_navigatorGlobalKey.currentState == null) {
      throw 'can\'t provide NavigatorState as it isn\'t created yet or already disposed';
    }
    return _navigatorGlobalKey.currentState!;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorKey: _navigatorGlobalKey,
      initialRoute: AppNavigation.initialRoute,
      onGenerateRoute: AppNavigation.onGenerateRoute,
    );
  }
}
