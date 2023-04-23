import 'package:app/core/app_theme.dart';
import 'package:app/features/auth/presentation/components/input_field.dart';
import 'package:app/features/auth/presentation/components/label_radio.dart';
import 'package:app/features/auth/presentation/components/regsiter-screens_pattern.dart';
import 'package:flutter/material.dart';

import '../../components/screen_header.dart';

class PrivateInfoScreen extends StatefulWidget {
  const PrivateInfoScreen({super.key});

  @override
  State<PrivateInfoScreen> createState() => _PrivateInfoScreenState();
}

class _PrivateInfoScreenState extends State<PrivateInfoScreen> {
  final TextEditingController ageController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  final TextEditingController heightController = TextEditingController();
  bool _isRadioSelected = false;
  int selected_index = 0;
  List<String> itemsImage = [
    "assets/images/muscle.png",
    "assets/images/balancoire.png",
    "assets/images/body.png"
  ];
  @override
  Widget build(BuildContext context) {
    return RegsiterScreensPatern(list: [
      Column(
        children: [
          const screenHeader(title: "Profile", size: 30),
          const SizedBox(
            height: 10,
          ),
          InputField(
              label: "Age",
              hintText: "23",
              controller: ageController,
              validator: (value) {},
              textInputType: TextInputType.number),
          const SizedBox(
            height: 10,
          ),
          InputField(
              label: "Weight",
              hintText: "70 Kg",
              controller: weightController,
              validator: (value) {},
              textInputType: TextInputType.number),
          const SizedBox(
            height: 10,
          ),
          InputField(
              label: "height",
              hintText: "170 Cm",
              controller: heightController,
              validator: (value) {},
              textInputType: TextInputType.number),
          const SizedBox(
            height: 10,
          ),
          Container(
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LabelRadio(
                    label: "male",
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
                    label: "female",
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
          Text(
            "choose your Goal",
            style: screenHeaderStyle(size: 20),
          ),
          Container(
            height: 200,
            child: Center(
              child: GridView.count(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                crossAxisCount: 2,
                children: List.generate(itemsImage.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: selected_index == index ? hoverColor : null,
                          borderRadius: BorderRadius.circular(15)),
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: InkWell(
                        child: Image.asset(itemsImage.elementAt(index)),
                        onTap: () => {
                          setState(() {
                            print("new value on change = $selected_index");
                            selected_index = index;
                          })
                        },
                      ),
                    ),
                  );
                }),
              ),
            ),
          )
        ],
      )
    ]);
  }
}
