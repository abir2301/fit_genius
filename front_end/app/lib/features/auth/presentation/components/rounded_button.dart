import 'package:flutter/material.dart';

import '../../../../core/app_theme.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton(
      {required this.text, required this.onPress, required this.withBgColor , required this.width});

  String text;
  final VoidCallback onPress;
  bool withBgColor;
  double width ;

  @override
  Widget build(BuildContext context) {
    final bg_raduis = 20.0;
    return Padding(
      padding: EdgeInsets.only(top: 25, bottom: 0),
      child: Container(
        width: width,
        alignment: Alignment.center,
        //padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        decoration: withBgColor
            ? BoxDecoration(
                borderRadius: BorderRadius.circular(bg_raduis),
                color: primaryColor)
            : BoxDecoration(
                border: Border.all(
                  color: primaryColor,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(bg_raduis)),
        child: MaterialButton(
          onPressed: onPress,
          child: Text(text, style: kButtonTextStyle(!withBgColor)),
        ),
      ),
    );
  }
}
