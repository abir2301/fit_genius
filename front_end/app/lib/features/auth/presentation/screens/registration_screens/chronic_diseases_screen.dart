import 'package:app/features/auth/presentation/components/regsiter-screens_pattern.dart';
import 'package:flutter/material.dart';

import '../../../../../core/data.dart';
import '../../components/label_checkedbox.dart';
import '../../components/label_radio.dart';
import '../../components/register_screen/question.component.dart';
import '../../components/screen_header.dart';

class ChronicDiseasesScreen extends StatefulWidget {
  const ChronicDiseasesScreen({super.key});

  @override
  State<ChronicDiseasesScreen> createState() => _ChronicDiseasesScreenState();
}

class _ChronicDiseasesScreenState extends State<ChronicDiseasesScreen> {
  bool _isRadioSelected = false;
  int selected_index = 0;
  final chronicDiseases = Data.chronicDiseases;
  Map<String, bool> userChronicDiseases = {
    'Heart disease': false,
    'diabetes': false,
    'chronic kidney disease (CKD)': false,
    'Other': false
  };
  @override
  Widget build(BuildContext context) 
  {
    return RegsiterScreensPatern(list: [
      screenHeader(title: "chronic diseases", size: 30),
      SizedBox(
        height: 20,
      ),
      RegistrationQuestions(text: "Do you have any chronic disease ?"),
      SizedBox(
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
                  userChronicDiseases = {
                    'Heart disease': false,
                    'diabetes': false,
                    'chronic kidney disease (CKD)': false,
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
                  userChronicDiseases = {
                    'Heart disease': false,
                    'diabetes': false,
                    'chronic kidney disease (CKD)': false,
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
            itemCount: chronicDiseases.length,
            itemBuilder: (context, index) {
              return LabeledCheckbox(
                label: chronicDiseases[index],
                value: userChronicDiseases[chronicDiseases[index]] ?? false,
                onChanged: (bool result) {
                  if (_isRadioSelected) {
                    setState(() {
                      userChronicDiseases[chronicDiseases[index]] = result;
                      Data.userChronicDiseases = userChronicDiseases;
                    });
                  }
                },
              );
            }),
      )
    ]);
  }
}
