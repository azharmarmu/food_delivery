import 'package:flutter/material.dart';
import 'package:food_delivery/model/food_item_model.dart';

import 'image_widget.dart';

class FoodHorizontalItem extends StatelessWidget {
  final FoodItemModel foodItem;

  const FoodHorizontalItem({
    Key? key,
    required this.foodItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Container(
        width: 175,
        padding: EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 4,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ImageWidget(imgUrl: foodItem.imgUrl),
                Positioned(
                  top: 8.0,
                  right: 8.0,
                  child: RatingWidget(rating: foodItem.rating),
                ),
              ],
            ),
            SizedBox(height: 8),
            Text(
              foodItem.name,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 8),
            Text(
              '\$ ${foodItem.price}',
              style: TextStyle(
                fontSize: 16,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RatingWidget extends StatelessWidget {
  final double rating;

  const RatingWidget({
    Key? key,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4),
      width: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.star,
            color: Colors.amber,
            size: 16,
          ),
          SizedBox(width: 4),
          Text(
            '$rating',
            style: TextStyle(
              fontWeight: FontWeight.w700,
            ),
          )
        ],
      ),
    );
  }
}
