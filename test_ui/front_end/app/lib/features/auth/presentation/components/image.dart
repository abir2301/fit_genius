import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  String imageUrl;
  double? width;
  ImageWidget({required this.imageUrl, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: Image.asset(imageUrl),
    );
  }
}
