import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:riverpod_tour/common/colo_extension.dart';
import 'package:riverpod_tour/models/meal.dart';

class MealFoodScheduleDemoRow extends StatelessWidget {
  final dynamic mObj;
  final int index;
  const MealFoodScheduleDemoRow(
      {super.key, required this.mObj, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 2),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                  color: index % 2 == 0
                      ? TColor.primaryColor2.withOpacity(0.4)
                      : TColor.secondaryColor2.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(10)),
              alignment: Alignment.center,
              child: Image.asset(
                mObj['image'] ?? '',
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
                  mObj['name'] ?? '',
                  style: TextStyle(
                      color: TColor.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  mObj['name'] ?? '',
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
    );
  }
}
