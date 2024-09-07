import 'package:flutter/material.dart';
import 'package:invoices/repository/auth/auth_repository.dart';

class AuthViewModel extends ChangeNotifier {
  final AuthRepository authRepository = AuthRepository();

  bool loginLoading = false;
  serLoginLoading(bool loading) {
    loginLoading = loading;
    notifyListeners();
  }

  bool forgotLoding = false;
  setForgotLoading(bool loading) {
    forgotLoding = loading;
    notifyListeners();
  }

  Future loginpostApi(dynamic body) async {
    serLoginLoading(true);
    await authRepository.loginpostApi(body).then((value) {
      serLoginLoading(false);
    }).onError((error, _) {
      serLoginLoading(false);
    });
  }

  Future forgotPasswordPostApi(dynamic body) async {
    setForgotLoading(true);
    await authRepository.forgotPasswordPostApi(body).then((value) {
      setForgotLoading(false);
    }).onError((error, _) {
      setForgotLoading(false);
    });
  }
}
