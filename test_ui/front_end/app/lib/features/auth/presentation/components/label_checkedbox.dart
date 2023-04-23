import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/app_theme.dart';

class LabeledCheckbox extends StatelessWidget {
  const LabeledCheckbox({
    super.key,
    required this.label,
    required this.value,
    required this.onChanged,
  });

  final String label;

  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged(!value);
      },
      child: Row(
        verticalDirection: VerticalDirection.up,
        children: <Widget>[
          Checkbox(
            activeColor: pink,
            value: value,
            onChanged: (bool? newValue) {
              onChanged(newValue!);
            },
          ),
          Expanded(
              child: Text(
            label,
            style: registrationMessageStyle(size: 15),
          )),
        ],
      ),
    );
  }
}
