import 'package:flutter/material.dart';
import 'package:provider_state_management/models/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserProvider extends ChangeNotifier {
  Future<User> getDataUser() async {
    final prefs = await SharedPreferences.getInstance();

    var email = prefs.getString("email")!;
    var password = prefs.getString("password")!;
    var phoneNumber = prefs.getString("phoneNumber")!;
    var name = prefs.getString("name")!;
    notifyListeners();

    return User(
        name: name, phoneNumber: phoneNumber, email: email, password: password);
  }
}
