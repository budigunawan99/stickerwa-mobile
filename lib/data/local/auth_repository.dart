import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

class AuthRepository {
  final SharedPreferences _preferences;

  AuthRepository(this._preferences);

  static const String isLoginKey = 'IS_LOGIN_KEY';

  Future<bool> checkIsLogin() async {
    return _preferences.getBool(isLoginKey) ?? false;
  }

  Future<bool> login() async {
    try {
      return _preferences.setBool(isLoginKey, true);
    } catch (e) {
      if (e is TimeoutException) {
        throw Exception('Time is up. Try again later.');
      } else if (e is FormatException) {
        throw Exception('Failed loading data. Try again later.');
      } else {
        throw Exception("oops! Something wrong. Try again later.");
      }
    }
  }

  Future<bool> logout() async {
    try {
      return _preferences.setBool(isLoginKey, false);
    } catch (e) {
      if (e is TimeoutException) {
        throw Exception('Time is up. Try again later.');
      } else if (e is FormatException) {
        throw Exception('Failed loading data. Try again later.');
      } else {
        throw Exception("oops! Something wrong. Try again later.");
      }
    }
  }
}
