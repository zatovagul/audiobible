import 'package:shared_preferences/shared_preferences.dart';

class StorageUtil{
  static StorageUtil? _storageUtil;
  static SharedPreferences? _sharedPreferences;

  static Future<StorageUtil> getInstance() async {
    if (_storageUtil == null) {
      var secureStorage = StorageUtil._();
      await secureStorage._init();
      _storageUtil = secureStorage;
    }
    return _storageUtil!;
  }

  StorageUtil._();

  Future _init()async{
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  static int? getReader(){
    return _sharedPreferences!.getInt("reader");
  }

  static Future<void> setReader(int s)async{
    _sharedPreferences!.setInt("reader", s);
  }

  static int? getChapter(){
    return _sharedPreferences!.getInt("chapter");
  }

  static Future<void> setChapter(int s)async{
    _sharedPreferences!.setInt("chapter", s);
  }
}