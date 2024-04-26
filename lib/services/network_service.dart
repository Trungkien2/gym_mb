import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_tour/models/exercise.dart';
import 'package:riverpod_tour/models/meal.dart';
import 'package:riverpod_tour/models/meal_planner.dart';
import 'package:riverpod_tour/models/user.dart';
import 'package:riverpod_tour/models/workout.dart';

part 'network_service.g.dart';

@RestApi(baseUrl: 'http://192.168.1.16:3002/api/v1/')
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @POST("/workout")
  Future<Workout> createWorkout(@Body() Map<String, dynamic> body);

  @POST("/meal_planner")
  Future<MealPlanner> createMealPlanner(@Body() Map<String, dynamic> body);

  @POST("auth/register")
  Future<User> register(@Body() Map<String, dynamic> body);
  @POST("auth/login")
  Future<User> login(@Body() Map<String, dynamic> body);

  @POST("/excerise")
  Future<Exercise> createExercise(@Body() Map<String, dynamic> body);

  @GET("/excerise")
  Future<Exercises> getExercises(@Queries() Map<String, dynamic> queries);

  @GET("/meal")
  Future<Meals> getMeal(@Queries() Map<String, dynamic> queries);

  @PUT("/meal/{id}")
  Future<dynamic> addMeal(@Body() dynamic body, @Path() String id);

  @GET("/workout")
  Future<Workouts> getWorkouts(@Queries() Map<String, dynamic> queries);
  @GET("/meal_planner")
  Future<MealPlanners> getMealPlanner(@Queries() Map<String, dynamic> queries);

  @POST("/meal_planner_meal")
  Future<dynamic> createMealPlannerMeal(@Body() Map<String, dynamic> body);

  @GET("/meal_planner_meal")
  Future<dynamic> getMealPlannerMeal(@Queries() Map<String, dynamic> queries);

  @DELETE("/workout/{id}")
  Future<dynamic> deleteWorkout(@Path() String id);

  @DELETE("/meal_planner_meal/{id}")
  Future<dynamic> deleteMealPlannerMeal(@Path() String id);
}
