import 'package:app/core/app_theme.dart';
import 'package:app/features/auth/presentation/components/label_checkedbox.dart';
import 'package:app/features/auth/presentation/components/register_screen/question.component.dart';
import 'package:app/features/auth/presentation/components/regsiter-screens_pattern.dart';
import 'package:app/features/auth/presentation/components/screen_header.dart';
import 'package:app/features/user_informations/presentation/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:math';

import '../../../../../core/data.dart';
import '../../../../../core/utils/functions/display_snackbar.dart';
import '../../../../user_informations/domain/models/hp.dart';
import '../../components/label_radio.dart';

class DeficienciesScreen extends ConsumerStatefulWidget {
  const DeficienciesScreen({super.key});

  @override
  ConsumerState<DeficienciesScreen> createState() => _DeficienciesScreenState();
}

class _DeficienciesScreenState extends ConsumerState<DeficienciesScreen> {
  bool _isRadioSelected = false;
  int selected_index = 0;
  final deficiencies = Data.deficiencies;
  bool enable = false;
  List<bool> bools = [false, false, false, false];

  late Hps? hps;

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(hpProvider);

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
                label: "Yes",
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
                label: "No",
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                groupValue: _isRadioSelected,
                value: false,
                onChanged: (bool newValue) {
                  setState(() {
                    _isRadioSelected = newValue;
                    bools = [false, false, false, false];
                  });
                },
              )
            ],
          ),
        ),
      ),
      Container(
          height: MediaQuery.of(context).size.width * 0.8,
          child: state.maybeWhen(
            initial: () => Container(
              height: 50,
              width: 50,
              child: const CircularProgressIndicator(
                color: pink,
              ),
            ),
            orElse: () => const Center(
                child: Text(
              "something went wrong ",
              style: TextStyle(fontWeight: FontWeight.bold, color: pink),
            )),
            loading: () => Container(
              height: 100,
              width: 100,
              child: const CircularProgressIndicator(
                color: pink,
              ),
            ),
            loadedDef: (hps) => ListView.builder(
                itemCount: hps.data.length,
                itemBuilder: (context, index) {
                  return LabeledCheckbox(
                    label: hps.data[index].name,
                    value: bools[index],
                    onChanged: (bool result) {
                      if (_isRadioSelected) {
                        setState(() {
                          bools[index] = !bools[index];
                          if (bools[index] == true) {
                            ref
                                .read(hpProvider.notifier)
                                .addUserHp(hps.data[index]);
                          } else {
                            ref
                                .read(hpProvider.notifier)
                                .removeUserHp(hps.data[index]);
                          }
                        });
                      }
                    },
                  );
                }),
          )),
      Container(
          child: TextButton(
              onPressed: () {
                displaySnackbar(context, "deficiencies succesfully inserted ");
                // if (ref.read(hpProvider.notifier).userHps.data.length != 0) {
                //   ref.read(hpProvider.notifier).postUserHp();
                // }
              },
              child: Text('submit '))),
    ]);
  }
}
