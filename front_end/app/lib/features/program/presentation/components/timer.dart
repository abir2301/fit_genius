import 'dart:async';

import 'package:app/core/app_theme.dart';
import 'package:app/features/program/presentation/components/rounded_button.dart';
import 'package:flutter/material.dart';

class ExcerciseTimer extends StatefulWidget {
  late int duree;
  ExcerciseTimer({super.key, required this.duree});

  @override
  State<ExcerciseTimer> createState() => _ExcerciseTimerState();
}

class _ExcerciseTimerState extends State<ExcerciseTimer> {
  static const maxSeconds = 5;
  late int seconds = maxSeconds;
  Timer? timer;
  void resetTimer() => setState(() {
        seconds = maxSeconds;
      });
  void startTimer({bool reset = true}) {
    if (reset) {
      resetTimer();
    }
    timer = Timer.periodic(Duration(seconds: 1), (_) {
      if (seconds > 0) {
        setState(() {
          seconds--;
        });
      } else {
        stopTimer(reset: false);
      }
    });
  }

  void stopTimer({bool reset = true}) {
    if (reset) {
      resetTimer();
    }
    setState(() {
      timer?.cancel();
    });
  }

  Widget buildTimer() {
    if (seconds == 0) {
      return Icon(
        Icons.done,
        color: pink,
        size: 100,
      );
    }
    return Text(
      '$seconds',
      style: const TextStyle(
          fontWeight: FontWeight.bold, color: Colors.white, fontSize: 24),
    );
  }

  Widget buildTime() {
    return SizedBox(
      width: 100,
      height: 100,
      child: Stack(
        fit: StackFit.expand,
        children: [
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation(secondColor),
            backgroundColor: pink,
            value: seconds / maxSeconds,
            strokeWidth: 10,
          ),
          Center(
            child: buildTimer(),
          ),
        ],
      ),
    );
  }

  Widget timerButtons() {
    final isRunning = timer == null ? false : timer!.isActive;
    final isCompleted = seconds == maxSeconds || seconds == 0;
    return isRunning || !isCompleted
        ? Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RoundedTextButton(
                  color: secondColor,
                  onPress: () {
                    if (isRunning) {
                      stopTimer(reset: false);
                    } else {
                      {
                        startTimer(reset: false);
                      }
                    }
                  },
                  label: isRunning ? "pause" : "resume ",
                ),
                SizedBox(
                  width: 12,
                ),
                RoundedTextButton(
                    onPress: stopTimer, label: "cancel", color: secondColor)
              ],
            ),
          )
        : RoundedTextButton(
            onPress: () {
              startTimer();
            },
            label: "Start ",
            color: secondColor);
  }

  @override
  Widget build(BuildContext context) {
    //seconds = widget.duree;

    return Column(
      children: [
        buildTime(),
        const SizedBox(
          height: 20,
        ),
        timerButtons(),
      ],
    );
  }
}
