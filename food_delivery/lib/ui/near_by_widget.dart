import 'package:flutter/material.dart';
import 'package:food_delivery/data/fake_food_list.dart';
import 'package:food_delivery/ui/food_vertical_item.dart';

class NearByWidget extends StatelessWidget {
  const NearByWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Near of you',
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
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: foodVerticalItems.length,
            itemBuilder: (BuildContext context, int index) {
              return FoodVerticalItem(item: foodVerticalItems[index]);
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(height: 10);
            },
          ),
        )
      ],
    );
  }
}
