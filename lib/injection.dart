import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:riverpod_tour/repositories/app_repository.dart';
import 'package:riverpod_tour/repositories/iapp_repository.dart';
import 'package:riverpod_tour/services/network_service.dart';

GetIt getIt = GetIt.instance;

class Injection {
  static Future<void> inject() async {
    getIt.registerSingleton(RestClient(Dio()));

    getIt.registerLazySingleton<IAppRepository>(
        () => AppRepository(client: getIt()));
  }
}
