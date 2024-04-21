import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_tour/presentations/login/login_model.dart';

part 'login_viewmodel.g.dart';

@riverpod
class LoginViewModel extends _$LoginViewModel {
  @override
  LoginModel build() {
    return LoginModel();
  }

  void login() {
    state = LoginModel(isSignIn: true);
  }
}
