import 'package:app/features/auth/presentation/components/register_screen/question.component.dart';
import 'package:app/features/auth/presentation/components/regsiter-screens_pattern.dart';
import 'package:app/features/auth/presentation/components/screen_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../core/app_theme.dart';
import '../../../../../core/data.dart';
import '../../../../user_informations/domain/models/hp.dart';
import '../../../../user_informations/presentation/providers.dart';
import '../../components/label_checkedbox.dart';
import '../../components/label_radio.dart';

class AllergiesScreen extends ConsumerStatefulWidget {
  const AllergiesScreen({super.key});

  @override
  ConsumerState<AllergiesScreen> createState() => _AllergiesScreenState();
}

class _AllergiesScreenState extends ConsumerState<AllergiesScreen> {
  bool _isRadioSelected = false;
  int selected_index = 0;
  List<bool> bools = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];
  late Hps? hps;
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(allHpProvider);

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
                    List<bool> bools = [
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false
                    ];
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
            loadedAll: (hps) => ListView.builder(
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
                                .read(allHpProvider.notifier)
                                .addUserHp(hps.data[index]);
                          } else {
                            ref
                                .read(allHpProvider.notifier)
                                .removeUserHp(hps.data[index]);
                          }
                        });
                      }
                    },
                  );
                })),
      ),
      Container(
          child: TextButton(
              onPressed: () {
                if (ref.read(allHpProvider.notifier).userHps.data.length != 0) {
                  ref.read(allHpProvider.notifier).postUserHp();
                }
              },
              child: Text('submit '))),
    ]);
  }
}
