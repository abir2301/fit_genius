import 'package:flutter/material.dart';

class RoundedTextButton extends StatelessWidget {
  late VoidCallback onPress;
  late String label;
  late Color color;
  RoundedTextButton(
      {Key? key,
      required this.onPress,
      required this.label,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPress,
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        backgroundColor: MaterialStatePropertyAll(color),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Text(
          label,
          style: const TextStyle(color: Colors.white, fontSize: 15),
        ),
      ),
    );
  }
}
