// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_tour/injection.dart';
import 'package:riverpod_tour/models/meal.dart';

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
    return MealFoodDetailModel(
        meals: data, mealsBreakFast: data2, mealsBreakLunch: data3);
  }

  Future<void> onCreateMeal(String type_meal, String id) async {
    final data = await _userRepository.addMeal(type_meal, id);
    if (state.value == null) return;
  }

  void onClear() {
    state = AsyncData(MealFoodDetailModel(meals: state.value?.meals));
  }
}
