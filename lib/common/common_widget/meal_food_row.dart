import 'package:flutter/material.dart';
import 'package:riverpod_tour/common/colo_extension.dart';
import 'package:riverpod_tour/models/meal.dart';
import 'package:riverpod_tour/models/meal_planner.dart';
import 'package:riverpod_tour/presentations/meal_planner/meal_schedule__demo_view.dart';
import 'package:riverpod_tour/presentations/meal_planner/meal_schedule_view.dart';

class MealFoodRow extends StatelessWidget {
  final MealPlanner? mObj;
  final int index;
  const MealFoodRow({super.key, this.mObj, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 2),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${mObj?.name ?? ''}",
                    style: TextStyle(
                        color: TColor.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MealScheduleView(id: mObj?.id),
                  ),
                );
              },
              icon: Image.asset(
                "asset/img/next_go.png",
                width: 25,
                height: 25,
              ),
            )
          ],
        ));
  }
}
