import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_tour/injection.dart';
import 'package:riverpod_tour/presentations/login/login_model.dart';
import 'package:riverpod_tour/repositories/iapp_repository.dart';

part 'login_viewmodel.g.dart';

@riverpod
class LoginViewModel extends _$LoginViewModel {
  final IAppRepository _userRepository = getIt<IAppRepository>();

  @override
  LoginModel build() {
    return LoginModel();
  }

  void login() {
    state = LoginModel(isSignIn: true);
  }

  Future<void> onLogin(String email, String password) async {
    final data = await _userRepository.login(email, password);

    state = LoginModel(
        email: email,
        password: password,
        isSignIn: true,
        id: 'a3dfb770-0194-11ef-8715-d9b96b675793');
  }
}
