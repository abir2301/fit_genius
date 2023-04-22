import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/app_theme.dart';
import '../../../../../core/data.dart';
import '../../../../auth/presentation/components/label_checkedbox.dart';

class MealsCkeckList extends StatefulWidget {
  const MealsCkeckList({super.key});

  @override
  State<MealsCkeckList> createState() => _MealsCkeckListState();
}

class _MealsCkeckListState extends State<MealsCkeckList> {
  List meals = Data.mealsPlan['meals'] as List;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.builder(
          itemCount: meals.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                    color: Color(0xffb2bee8),
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  child: MealCheck(
                      label: "meal : " +
                          meals[index]['meal_id'].toString() +
                          "  0/ ${meals[index]['calories'].toString()} Kacl",
                      value: false,
                      onChanged: (bool result) {}),
                ),
              ),
            );
          }),
    );
  }
}

class MealCheck extends StatelessWidget {
  const MealCheck({
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
          Expanded(
              child: Text(
            label,
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
              color: blackColor,
              fontWeight: FontWeight.w500,
              fontSize: 15,
            )),
          )),
          Checkbox(
            activeColor: pink,
            value: value,
            onChanged: (bool? newValue) {
              onChanged(newValue!);
            },
          ),
        ],
      ),
    );
  }
}
