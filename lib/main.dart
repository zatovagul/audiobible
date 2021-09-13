import 'package:bloc_skeleton/common/di/service_locator.dart';
import 'package:bloc_skeleton/data/service/database/app_database.dart';
import 'package:bloc_skeleton/ui/app_navigation.dart';
import 'package:bloc_skeleton/ui/constants/app_sizes.dart';
import 'package:bloc_skeleton/ui/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'data/util/storage_util.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await initServiceLocator();
  await StorageUtil.getInstance();
  final db = AppDatabase();
  runApp(MyApp(db: db));
}

class MyApp extends StatelessWidget {

  static final _navigatorGlobalKey = GlobalKey<NavigatorState>();

  const MyApp({Key? key,required this.db}) : super(key: key);
  static NavigatorState get navigatorState {
    if (_navigatorGlobalKey.currentState == null) {
      throw 'can\'t provide NavigatorState as it isn\'t created yet or already disposed';
    }
    return _navigatorGlobalKey.currentState!;
  }

  final AppDatabase db;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MultiProvider(
      providers: [
        Provider(create: (_) => db),
        Provider(create: (_) => db.bookDao),
        Provider(create: (_) => db.chapterDao),
        Provider(create: (_) => db.readerDao),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        navigatorKey: _navigatorGlobalKey,
        initialRoute: AppNavigation.initialRoute,
        onGenerateRoute: AppNavigation.onGenerateRoute,
      ),
    );
  }
}
