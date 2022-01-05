import 'package:flutter/material.dart';
import 'package:food_delivery/data/fake_food_list.dart';
import 'food_item.dart';

class RecommendedWidget extends StatelessWidget {
  const RecommendedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Recommended',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
            ),
            Text(
              'See All',
              style: TextStyle(
                fontSize: 14,
                color: Colors.blue,
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        SizedBox(
          height: 200,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: foodHorizontalItems.length,
            itemBuilder: (BuildContext context, int index) {
              return FoodHorizontalItem(
                foodItem: foodHorizontalItems[index],
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                width: 10,
              );
            },
          ),
        ),
      ],
    );
  }
}
