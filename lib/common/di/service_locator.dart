import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> initServiceLocator()async{


  /// returns a Future that completes if all asynchronously created Singletons and any Singleton that had
  ///  [signalsReady==true] are ready.
  sl.allReady();
}