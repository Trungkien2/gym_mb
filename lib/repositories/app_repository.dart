import 'package:riverpod_tour/models/exercise.dart';
import 'package:riverpod_tour/models/meal.dart';
import 'package:riverpod_tour/models/meal_planner.dart';
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
  Future<MealPlanner> createMealPlanner(String name, String user_id) async {
    try {
      final response =
          await _client.createMealPlanner({'name': name, 'user_id': user_id});
      return response;
    } catch (exception) {
      throw Exception(exception);
    }
  }

  @override
  Future<dynamic> createMealPlannerMeal(
      String MealId, String MealPlannerId) async {
    try {
      final response = await _client.createMealPlannerMeal(
          {'meal_id': MealId, 'meal_planner_id': MealPlannerId});
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
  Future<User> login(String email, String password) async {
    try {
      final response =
          await _client.login({'email': email, 'password': password});
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
  Future<bool> deleteMealPlannerMeal(String id) async {
    try {
      final response = await _client.deleteMealPlannerMeal(id);
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
  Future<MealPlanners> getMealPlannerbyAdmin() async {
    try {
      final queries = {
        "fields": '["\$all"]',
        "where": '{"is_admin_create" : true}'
      };
      final response = await _client.getMealPlanner(queries);
      return response;
    } catch (exception) {
      throw Exception(exception);
    }
  }

  @override
  Future<MealPlanners> getMealPlannerbyuser() async {
    try {
      final queries = {
        "fields": '["\$all"]',
        "where": '{"user_id":"a97724c0-0194-11ef-8715-d9b96b675793"}'
      };
      final response = await _client.getMealPlanner(queries);
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
  Future<dynamic> getMealPlannerMeal(
      String? mealPlannerId, String typeMeal) async {
    try {
      final queries = {
        "fields": '["\$all",{"meal":["\$all"]}]',
        "where":
            '{"meal_planner_id": "$mealPlannerId","\$meal.type_meal\$":"$typeMeal"}'
      };
      final response = await _client.getMealPlannerMeal(queries);
      return response;
    } catch (exception) {
      throw Exception(exception);
    }
  }

  @override
  Future<dynamic> addMeal(String typeMeal, String id) async {
    try {
      final response = await _client.addMeal({'type_meal': typeMeal}, id);
      return response;
    } catch (exception) {
      throw Exception(exception);
    }
  }
}
