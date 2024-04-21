import 'package:riverpod_tour/models/exercise.dart';
import 'package:riverpod_tour/models/workout.dart';

class HomeModel {
  final Workout? workout;
  final Workouts? workouts;
  //final List<Exercise>? excercise;
  HomeModel({this.workout, this.workouts});

  HomeModel copyWith(
      {Workouts? workouts, Workout? workout, List<Exercise>? excercise}) {
    return HomeModel(
      workout: workout ?? this.workout,
      workouts: workouts ?? this.workouts,
      //excercise: excercise ?? this.excercise
    );
  }
}
