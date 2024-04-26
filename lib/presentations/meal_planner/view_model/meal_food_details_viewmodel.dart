// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_tour/injection.dart';
import 'package:riverpod_tour/models/meal.dart';
import 'package:riverpod_tour/models/meal_planner.dart';

import 'package:riverpod_tour/presentations/meal_planner/model/meal_food_detail_model.dart';
import 'package:riverpod_tour/repositories/iapp_repository.dart';
part 'meal_food_details_viewmodel.g.dart';

@riverpod
class MealFoodDetailViewModel extends _$MealFoodDetailViewModel {
  final IAppRepository _userRepository = getIt<IAppRepository>();
  @override
  Future<MealFoodDetailModel> build(int hashCodeOfContext) async {
    final data = await _userRepository.getMeal();
    final data2 = await _userRepository.getMealBreakfast();
    final data3 = await _userRepository.getMealBreakLunch();
    final data4 = await _userRepository.getMealPlannerbyAdmin();
    final data5 = await _userRepository.getMealPlannerbyuser();
    return MealFoodDetailModel(
        meals: data,
        mealsBreakFast: data2,
        mealsBreakLunch: data3,
        mealPlannersAD: data4,
        mealPlannersUS: data5);
  }

  Future<void> onCreateMeal(String type_meal, String id) async {
    final data = await _userRepository.addMeal(type_meal, id);
    if (state.value == null) return;
  }

  Future<void> onCreateMealPlannerMeal(
      String mealId, String mealPlannerId) async {
    final data =
        await _userRepository.createMealPlannerMeal(mealId, mealPlannerId);
    if (state.value == null) return;
  }

  Future<void> onCreateMealPlanner(String name, String user_id) async {
    final data = await _userRepository.createMealPlanner(name, user_id);
    print(data);
    if (state.value == null) return;
    final current = state.value?.mealPlannersUS?.rows?.toList();
    current?.add(data);

    state = AsyncData(
        state.value!.copyWith(mealPlannersUS: MealPlanners(rows: current)));
  }

  Future<void> onDeleteMealPlannerMeal(String id) async {
    final isDelete = await _userRepository.deleteMealPlannerMeal(id);
    // if (isDelete == true) {
    //   final current = state.value?.workouts?.rows?.toList();
    //   current?.removeWhere((element) => element.id == id);
    //   state =
    //       AsyncData(state.value!.copyWith(workouts: Workouts(rows: current)));
    // }
  }

  void onClear() {
    state = AsyncData(MealFoodDetailModel(
      meals: state.value?.meals,
      mealPlannersUS: state.value?.mealPlannersUS,
      mealsBreakFast: state.value?.mealsBreakFast,
      mealsBreakLunch: state.value?.mealsBreakLunch,
      mealPlannersAD: state.value?.mealPlannersAD,
    ));
  }
}
