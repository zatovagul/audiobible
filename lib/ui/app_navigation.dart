import 'package:bloc_skeleton/main.dart';
import 'package:bloc_skeleton/ui/constants/app_sizes.dart';
import 'package:bloc_skeleton/ui/screens/books/books_main_screen.dart';
import 'package:bloc_skeleton/ui/screens/books/books_screen.dart';
import 'package:bloc_skeleton/ui/screens/books/chapters_screen.dart';
import 'package:bloc_skeleton/ui/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class _RouteNames{
  static const String home = 'home';
  static const String books = 'books';
  static const String chapters = 'books/chapters';
}

class AppNavigation{
  static AppSizes get size => AppSizes(_navigatorState.context);
  static String get initialRoute => _RouteNames.home;
  static String get booksInitialRoute => _RouteNames.books;
  static NavigatorState get _navigatorState => MyApp.navigatorState;
  static NavigatorState get _booksNavigatorState => BooksMainScreen.navigatorState;

  static BuildContext get context => _navigatorState.context;

  ///
  /// Root Navigator
  ///
  static void pop([result]) => _navigatorState.pop(result);
  static void booksPop([result]) {
    if(_booksNavigatorState.canPop())
      return _booksNavigatorState.pop(result);
  }
  static void toHome() => _navigatorState.pushNamedAndRemoveUntil(_RouteNames.home, (_) => false);
  static void toChapters(ChaptersArgs args) => _booksNavigatorState.pushNamed(_RouteNames.chapters, arguments: args);

  static Route<dynamic> onGenerateRoute(RouteSettings settings){
    switch(settings.name){
      case _RouteNames.home:
        return MaterialPageRoute(builder: (context)=>HomeScreen(), settings: settings);
      case _RouteNames.books:
        return MaterialPageRoute(builder: (context)=>BooksScreen(), settings: settings);
      case _RouteNames.chapters:
        return MaterialPageRoute(builder: (context)=>ChaptersScreen(), settings: settings);
      default:
        throw "Not found route";
    }
  }
}