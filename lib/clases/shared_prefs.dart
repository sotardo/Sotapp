import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  SharedPrefs._();
  static final SharedPrefs _instance = SharedPrefs._();
  factory SharedPrefs() => _instance;

  SharedPreferences _prefs;

  initPrefs() async {
    _prefs = await SharedPreferences.getInstance();
  }

  String get userDocID => _prefs.getString('userDocID') ?? '';

  set userDocID(String newUserDocID) => _prefs.setString('userDocID', newUserDocID);
}
