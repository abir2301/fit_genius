import 'package:flutter/material.dart';
import '../../../../core/app_theme.dart';

// ignore: camel_case_types
class screenHeader extends StatelessWidget {
  final String title;
  final double size ;

  const screenHeader({Key? key, required this.title , required  this.size}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Text(
          title,
          style: screenHeaderStyle(size: size),
        ),
      ),
    );
  }
}
