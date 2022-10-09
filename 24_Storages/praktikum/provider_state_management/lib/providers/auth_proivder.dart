import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/user.dart';

class AuhtProvider with ChangeNotifier {
  var _isLoading = false;
  var _isLogin = false;

  bool get loading => _isLoading;
  bool get isLogin => _isLogin;

  Future register({required User user}) async {
    final prefs = await SharedPreferences.getInstance();

    if (user.name.isNotEmpty &&
        user.phoneNumber.isNotEmpty &&
        user.email.isNotEmpty &&
        user.password.isNotEmpty) {
      _isLoading = true;
      await prefs.setString("name", user.name);
      await prefs.setString("phoneNumber", user.phoneNumber);
      await prefs.setString("email", user.email);
      await prefs.setString("password", user.password);

      Future.delayed(const Duration(seconds: 2));
      _isLoading = false;
      _isLogin = true;
    } else {
      _isLoading = true;
      Future.delayed(
        const Duration(seconds: 2),
      );
      _isLoading = false;
      _isLogin = false;
    }
    notifyListeners();
  }

  Future logOut() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.clear();

    notifyListeners();
  }
}
