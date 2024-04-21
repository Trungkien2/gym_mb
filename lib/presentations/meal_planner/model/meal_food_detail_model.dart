import 'package:riverpod_tour/models/meal.dart';

class MealFoodDetailModel {
  final Meals? meals;
  final Meals? mealsBreakFast;
  final Meals? mealsBreakLunch;
  //final List<Exercise>? excercise;
  MealFoodDetailModel({this.meals, this.mealsBreakFast, this.mealsBreakLunch});

  MealFoodDetailModel copyWith(
      {Meals? meals, Meals? mealsBreakFast, Meals? mealsBreakLunch}) {
    return MealFoodDetailModel(
        meals: meals ?? this.meals,
        mealsBreakFast: mealsBreakFast ?? this.mealsBreakFast,
        mealsBreakLunch: mealsBreakLunch ?? this.mealsBreakLunch
        //excercise: excercise ?? this.excercise
        );
  }
}
