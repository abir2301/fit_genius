import 'package:app/features/auth/presentation/components/regsiter-screens_pattern.dart';
import 'package:flutter/material.dart';

import '../../components/image.dart';
import '../../components/input_field.dart';
import '../../components/label_radio.dart';
import '../../components/register_screen/question.component.dart';
import '../../components/screen_header.dart';

class PhisicalConditionScreen extends StatefulWidget {
  const PhisicalConditionScreen({super.key});

  @override
  State<PhisicalConditionScreen> createState() =>
      _PhisicalConditionScreenState();
}

class _PhisicalConditionScreenState extends State<PhisicalConditionScreen> {
  TextEditingController activityController = TextEditingController();
  bool _isRadioSelected = false;
  int selected_index = 0;
  @override
  Widget build(BuildContext context) {
    return RegsiterScreensPatern(list: [
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const screenHeader(
            title: "Physical condition ",
            size: 28,
          ),
          const SizedBox(
            height: 10,
          ),
          RegistrationQuestions(
            text: "Do you practice any sport ?",
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LabelRadio(
                    label: "Yes 🌈",
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
                    label: "Noo 🐣",
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
          SizedBox(
            height: 30,
          ),
          RegistrationQuestions(text: "If yes how many times/week ?"),
          InputField(
            controller: activityController,
            textInputType: TextInputType.number,
            hintText: '2 for exemple ',
            label: '',
            validator: (value){},
          ),
          ImageWidget(
            width: MediaQuery.of(context).size.width * 0.5,
            imageUrl: 'assets/images/yoga.png',
          )
        ],
      )
    ]);
  }
}
