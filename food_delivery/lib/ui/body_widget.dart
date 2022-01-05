import 'package:flutter/material.dart';
import 'package:food_delivery/data/fake_food_list.dart';

import 'near_by_widget.dart';
import 'recommended_widget.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      children: [
        RecommendedWidget(),
        SizedBox(height: 16),
        NearByWidget(),
      ],
    );
  }
}
