import 'package:app/features/auth/presentation/components/register_screen/question.component.dart';
import 'package:app/features/auth/presentation/components/regsiter-screens_pattern.dart';
import 'package:app/features/auth/presentation/components/screen_header.dart';
import 'package:flutter/material.dart';

import '../../../../../core/data.dart';
import '../../components/label_checkedbox.dart';
import '../../components/label_radio.dart';

class LifeStyleScreen extends StatefulWidget {
  const LifeStyleScreen({super.key});

  @override
  State<LifeStyleScreen> createState() => _LifeStyleScreenState();
}

class _LifeStyleScreenState extends State<LifeStyleScreen> {
  bool _isRadioSelected = false;
  final jobs = Data.jobs;
  Map<String, bool> userJob = {
    "office job": false,
    "other": false,
  };
  int selected_index = 0;
  @override
  Widget build(BuildContext context) {
    return RegsiterScreensPatern(list: [
      const screenHeader(title: "Lifestyle", size: 30),
      const SizedBox(
        height: 20,
      ),
      RegistrationQuestions(text: "Do you :"),
      Container(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LabelRadio(
                label: "WORK ",
                padding: const EdgeInsets.symmetric(horizontal: 5),
                groupValue: _isRadioSelected,
                value: true,
                onChanged: (bool newValue) {
                  setState(() {
                    print("new value on change = $newValue");
                    _isRadioSelected = newValue;
                  });
                },
              ),
              LabelRadio(
                label: "Study",
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                groupValue: _isRadioSelected,
                value: false,
                onChanged: (bool newValue) {
                  setState(() {
                    _isRadioSelected = newValue;
                  });
                },
              )
            ],
          ),
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      RegistrationQuestions(text: "is your job :"),
      const SizedBox(
        height: 20,
      ),
      Container(
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
            itemCount: jobs.length,
            itemBuilder: (context, index) {
              return LabeledCheckbox(
                label: jobs[index],
                value: userJob[jobs[index]] ?? false,
                onChanged: (bool result) {
                  setState(() {
                    userJob[jobs[index]] = result;
                    Data.userJob = userJob;
                  });
                },
              );
            }),
      )
    ]);
  }
}
