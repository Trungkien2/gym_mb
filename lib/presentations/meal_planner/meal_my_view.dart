import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tour/common/common_widget/meal_food_demo_row.dart';
import 'package:riverpod_tour/common/common_widget/meal_food_row.dart';
import 'package:riverpod_tour/common/common_widget/meal_food_schedule_row.dart';
import 'package:riverpod_tour/common/common_widget/nutritions_row.dart';
import 'package:riverpod_tour/models/meal.dart';
import 'package:riverpod_tour/models/meal_planner.dart';
import 'package:riverpod_tour/presentations/meal_planner/view_model/meal_food_details_viewmodel.dart';
import 'package:simple_animation_progress_bar/simple_animation_progress_bar.dart';

import '../../common/colo_extension.dart';

class MealMyView extends ConsumerStatefulWidget {
  const MealMyView({super.key});

  @override
  ConsumerState<MealMyView> createState() => _MealMyViewState();
}

class _MealMyViewState extends ConsumerState<MealMyView> {
  late DateTime _selectedDateAppBBar;
  TextEditingController workoutController = TextEditingController();

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
    _selectedDateAppBBar = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    final watch =
        ref.watch(mealFoodDetailViewModelProvider.call(context.hashCode));
    final read = ref
        .read(mealFoodDetailViewModelProvider.call(context.hashCode).notifier);
    var media = MediaQuery.of(context).size;
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
            "Meal Demo",
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
                  watch.when(
                      data: (data) => ListView.builder(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: data.mealPlannersUS?.rows?.length,
                          itemBuilder: (context, index) {
                            MealPlanner? mObj =
                                data.mealPlannersUS?.rows?[index];
                            return MealFoodRow(
                              mObj: mObj,
                              index: index,
                            );
                          }),
                      error: (error, stackTrace) => Text(error.toString()),
                      loading: () => const CircularProgressIndicator()),
                ],
              ),
            ))
          ],
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
                heroTag: null,
                child: const Icon(Icons.add),
                onPressed: () {
                  showCreateDialog(context, onCreate: (value) async {
                    read.onCreateMealPlanner(workoutController.text,
                        "a97724c0-0194-11ef-8715-d9b96b675793");
                    workoutController.clear();
                    await context.popRoute();
                    read.onClear();
                  });
                }),
          ],
        ));
  }

  Future<void> showCreateDialog(BuildContext context,
      {required Function(String) onCreate}) {
    return showDialog(
        context: context,
        builder: (context) => Dialog(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  TextFormField(
                    controller: workoutController,
                    decoration:
                        const InputDecoration(label: Text("Tên Planner")),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                      onPressed: () => onCreate(workoutController.text),
                      child: const Text("Tạo"))
                ]),
              ),
            ));
  }
}
