import 'package:flutter/material.dart';
import 'package:food_delivery/model/food_item_model.dart';

import 'food_item.dart';
import 'image_widget.dart';

class FoodVerticalItem extends StatelessWidget {
  final FoodItemModel item;

  const FoodVerticalItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            ImageWidget(
              imgUrl: item.imgUrl,
              width: 200,
            ),
            SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(item.name),
                Row(
                  children: [
                    Text(item.city!),
                    Text(item.km!.toString()),
                  ],
                ),
                RatingWidget(rating: item.rating)
              ],
            ),
          ],
        ),
        Text(item.price.toString()),
      ],
    );
  }
}
