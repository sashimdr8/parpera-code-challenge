import 'package:shared_preferences/shared_preferences.dart';
import 'package:spacex_app/data/local/preference_keys.dart';

class AppPreferences {
  static SharedPreferences _sharedPrefs;

  init() async {
    if (_sharedPrefs == null) {
      _sharedPrefs = await SharedPreferences.getInstance();
    }
  }

  String get accessToken =>
      _sharedPrefs.getString(PreferencesKeys.accessToken) ?? "";

  set accessToken(String value) {
    _sharedPrefs.setString(PreferencesKeys.accessToken, value);
  }

  void clear() {
    _sharedPrefs.clear();
  }
}

final appPreferences = AppPreferences();