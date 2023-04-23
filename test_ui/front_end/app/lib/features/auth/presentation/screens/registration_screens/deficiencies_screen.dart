import 'package:app/core/app_theme.dart';
import 'package:app/features/auth/presentation/components/label_checkedbox.dart';
import 'package:app/features/auth/presentation/components/register_screen/question.component.dart';
import 'package:app/features/auth/presentation/components/regsiter-screens_pattern.dart';
import 'package:app/features/auth/presentation/components/screen_header.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import '../../../../../core/data.dart';
import '../../components/label_radio.dart';

class DeficienciesScreen extends StatefulWidget {
  const DeficienciesScreen({super.key});

  @override
  State<DeficienciesScreen> createState() => _DeficienciesScreenState();
}

class _DeficienciesScreenState extends State<DeficienciesScreen> {
  bool _isRadioSelected = false;
  int selected_index = 0;
  final deficiencies = Data.deficiencies;
  Map<String, bool> userDeficiencies = {
    'Iron': false,
    'Vitamin D': false,
    'Vitamin B12': false,
    'Calcium': false,
    'Magnesium': false,
    'Other': false
  };
  @override
  Widget build(BuildContext context) {
    return RegsiterScreensPatern(list: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Transform.rotate(
            angle: 60 + 90,
            child: Container(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "assets/images/dumbell.png",
                height: 50,
                width: 50,
                scale: 10,
                color: blackColor,
              ),
            ),
          ),
          const screenHeader(title: "Deficiencies", size: 30)
        ],
      ),
      SizedBox(
        height: 10,
      ),
      RegistrationQuestions(
        text: "Do you have any deficiencies ?",
      ),
      Container(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LabelRadio(
                label: "Yes ",
                padding: const EdgeInsets.symmetric(horizontal: 5),
                groupValue: _isRadioSelected,
                value: true,
                onChanged: (bool newValue) {
                  userDeficiencies = {
                    'Iron': false,
                    'Vitamin D': false,
                    'Vitamin B12': false,
                    'Calcium': false,
                    'Magnesium': false,
                    'Other': false
                  };
                  setState(() {
                    print("new value on change = $newValue");
                    _isRadioSelected = newValue;
                  });
                },
              ),
              LabelRadio(
                label: "No",
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                groupValue: _isRadioSelected,
                value: false,
                onChanged: (bool newValue) {
                  userDeficiencies = {
                    'Iron': false,
                    'Vitamin D': false,
                    'Vitamin B12': false,
                    'Calcium': false,
                    'Magnesium': false,
                    'Other': false
                  };
                  setState(() {
                    _isRadioSelected = newValue;
                  });
                },
              )
            ],
          ),
        ),
      ),
      Container(
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
            itemCount: deficiencies.length,
            itemBuilder: (context, index) {
              return LabeledCheckbox(
                label: deficiencies[index],
                value: userDeficiencies[deficiencies[index]] ?? false,
                onChanged: (bool result) {
                  if (_isRadioSelected) {
                    setState(() {
                      userDeficiencies[deficiencies[index]] = result;
                      Data.userDeficiencies = userDeficiencies;
                    });
                  }
                },
              );
            }),
      )
   
   
    ]);
  }
}
