import 'package:flutter/material.dart';

import '../../../../../core/data.dart';
import '../../components/label_checkedbox.dart';
import '../../components/label_radio.dart';
import '../../components/register_screen/question.component.dart';
import '../../components/regsiter-screens_pattern.dart';
import '../../components/screen_header.dart';

class FavoriteSportsScreen extends StatefulWidget {
  const FavoriteSportsScreen({super.key});

  @override
  State<FavoriteSportsScreen> createState() => _FavoriteSportsScreenState();
}

class _FavoriteSportsScreenState extends State<FavoriteSportsScreen> {
  bool _isRadioSelected = false;
  int selected_index = 0;
  final sports = Data.sports;
  Map<String, bool> userSports = {
    'Hit': false,
    'Zumba': false,
    'running': false,
    'bodybuilding': false,
    'cardio': false
  };
  @override
  Widget build(BuildContext context) {
    return RegsiterScreensPatern(list: [
      screenHeader(title: "Favorite sport", size: 30),
      SizedBox(
        height: 20,
      ),
      RegistrationQuestions(text: "What is your favorite sport? "),
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
                  userSports = {
                    'Hit': false,
                    'Zumba': false,
                    'running': false,
                    'bodybuilding': false,
                    'cardio': false
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
                  userSports = {
                   'Hit': false,
                    'Zumba': false,
                    'running': false,
                    'bodybuilding': false,
                    'cardio': false
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
            itemCount: sports.length,
            itemBuilder: (context, index) {
              return LabeledCheckbox(
                label: sports[index],
                value: userSports[sports[index]] ?? false,
                onChanged: (bool result) {
                  if (_isRadioSelected) {
                    setState(() {
                      userSports[sports[index]] = result;
                      Data.userChronicDiseases = userSports;
                    });
                  }
                },
              );
            }),
      )
    ]);
  }
}
