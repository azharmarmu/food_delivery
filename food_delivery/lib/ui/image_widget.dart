import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  final String imgUrl;
  final double? width;
  final double? height;

  const ImageWidget({Key? key, required this.imgUrl, this.width, this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(
        Radius.circular(20),
      ),
      child: Image.network(
        imgUrl,
        width: width ?? double.infinity,
        height: height ?? 100,
        fit: BoxFit.cover,
      ),
    );
  }
}
