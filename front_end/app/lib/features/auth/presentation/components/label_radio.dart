import 'package:app/core/app_theme.dart';
import 'package:flutter/material.dart';

class LabelRadio extends StatelessWidget {
  const LabelRadio({
    super.key,
    required this.label,
    required this.padding,
    required this.groupValue,
    required this.value,
    required this.onChanged,
  });
  final String label;
  final EdgeInsets padding;
  final bool groupValue;
  final bool value;
  final ValueChanged<bool> onChanged;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          if (value != groupValue) {
            onChanged(value);
          }
        },
        child: Padding(
          padding: padding,
          child: Row(
            children: <Widget>[
              Radio<bool>(
                fillColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                  if (states.contains(MaterialState.disabled)) {
                    return primaryColor.withOpacity(0.32);
                  }
                  return primaryColor;
                }),
                activeColor: primaryColor,
                groupValue: groupValue,
                value: value,
                onChanged: (bool? newValue) {
                  onChanged(newValue!);
                },
              ),
              Text(
                label,
                style: registrationMessageStyle(size: 20),
              ),
            ],
          ),
        ));
  }
}
