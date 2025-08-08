import 'package:StickerWA/data/local/auth_repository.dart';
import 'package:flutter/widgets.dart';

class AuthProvider extends ChangeNotifier {
  final AuthRepository authRepository;

  AuthProvider(this.authRepository);

  bool _isLogin = false;
  bool get isLogin => _isLogin;

  Future<bool> login() async {
    try {
      await authRepository.login();
      _isLogin = await authRepository.checkIsLogin();
      notifyListeners();
    } catch (e) {
      print(e.toString());
    }

    return isLogin;
  }

  Future<bool> logout() async {
    try {
      await authRepository.logout();
      _isLogin = await authRepository.checkIsLogin();
      notifyListeners();
    } catch (e) {
      print(e.toString());
    }

    return !isLogin;
  }
}
