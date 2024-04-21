import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_tour/injection.dart';
import 'package:riverpod_tour/presentations/register/register_model.dart';
import 'package:riverpod_tour/repositories/iapp_repository.dart';

part 'register_viewmodel.g.dart';

@riverpod
class RegisterViewModel extends _$RegisterViewModel {
  final IAppRepository _userRepository = getIt<IAppRepository>();

  @override
  RegisterModel build() {
    return RegisterModel();
  }

  Future<void> onRegister(String name, String email, String password) async {
    final data = await _userRepository.register(name, email, password);
  }
}
