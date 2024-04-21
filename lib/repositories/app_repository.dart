import 'package:riverpod_tour/models/exercise.dart';
import 'package:riverpod_tour/models/meal.dart';
import 'package:riverpod_tour/models/user.dart';
import 'package:riverpod_tour/models/workout.dart';
import 'package:riverpod_tour/repositories/iapp_repository.dart';
import 'package:riverpod_tour/services/network_service.dart';

class AppRepository implements IAppRepository {
  final RestClient _client;
  AppRepository({required RestClient client}) : _client = client;

  @override
  Future<Workout> createWorkout(String name) async {
    try {
      final response = await _client.createWorkout({'title': name});
      return response;
    } catch (exception) {
      throw Exception(exception);
    }
  }

  @override
  Future<User> register(String name, String email, String password) async {
    try {
      final response = await _client
          .register({'name': name, 'email': email, 'password': password});
      return response;
    } catch (exception) {
      throw Exception(exception);
    }
  }

  @override
  Future<Exercises> getExerciseByWorkout(String id) async {
    try {
      final queries = {"fields": '["\$all"]', "where": '{"workout_id": "$id"}'};
      final response = await _client.getExercises(queries);
      return response;
    } catch (exception) {
      throw Exception(exception);
    }
  }

  @override
  Future<Workouts> getWorkouts() async {
    try {
      final queries = {"fields": '["\$all"]'};
      final response = await _client.getWorkouts(queries);
      return response;
    } catch (exception) {
      throw Exception(exception);
    }
  }

  @override
  Future<Exercise> createExercise(String title, int prelude, String link,
      int duration, String workoutId) async {
    try {
      final response = await _client.createExercise({
        "title": title,
        "workout_id": workoutId,
        "prelude": prelude,
        "duration": duration,
        "link": link
      });
      return response;
    } catch (exception) {
      throw Exception(exception);
    }
  }

  @override
  Future<bool> deleteWorkout(String id) async {
    try {
      final response = await _client.deleteWorkout(id);
      return response["id"] != null;
    } catch (exception) {
      throw Exception(exception);
    }
  }

  @override
  Future<Meals> getMeal() async {
    try {
      final queries = {"fields": '["\$all"]'};
      final response = await _client.getMeal(queries);
      return response;
    } catch (exception) {
      throw Exception(exception);
    }
  }

  @override
  Future<Meals> getMealBreakfast() async {
    try {
      final queries = {
        "fields": '["\$all"]',
        "where": '{"type_meal" : "Breakfast"}'
      };
      final response = await _client.getMeal(queries);
      return response;
    } catch (exception) {
      throw Exception(exception);
    }
  }

  @override
  Future<Meals> getMealBreakLunch() async {
    try {
      final queries = {
        "fields": '["\$all"]',
        "where": '{"type_meal" : "Lunch"}'
      };
      final response = await _client.getMeal(queries);
      return response;
    } catch (exception) {
      throw Exception(exception);
    }
  }

  @override
  Future<dynamic> addMeal(String type_meal, String id) async {
    try {
      final response = await _client.addMeal({'type_meal': type_meal}, id);
      return response;
    } catch (exception) {
      throw Exception(exception);
    }
  }
}
