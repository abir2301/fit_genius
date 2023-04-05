import 'package:flutter/material.dart';

import '../../../../../core/app_theme.dart';

class RegistrationQuestions extends StatelessWidget {
  RegistrationQuestions({super.key, required this.text, this.size});
  String text;
  double? size = 30;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Text(
          text,
          style: registrationMessageStyle(size: size),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
