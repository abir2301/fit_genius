import 'package:app/features/auth/presentation/components/regsiter-screens_pattern.dart';
import 'package:app/features/user_informations/presentation/states/user_info_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/app_theme.dart';
import '../../../../user_informations/presentation/providers.dart';
import '../../components/image.dart';
import '../../components/input_field.dart';
import '../../components/label_radio.dart';
import '../../components/register_screen/question.component.dart';
import '../../components/screen_header.dart';
import '../initila_screen.dart';

class PhisicalConditionScreen extends ConsumerStatefulWidget {
  const PhisicalConditionScreen({super.key});

  @override
  ConsumerState<PhisicalConditionScreen> createState() =>
      _PhisicalConditionScreenState();
}

class _PhisicalConditionScreenState
    extends ConsumerState<PhisicalConditionScreen> {
  TextEditingController activityController = TextEditingController(text: '0');
  bool _isRadioSelected = false;
  String? _activity_levelError;
  int selected_index = 0;
  @override
  // void initState() {
  //   super.initState();
  //   Future.delayed(Duration.zero,
  //       () => ref.read(userInfoProvider.notifier).postingProfile());
  // }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(userInfoProvider);
    return state.maybeWhen(
      orElse: () => Center(
        child: Container(
          height: 100,
          width: 100,
          child: CircularProgressIndicator(
            color: pink,
          ),
        ),
      ),
      loading: () => Center(
        child: Container(
          child: CircularProgressIndicator(
            color: pink,
          ),
        ),
      ),
      error: (error) => Center(
        child: Container(
          child: Text(error.toString()),
        ),
      ),
      initial: () => Center(
        child: Container(
          child: CircularProgressIndicator(
            color: pink,
          ),
        ),
      ),
      postError: (errors, error) => Container(
        child: Text(error.toString()),
      ),
      postingProfile: () => RegsiterScreensPatern(list: [
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
                        // if (newValue == false) {
                        //   activity_level = "sedentary";
                        // }
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
              validator: (value) {
                if (value!.isEmpty) {
                  _activity_levelError = "input valid value ";
                }
              },
              onEditingComplete: () {
                setState(() {
                  ref
                      .read(userInfoProvider.notifier)
                      .updateActivity_level(activityController.text);
                });
              },
            ),
            ImageWidget(
              width: MediaQuery.of(context).size.width * 0.5,
              imageUrl: 'assets/images/yoga.png',
            ),
            TextButton(
              onPressed: () {
                FocusScope.of(context).unfocus();
                if (!ref.read(userInfoProvider).isLoading) {
                  ref.read(userInfoProvider.notifier).postProfile();
                }

                // bool isError = false;
                // if (activity_level != null) {
                //   isError = true;
                //   setState(() {
                //     _activity_levelError = 'required_field';
                //   });
                // }

                // if (!isError) {
                //   if (!ref.read(userInfoProvider).isLoading) {
                //     ref.read(userInfoProvider.notifier).postProfile();
                //   }
                // }
              },
              child: Text(
                " Submit",
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: primaryColor,
                        fontSize: 15)),
                textAlign: TextAlign.start,
              ),
            ),
          ],
        )
      ]),
      postedProfile: (profile) => RegsiterScreensPatern(list: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const screenHeader(
              title: "profile alredy exist you can make updates  ",
              size: 20,
            ),
            const SizedBox(
              height: 10,
            ),
            RegistrationQuestions(
              text: "profile already ceated you update it ",
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
                        // if (newValue == false) {
                        //   activity_level = "sedentary";
                        // }
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
              validator: (value) {
                if (value!.isEmpty) {
                  _activity_levelError = "input valid value ";
                }
              },
              onEditingComplete: () {
                setState(() {
                  ref
                      .read(userInfoProvider.notifier)
                      .updateActivity_level(activityController.text);
                });
              },
            ),
            ImageWidget(
              width: MediaQuery.of(context).size.width * 0.5,
              imageUrl: 'assets/images/yoga.png',
            ),
            TextButton(
              onPressed: () {
                FocusScope.of(context).unfocus();
                if (!ref.read(userInfoProvider).isLoading) {
                  ref.read(userInfoProvider.notifier).postProfile();
                }

                // bool isError = false;
                // if (activity_level != null) {
                //   isError = true;
                //   setState(() {
                //     _activity_levelError = 'required_field';
                //   });
                // }

                // if (!isError) {
                //   if (!ref.read(userInfoProvider).isLoading) {
                //     ref.read(userInfoProvider.notifier).postProfile();
                //   }
                // }
              },
              child: Text(
                " Submit",
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: primaryColor,
                        fontSize: 15)),
                textAlign: TextAlign.start,
              ),
            ),
          ],
        )
      ]),
    );
  }
}
