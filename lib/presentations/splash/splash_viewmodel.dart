import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'splash_viewmodel.g.dart';

@riverpod
class SplashViewModel extends _$SplashViewModel {
  @override
  Future<int> build() async {
    await Future.delayed(const Duration(seconds: 2));
    return 0;
  }
}
