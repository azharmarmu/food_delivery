import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  final String imgUrl;
  const ImageWidget({Key? key, required this.imgUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(
        Radius.circular(20),
      ),
      child: Image.network(
        imgUrl,
        width: double.infinity,
        height: 100,
        fit: BoxFit.cover,
      ),
    );
  }
}
