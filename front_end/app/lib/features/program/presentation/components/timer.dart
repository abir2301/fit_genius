import 'package:app/core/app_theme.dart';
import 'package:app/features/program/presentation/components/rounded_button.dart';
import 'package:flutter/material.dart';

class ExerciceTimer extends StatefulWidget {
  late int duree;
  ExerciceTimer({super.key, required this.duree});

  @override
  State<ExerciceTimer> createState() => _ExerciceTimerState();
}

class _ExerciceTimerState extends State<ExerciceTimer> {
  @override
  Widget build(BuildContext context) {
    int seconds = widget.duree;
    Widget buildTimer() {
      return Text('$seconds');
    }

    return Column(
      children: [
        buildTimer(),
        RoundedTextButton(
          onPress: () {},
          label: "Start ",
          color: secondColor,
        )
      ],
    );
  }
}
