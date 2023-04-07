import 'package:app/features/auth/presentation/components/register_screen/question.component.dart';
import 'package:app/features/auth/presentation/components/regsiter-screens_pattern.dart';
import 'package:app/features/auth/presentation/components/screen_header.dart';
import 'package:flutter/material.dart';

import '../../../../../core/data.dart';
import '../../components/label_checkedbox.dart';
import '../../components/label_radio.dart';

class AllergiesScreen extends StatefulWidget {
  const AllergiesScreen({super.key});

  @override
  State<AllergiesScreen> createState() => _AllergiesScreenState();
}

class _AllergiesScreenState extends State<AllergiesScreen> {
  bool _isRadioSelected = false;
  int selected_index = 0;
  final allergies = Data.allergies;
  Map<String, bool> userAllergies = {
    'Lactose intolerance': false,
    'Celias disease': false,
    'Peanut': false,
    'Seafood': false,
    'Other': false
  };
  @override
  Widget build(BuildContext context) {
    return RegsiterScreensPatern(list: [
      screenHeader(title: "Allergies", size: 30),
      SizedBox(
        height: 20,
      ),
      RegistrationQuestions(text: "Do you have any allergy ?"),
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
                  userAllergies = {
                    'Lactose intolerance': false,
                    'Celias disease': false,
                    'Peanut': false,
                    'Seafood': false,
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
                  userAllergies = {
                    'Lactose intolerance': false,
                    'Celias disease': false,
                    'Peanut': false,
                    'Seafood': false,
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
            itemCount: allergies.length,
            itemBuilder: (context, index) {
              return LabeledCheckbox(
                label: allergies[index],
                value: userAllergies[allergies[index]] ?? false,
                onChanged: (bool result) {
                  if (_isRadioSelected) {
                    setState(() {
                      userAllergies[allergies[index]] = result;
                      Data.userAllergies = userAllergies;
                    });
                  }
                },
              );
            }),
      )
   
   
   
   
    ]);
  }
}
