import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:riverpod_tour/common/colo_extension.dart';
import 'package:riverpod_tour/injection.dart';
import 'package:riverpod_tour/models/meal.dart';
import 'package:riverpod_tour/presentations/meal_planner/meal_my_view.dart';
import 'package:riverpod_tour/presentations/meal_planner/meal_schedule_view.dart';
import 'package:riverpod_tour/presentations/meal_planner/view_model/meal_food_details_viewmodel.dart';
import 'package:riverpod_tour/repositories/iapp_repository.dart';

class MealFoodScheduleRow extends ConsumerStatefulWidget {
  final dynamic mObj;
  final String mealPlannerId;
  final int index;
  const MealFoodScheduleRow(
      {super.key,
      required this.mObj,
      required this.index,
      required this.mealPlannerId});
  @override
  ConsumerState<MealFoodScheduleRow> createState() =>
      _MealFoodScheduleRowState();
}

class _MealFoodScheduleRowState extends ConsumerState<MealFoodScheduleRow> {
  @override
  Widget build(BuildContext context) {
    final read = ref
        .read(mealFoodDetailViewModelProvider.call(context.hashCode).notifier);
    return Slidable(
      endActionPane: ActionPane(motion: const ScrollMotion(), children: [
        SlidableAction(
          flex: 1,
          onPressed: (_) {
            read.onDeleteMealPlannerMeal(widget.mealPlannerId);
            // controller.openEndActionPane();
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MealMyView(),
              ),
            );
          },
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
          icon: Icons.delete,
          label: 'Xoá',
        ),
      ]),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 2),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 55,
                width: 55,
                decoration: BoxDecoration(
                    color: widget.index % 2 == 0
                        ? TColor.primaryColor2.withOpacity(0.4)
                        : TColor.secondaryColor2.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(10)),
                alignment: Alignment.center,
                child: Image.asset(
                  widget.mObj['image'] ?? '',
                  width: 40,
                  height: 40,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.mObj['name'] ?? '',
                    style: TextStyle(
                        color: TColor.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    widget.mObj['name'] ?? '',
                    style: TextStyle(
                      color: TColor.gray,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                "asset/img/next_go.png",
                width: 25,
                height: 25,
              ),
            )
          ],
        ),
      ),
    );
  }
}
