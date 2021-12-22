import 'package:flutter/material.dart';
import 'package:food_delivery/data/fake_food_list.dart';

import 'food_item.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
          Container(
            height: 200,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: foodItems.length,
              itemBuilder: (BuildContext context, int index) {
                return FoodItem(foodItem: foodItems[index],);
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: 10,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
