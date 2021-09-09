import 'package:bloc_skeleton/ui/app_navigation.dart';
import 'package:flutter/material.dart';

class BooksMainScreen extends StatelessWidget {
  static final _navigatorGlobalKey = GlobalKey<NavigatorState>();
  static NavigatorState get navigatorState {
    if (_navigatorGlobalKey.currentState == null) {
      throw 'can\'t provide NavigatorState as it isn\'t created yet or already disposed';
    }
    return _navigatorGlobalKey.currentState!;
  }
  const BooksMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: _navigatorGlobalKey,
      initialRoute: AppNavigation.booksInitialRoute,
      onGenerateRoute: AppNavigation.onGenerateRoute,
    );
  }
}
