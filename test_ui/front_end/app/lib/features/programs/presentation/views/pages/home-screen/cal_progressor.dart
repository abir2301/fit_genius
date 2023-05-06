import 'package:flutter/material.dart';

import '../../../../../../core/app_theme.dart';
import '../../components/cirrcul_progressor.dart';

class CaloryProgressor extends StatefulWidget {
  const CaloryProgressor({super.key});

  @override
  State<CaloryProgressor> createState() => _CaloryProgressorState();
}

class _CaloryProgressorState extends State<CaloryProgressor> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
          child: Column(
            children: [
              Text(
                "120",
                style: ScreenTextIndication(),
              ),
              Text(
                "Consumed ",
                style: ScreenTextIndication(),
              ),
            ],
          ),
        ),
        Container(
            child: CircularProgressor(
          radius: 40,
          currentProgress: 10,
          result: 100,
        )),
        Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
          child: Column(
            children: [
              Text(
                "10",
                style: ScreenTextIndication(),
              ),
              Text(
                "Expended ",
                style: ScreenTextIndication(),
              ),
            ],
          ),
        )
      ],
    );
  }
}
