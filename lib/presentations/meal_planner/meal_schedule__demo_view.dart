import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tour/common/common_widget/meal_food_schedule_demo_row.dart';
import 'package:riverpod_tour/common/common_widget/meal_food_schedule_row.dart';
import 'package:riverpod_tour/common/common_widget/nutritions_row.dart';
import 'package:riverpod_tour/injection.dart';
import 'package:riverpod_tour/models/meal.dart';
import 'package:riverpod_tour/models/meal_planner.dart';
import 'package:riverpod_tour/presentations/meal_planner/meal_food_details__lunch_view.dart';
import 'package:riverpod_tour/presentations/meal_planner/meal_food_details_view.dart';
import 'package:riverpod_tour/presentations/meal_planner/view_model/meal_food_details_viewmodel.dart';
import 'package:riverpod_tour/repositories/iapp_repository.dart';
import 'package:simple_animation_progress_bar/simple_animation_progress_bar.dart';

import '../../common/colo_extension.dart';

class MealScheduleDemoView extends ConsumerStatefulWidget {
  final String? id;
  const MealScheduleDemoView({super.key, this.id});

  @override
  ConsumerState<MealScheduleDemoView> createState() =>
      _MealScheduleDemoViewState();
}

class _MealScheduleDemoViewState extends ConsumerState<MealScheduleDemoView> {
  final IAppRepository _appRepository = getIt<IAppRepository>();
  bool isDataLoaded = false;
  Future<dynamic> fetchExcercise() async {
    final data =
        await _appRepository.getMealPlannerMeal(widget.id, "Breakfast");

    // Kiểm tra xem dữ liệu trả về có cấu trúc đúng hay không
    if (data is Map<String, dynamic> && data.containsKey('rows')) {
      return data['rows']?.toList() ?? <dynamic>[];
    } else {
      // Trả về danh sách rỗng nếu dữ liệu không có cấu trúc mong đợi
      return <dynamic>[];
    }
  }

  Future<dynamic> fetchBFL() async {
    final data = await _appRepository.getMealPlannerMeal(widget.id, "Lunch");

    // Kiểm tra xem dữ liệu trả về có cấu trúc đúng hay không
    if (data is Map<String, dynamic> && data.containsKey('rows')) {
      return data['rows']?.toList() ?? <dynamic>[];
    } else {
      // Trả về danh sách rỗng nếu dữ liệu không có cấu trúc mong đợi
      return <dynamic>[];
    }
  }

  // ignore: non_constant_identifier_names
  dynamic MealList;
  dynamic MealListLunch;

  Future<void> onPrepare() async {
    MealList = await fetchExcercise();
    MealListLunch = await fetchBFL();
    setState(() {
      isDataLoaded = true;
    });
  }

  List breakfastArr = [
    {
      "name": "Honey Pancake",
      "time": "07:00am",
      "image": "asset/img/honey_pan.png"
    },
    {"name": "Coffee", "time": "07:30am", "image": "asset/img/coffee.png"},
  ];

  List lunchArr = [
    {
      "name": "Chicken Steak",
      "time": "01:00pm",
      "image": "asset/img/chicken.png"
    },
    {
      "name": "Milk",
      "time": "01:20pm",
      "image": "asset/img/glass-of-milk 1.png"
    },
  ];
  List snacksArr = [
    {"name": "Orange", "time": "04:30pm", "image": "asset/img/orange.png"},
    {
      "name": "Apple Pie",
      "time": "04:40pm",
      "image": "asset/img/apple_pie.png"
    },
  ];
  List dinnerArr = [
    {"name": "Salad", "time": "07:10pm", "image": "asset/img/salad.png"},
    {"name": "Oatmeal", "time": "08:10pm", "image": "asset/img/oatmeal.png"},
  ];

  List nutritionArr = [
    {
      "title": "Calories",
      "image": "asset/img/burn.png",
      "unit_name": "kCal",
      "value": "350",
      "max_value": "500",
    },
    {
      "title": "Proteins",
      "image": "asset/img/proteins.png",
      "unit_name": "g",
      "value": "300",
      "max_value": "1000",
    },
    {
      "title": "Fats",
      "image": "asset/img/egg.png",
      "unit_name": "g",
      "value": "140",
      "max_value": "1000",
    },
    {
      "title": "Carbo",
      "image": "asset/img/carbo.png",
      "unit_name": "g",
      "value": "140",
      "max_value": "1000",
    },
  ];

  @override
  void initState() {
    super.initState();
    onPrepare();
  }

  @override
  Widget build(BuildContext context) {
    final watch =
        ref.watch(mealFoodDetailViewModelProvider.call(context.hashCode));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: TColor.white,
        centerTitle: true,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            margin: const EdgeInsets.all(8),
            height: 40,
            width: 40,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: TColor.lightGray,
                borderRadius: BorderRadius.circular(10)),
            child: Image.asset(
              "asset/img/black_btn.png",
              width: 15,
              height: 15,
              fit: BoxFit.contain,
            ),
          ),
        ),
        title: Text(
          "Meal  Schedule",
          style: TextStyle(
              color: TColor.black, fontSize: 16, fontWeight: FontWeight.w700),
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.all(8),
              height: 40,
              width: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: TColor.lightGray,
                  borderRadius: BorderRadius.circular(10)),
              child: Image.asset(
                "asset/img/more_btn.png",
                width: 15,
                height: 15,
                fit: BoxFit.contain,
              ),
            ),
          )
        ],
      ),
      backgroundColor: TColor.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "BreakFast",
                        style: TextStyle(
                            color: TColor.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "${breakfastArr.length} Items | 230 calories",
                          style: TextStyle(color: TColor.gray, fontSize: 12),
                        ),
                      )
                    ],
                  ),
                ),
                if (isDataLoaded && MealList != null && MealList!.isNotEmpty)
                  ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: MealList!.length,
                    itemBuilder: (context, index) {
                      final mealMap = MealList![index];
                      final meal = mealMap['meal'];
                      if (meal != null) {
                        return MealFoodScheduleDemoRow(
                          mObj: meal,
                          index: index,
                        );
                      } else {
                        return const SizedBox();
                      }
                    },
                  )
                else
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'No data',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 10), // Khoảng cách giữa văn bản và nút
                      ],
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Lunch",
                        style: TextStyle(
                            color: TColor.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "${lunchArr.length} Items | 500 calories",
                          style: TextStyle(color: TColor.gray, fontSize: 12),
                        ),
                      )
                    ],
                  ),
                ),
                if (isDataLoaded &&
                    MealListLunch != null &&
                    MealListLunch!.isNotEmpty)
                  ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: MealListLunch!.length,
                    itemBuilder: (context, index) {
                      final mealMap = MealListLunch![index];
                      final meal = mealMap['meal'];
                      if (meal != null) {
                        return MealFoodScheduleDemoRow(
                          mObj: meal,
                          index: index,
                        );
                      } else {
                        return const SizedBox();
                      }
                    },
                  )
                else
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'No data',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 10), // Khoảng cách giữa văn bản và nút
                      ],
                    ),
                  ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
