// import "package:flutter/material.dart";
// import "package:shared_preferences/shared_preferences.dart";

// class UserViewModel with ChangeNotifier {
//   Future<bool> saveUser(userModel user) async {
//     final SharedPreferences dp = await SharedPreferences.getInstance();
//     dp.setString("token", user.token.toString());
//     notifyListeners();

//     return true;
//   }

//   Future<userModel> getUser() async {
//     final SharedPreferences dp = await SharedPreferences.getInstance();
//     final String? token = dp.getString("token");
//     return userModel(token: token.toString());
//   }

//   Future<bool> reomve() async {
//     final SharedPreferences dp = await SharedPreferences.getInstance();
//     dp.remove("token");
//     return true;
//   }
// }