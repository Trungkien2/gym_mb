import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_tour/models/exercise.dart';
import 'package:riverpod_tour/models/meal.dart';
import 'package:riverpod_tour/models/user.dart';
import 'package:riverpod_tour/models/workout.dart';

part 'network_service.g.dart';

@RestApi(baseUrl: 'http://172.20.10.4:3002/api/v1/')
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @POST("/workout")
  Future<Workout> createWorkout(@Body() Map<String, dynamic> body);

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

  @DELETE("/workout/{id}")
  Future<dynamic> deleteWorkout(@Path() String id);
}
