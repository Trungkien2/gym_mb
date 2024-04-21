// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_tour/injection.dart';
import 'package:riverpod_tour/models/workout.dart';
import 'package:riverpod_tour/presentations/home/home_model.dart';
import 'package:riverpod_tour/repositories/iapp_repository.dart';

part 'home_viewmodel.g.dart';

@riverpod
class HomeViewModel extends _$HomeViewModel {
  final IAppRepository _userRepository = getIt<IAppRepository>();
  @override
  Future<HomeModel> build(int hashCodeOfContext) async {
    final data = await _userRepository.getWorkouts();
    return HomeModel(workouts: data);
  }

  Future<void> onCreateWorkout(String name) async {
    final data = await _userRepository.createWorkout(name);
    if (state.value == null) return;
    final current = state.value?.workouts?.rows?.toList();
    current?.add(data);

    state = AsyncData(state.value!
        .copyWith(workout: data, workouts: Workouts(rows: current)));
  }

  Future<void> onDeleteWorkout(String id) async {
    final isDelete = await _userRepository.deleteWorkout(id);
    if (isDelete == true) {
      final current = state.value?.workouts?.rows?.toList();
      current?.removeWhere((element) => element.id == id);
      state =
          AsyncData(state.value!.copyWith(workouts: Workouts(rows: current)));
    }
  }

  void onClear() {
    state = AsyncData(HomeModel(workouts: state.value?.workouts));
  }

  Future<void> onCreateExercise(
      String title, int predule, String link, int duration) async {
    final data = await _userRepository.createExercise(
        title, predule, link, duration, state.value!.workout!.id!);
  }
}
