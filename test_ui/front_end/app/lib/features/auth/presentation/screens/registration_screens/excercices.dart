import 'package:app/features/auth/presentation/components/input_field.dart';
import 'package:app/features/auth/presentation/components/register_screen/question.component.dart';
import 'package:app/features/auth/presentation/components/regsiter-screens_pattern.dart';
import 'package:app/features/auth/presentation/components/screen_header.dart';
import 'package:flutter/material.dart';

import '../../../../../core/data.dart';
import '../../components/label_checkedbox.dart';
import '../../components/label_radio.dart';

class ExcercicesScreen extends StatefulWidget {
  const ExcercicesScreen({super.key});

  @override
  State<ExcercicesScreen> createState() => _ExcercicesScreenState();
}

class _ExcercicesScreenState extends State<ExcercicesScreen> {
  bool _isRadioSelected = false;
  TextEditingController excerciceController = new TextEditingController();
  int selected_index = 0;
  final sessionDuration = Data.sessionsDuration;
  Map<String, bool> userSessionsDuration = {
    '20': false,
    '25': false,
    '30': false,
    '40': false,
  };
  @override
  Widget build(BuildContext context) {
    return RegsiterScreensPatern(list: [
      const screenHeader(title: "Exercices", size: 30),
      const SizedBox(
        height: 20,
      ),
      RegistrationQuestions(text: "Are you willing to do exercices ?"),
      const SizedBox(
        height: 20,
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
                  userSessionsDuration = {
                    '20': false,
                    '25': false,
                    '30': false,
                    '40': false,
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
                  userSessionsDuration = {
                    '20': false,
                    '25': false,
                    '30': false,
                    '40': false,
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
      screenHeader(title: " How many times/week ?", size: 20),
      InputField(
          textInputType: TextInputType.number,
          label: "",
          hintText: "2",
          controller: excerciceController,
          validator: (val){}),
      Container(
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
            itemCount: sessionDuration.length,
            itemBuilder: (context, index) {
              return LabeledCheckbox(
                label: sessionDuration[index] + "  min",
                value: userSessionsDuration[sessionDuration[index]] ?? false,
                onChanged: (bool result) {
                  if (_isRadioSelected) {
                    setState(() {
                      userSessionsDuration[sessionDuration[index]] = result;
                      Data.userSessionsDuration = userSessionsDuration;
                    });
                  }
                },
              );
            }),
      )
    ]);
  }
}
