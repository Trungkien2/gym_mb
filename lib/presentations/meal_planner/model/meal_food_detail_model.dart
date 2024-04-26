import 'package:riverpod_tour/models/meal.dart';
import 'package:riverpod_tour/models/meal_planner.dart';

class MealFoodDetailModel {
  final Meals? meals;
  final Meals? mealsBreakFast;
  final Meals? mealsBreakLunch;
  final MealPlanners? mealPlannersAD;
  final MealPlanners? mealPlannersUS;
  //final List<Exercise>? excercise;
  MealFoodDetailModel(
      {this.meals,
      this.mealsBreakFast,
      this.mealsBreakLunch,
      this.mealPlannersAD,
      this.mealPlannersUS});

  MealFoodDetailModel copyWith({
    Meals? meals,
    Meals? mealsBreakFast,
    Meals? mealsBreakLunch,
    MealPlanners? mealPlannersAD,
    MealPlanners? mealPlannersUS,
  }) {
    return MealFoodDetailModel(
        meals: meals ?? this.meals,
        mealsBreakFast: mealsBreakFast ?? this.mealsBreakFast,
        mealsBreakLunch: mealsBreakLunch ?? this.mealsBreakLunch,
        mealPlannersAD: mealPlannersAD ?? this.mealPlannersAD,
        mealPlannersUS: mealPlannersUS ?? this.mealPlannersUS
        //excercise: excercise ?? this.excercise
        );
  }
}
