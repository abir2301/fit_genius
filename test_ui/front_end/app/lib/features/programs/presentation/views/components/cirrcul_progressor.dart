import 'dart:math';

import 'package:app/core/app_theme.dart';
import 'package:flutter/material.dart';

class CircleProgress extends CustomPainter {
  late double currentProgress = 10;
  late double result;
  late double rrd;
  CircleProgress(this.currentProgress, this.result, this.rrd);
  final stockeCircle = 5.0;

  @override
  void paint(Canvas canvas, Size size) {
    Paint circle = Paint()
      ..strokeWidth = 5
      ..color = white
      ..style = PaintingStyle.stroke;
    Offset center = Offset(size.width / 2, size.height / 3);
    double radius = rrd;
    canvas.drawCircle(center, radius, circle);
    Paint animationArc = Paint()
      ..strokeWidth = stockeCircle
      ..color = Color(0xffEDCBCB)
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;
    double angle = 2 * pi * (currentProgress / result);
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), pi / 2,
        angle, false, animationArc);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class CircularProgressor extends StatefulWidget {
  late double currentProgress = 70;
  double result = 100;
  late double radius;
  CircularProgressor(
      {required this.result,
      required this.currentProgress,
      required this.radius});

  @override
  State<CircularProgressor> createState() => _CircularProgressorState();
}

class _CircularProgressorState extends State<CircularProgressor>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  // late double currentProgress = 70;
  // double result = 100;
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 3000));
    _animation =
        Tween<double>(begin: widget.currentProgress, end: widget.result)
            .animate(_animationController)
          ..addListener(() {
            setState(() {});
          });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          // if (_animation.value == result) {
          //   _animationController.reverse();
          // } else {
          //   _animationController.forward();
          // }
          _animationController.forward();
          // //setState(() {});
          // // setState(() {
          // //   currentProgress += 10;
          // //   if (currentProgress > 1000) {
          // //     currentProgress = 0;
          // //   }
          // //   _animation =
          // //       Tween<double>(begin: _animation.value, end: currentProgress)
          // //           .animate(_animationController);
          // //   _animationController.reset();
          // //   _animationController.forward();
          // // });
        },
        child: CustomPaint(
          foregroundPainter: CircleProgress(
              double.parse(
                  _animation.value.toDouble().toStringAsExponential(3)),
              widget.result,
              widget.radius),
          child: Text(
            '${_animation.value.toStringAsFixed(1)}',
            textAlign: TextAlign.center,
            style: ScreenTextIndication(),
          ),
        ),
      ),
    );
  }
}
