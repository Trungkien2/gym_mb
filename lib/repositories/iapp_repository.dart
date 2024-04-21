import 'package:riverpod_tour/models/exercise.dart';
import 'package:riverpod_tour/models/meal.dart';
import 'package:riverpod_tour/models/user.dart';
import 'package:riverpod_tour/models/workout.dart';

abstract class IAppRepository {
  Future<Workout> createWorkout(String name);
  Future<User> register(String name, String email, String password);
  Future<Exercises> getExerciseByWorkout(String id);
  Future<Workouts> getWorkouts();
  Future<Exercise> createExercise(
      String title, int prelude, String link, int duration, String workoutId);

  Future<bool> deleteWorkout(String id);

  Future<dynamic> addMeal(String type_meal, String id);

  Future<Meals> getMeal();
  Future<Meals> getMealBreakfast();
  Future<Meals> getMealBreakLunch();
}
