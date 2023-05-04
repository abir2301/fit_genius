import 'package:app/core/app_theme.dart';
import 'package:app/features/auth/presentation/components/input_field.dart';
import 'package:app/features/auth/presentation/components/label_radio.dart';
import 'package:app/features/auth/presentation/components/regsiter-screens_pattern.dart';
import 'package:app/features/auth/presentation/screens/initila_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../core/cache/cache_healper.dart';
import '../../../../user_informations/domain/models/profile.dart';
import '../../../../user_informations/presentation/providers.dart';
import '../../../../user_informations/presentation/viewmodel/profile_viewmodel.dart';
import '../../components/screen_header.dart';

class PrivateInfoScreen extends ConsumerStatefulWidget {
  const PrivateInfoScreen({super.key});

  @override
  ConsumerState<PrivateInfoScreen> createState() => _PrivateInfoScreenState();
}

class _PrivateInfoScreenState extends ConsumerState<PrivateInfoScreen> {
  final TextEditingController ageController =
      TextEditingController(text: 20.toString());
  final TextEditingController weightController =
      TextEditingController(text: "90");
  final TextEditingController heightController =
      TextEditingController(text: "130");
  bool _isRadioSelected = false;
  int selected_index = 0;
  List<String> itemsImage = [
    "assets/images/muscle.png",
    "assets/images/balancoire.png",
    "assets/images/body.png"
  ];
  Profile? profile;
  @override
  void initState() {
    super.initState();
    profile = ref.read(userInfoProvider.notifier).profile;
    if (profile != null) {
      ref.read(userInfoProvider.notifier).postedgProfile();
    } else {
      Future.delayed(Duration.zero,
          () => ref.read(userInfoProvider.notifier).postingProfile());
    }
  }

  @override
  Widget build(BuildContext context) {
    print(ref.watch(userInfoProvider));
    final state = ref.watch(userInfoProvider);
    print(ref.watch(userInfoProvider));

    return state.maybeWhen(
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
              textInputType: TextInputType.number,
              onEditingComplete: () {
                setState(() {
                  ref
                      .read(userInfoProvider.notifier)
                      .updateAge(ageController.text);
                  ref
                      .read<ProfileViewModel>(userInfoProvider.notifier)
                      .updateWeight(weightController.text);
                  ref
                      .read(userInfoProvider.notifier)
                      .updateHeight(heightController.text);

                  ref
                      .read(userInfoProvider.notifier)
                      .updateGender(_isRadioSelected);

                  ref
                      .read(userInfoProvider.notifier)
                      .updateGoal(selected_index);
                });
              },
            ),
            const SizedBox(
              height: 10,
            ),
            InputField(
              onchange: (String value) {
                print(value);
              },
              label: "Weight",
              hintText: "70 Kg",
              controller: weightController,
              validator: (value) {},
              textInputType: TextInputType.number,
              onEditingComplete: () {
                setState(() {
                  ref
                      .read(userInfoProvider.notifier)
                      .updateAge(ageController.text);
                  ref
                      .read<ProfileViewModel>(userInfoProvider.notifier)
                      .updateWeight(weightController.text);
                  ref
                      .read(userInfoProvider.notifier)
                      .updateHeight(heightController.text);

                  ref
                      .read(userInfoProvider.notifier)
                      .updateGender(_isRadioSelected);

                  ref
                      .read(userInfoProvider.notifier)
                      .updateGoal(selected_index);
                });
              },
            ),
            const SizedBox(
              height: 10,
            ),
            InputField(
              label: "height",
              hintText: "170 Cm",
              controller: heightController,
              validator: (value) {},
              textInputType: TextInputType.number,
              onEditingComplete: () {
                ref
                    .read(userInfoProvider.notifier)
                    .updateAge(ageController.text);
                ref
                    .read<ProfileViewModel>(userInfoProvider.notifier)
                    .updateWeight(weightController.text);
                ref
                    .read(userInfoProvider.notifier)
                    .updateHeight(heightController.text);

                ref
                    .read(userInfoProvider.notifier)
                    .updateGender(_isRadioSelected);

                ref.read(userInfoProvider.notifier).updateGoal(selected_index);
              },
            ),
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
                          _isRadioSelected = newValue;
                          ref
                              .read(userInfoProvider.notifier)
                              .updateAge(ageController.text);
                          ref
                              .read<ProfileViewModel>(userInfoProvider.notifier)
                              .updateWeight(weightController.text);
                          ref
                              .read(userInfoProvider.notifier)
                              .updateHeight(heightController.text);

                          ref
                              .read(userInfoProvider.notifier)
                              .updateGender(_isRadioSelected);

                          ref
                              .read(userInfoProvider.notifier)
                              .updateGoal(selected_index);
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
                          ref
                              .read(userInfoProvider.notifier)
                              .updateAge(ageController.text);
                          ref
                              .read<ProfileViewModel>(userInfoProvider.notifier)
                              .updateWeight(weightController.text);
                          ref
                              .read(userInfoProvider.notifier)
                              .updateHeight(heightController.text);

                          ref
                              .read(userInfoProvider.notifier)
                              .updateGender(_isRadioSelected);

                          ref
                              .read(userInfoProvider.notifier)
                              .updateGoal(selected_index);
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
                              selected_index = index;
                              ref
                                  .read(userInfoProvider.notifier)
                                  .updateAge(ageController.text);
                              ref
                                  .read<ProfileViewModel>(
                                      userInfoProvider.notifier)
                                  .updateWeight(weightController.text);
                              ref
                                  .read(userInfoProvider.notifier)
                                  .updateHeight(heightController.text);

                              ref
                                  .read(userInfoProvider.notifier)
                                  .updateGender(_isRadioSelected);

                              ref
                                  .read(userInfoProvider.notifier)
                                  .updateGoal(selected_index);
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
      ]),
      orElse: () => InitialScreen(),
      postedProfile: (profile) => RegsiterScreensPatern(list: [
        // Column(
        //   children: [
        //     const screenHeader(title: "Profile", size: 30),
        //     const SizedBox(
        //       height: 10,
        //     ),
        //     InputField(
        //       label: "Age",
        //       hintText: profile.age.toString(),
        //       controller: ageController,
        //       validator: (value) {},
        //       textInputType: TextInputType.number,
        //       onEditingComplete: () {
        //         setState(() {});
        //       },
        //     ),
        //     const SizedBox(
        //       height: 10,
        //     ),
        //     InputField(
        //       onchange: (String value) {
        //         print(value);
        //       },
        //       label: "Weight",
        //       hintText: "70 Kg",
        //       controller: weightController,
        //       validator: (value) {},
        //       textInputType: TextInputType.number,
        //       onEditingComplete: () {},
        //     ),
        //     const SizedBox(
        //       height: 10,
        //     ),
        //     InputField(
        //       label: "height",
        //       hintText: "170 Cm",
        //       controller: heightController,
        //       validator: (value) {},
        //       textInputType: TextInputType.number,
        //       onEditingComplete: () {},
        //     ),
        //     const SizedBox(
        //       height: 10,
        //     ),
        //     Container(
        //       child: Center(
        //         child: Row(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: [
        //             LabelRadio(
        //               label: "male",
        //               padding: const EdgeInsets.symmetric(horizontal: 5),
        //               groupValue: _isRadioSelected,
        //               value: true,
        //               onChanged: (bool newValue) {
        //                 setState(() {
        //                   print("new value on change = $newValue");
        //                   _isRadioSelected = newValue;
        //                 });
        //               },
        //             ),
        //             LabelRadio(
        //               label: "female",
        //               padding: const EdgeInsets.symmetric(horizontal: 5.0),
        //               groupValue: _isRadioSelected,
        //               value: false,
        //               onChanged: (bool newValue) {
        //                 setState(() {
        //                   _isRadioSelected = newValue;
        //                 });
        //               },
        //             )
        //           ],
        //         ),
        //       ),
        //     ),
        //     const SizedBox(
        //       height: 20,
        //     ),
        //     Text(
        //       "choose your Goal",
        //       style: screenHeaderStyle(size: 20),
        //     ),
        //     Container(
        //       height: 200,
        //       child: Center(
        //         child: GridView.count(
        //           shrinkWrap: true,
        //           scrollDirection: Axis.horizontal,
        //           crossAxisCount: 2,
        //           children: List.generate(itemsImage.length, (index) {
        //             return Padding(
        //               padding: const EdgeInsets.all(8.0),
        //               child: Container(
        //                 margin: EdgeInsets.all(5),
        //                 decoration: BoxDecoration(
        //                     color: selected_index == index ? hoverColor : null,
        //                     borderRadius: BorderRadius.circular(15)),
        //                 width: MediaQuery.of(context).size.width * 0.3,
        //                 child: InkWell(
        //                   child: Image.asset(itemsImage.elementAt(index)),
        //                   onTap: () => {
        //                     setState(() {
        //                       print("new value on change = $selected_index");
        //                       selected_index = index;
        //                     })
        //                   },
        //                 ),
        //               ),
        //             );
        //           }),
        //         ),
        //       ),
        //     )
        //   ],
        // )
        Container(
          child: Text(profile.age.toString()),
        )
      ]),
    );
  }
}
