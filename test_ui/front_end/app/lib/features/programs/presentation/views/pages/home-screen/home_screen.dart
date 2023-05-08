import 'dart:async';
import 'package:app/core/cache/cache_healper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart'; // Import the intl package

import 'package:app/core/app_theme.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/data.dart';
import '../../../../../user_informations/presentation/providers.dart';
import '../../components/cirrcul_progressor.dart';
import 'cal_progressor.dart';
import 'meals_check_list.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  bool _isRadioSelected = false;
  int selected_index = 0;

  String _todayDate = '';
  List meals = Data.mealsPlan['meals'] as List;

  void initState() {
    super.initState();
    print("inistate");
    Future<void>.delayed(Duration.zero, () {
      ref.read(programProvider.notifier).init();
      print(ref.read(programProvider.notifier).consumedProtein.toDouble());
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(programProvider);
    List data = [
      {
        "titre": "protein",
        "result": ref.read(programProvider.notifier).protein.toDouble(),
        "curent": ref.read(programProvider.notifier).consumedProtein.toDouble()
      },
      {
        "titre": "fats",
        "result": ref.read(programProvider.notifier).fats.toDouble(),
        "curent": ref.read(programProvider.notifier).consumedFats.toDouble()
      },
      {
        "titre": "carbs",
        "result": ref.read(programProvider.notifier).carbs.toDouble(),
        "curent": ref.read(programProvider.notifier).consumedCarbs.toDouble()
      },
    ];
    var length;
    return Scaffold(
      backgroundColor: bgcolor,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.85,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.0),
                color: Color(0xffcdd6f1),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  // today data
                  Padding(
                    padding: const EdgeInsets.only(right: 70, left: 70),
                    child: Container(
                      height: 40,
                      constraints: BoxConstraints(maxWidth: double.maxFinite),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xff7286D3),
                      ),
                      child: Center(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.calendar_month,
                            color: Color(0xffFFFFFF),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            ref.read(programProvider.notifier).getDate(),
                            style: TextStyle(
                                color: Color(0xffFFFFFF), fontSize: 15),
                          ),
                        ],
                      )),
                    ),
                  ),
                  //cal progressor

                  const SizedBox(
                      height: 150,
                      child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: CaloryProgressor())),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xffb2bee8),
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      height: 180,
                      child: ListView(children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Micronutrients",
                                style: ScreenTextIndication(size: 15),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                                height: MediaQuery.of(context).size.width * 0.4,
                                child: state.maybeWhen(
                                  orElse: () => const Center(
                                      child: Text('something went wrong ')),
                                  loading: () => Center(
                                    child: Container(
                                      child: CircularProgressIndicator(
                                        color: pink,
                                      ),
                                    ),
                                  ),
                                  todayProgram: (userProgram) =>
                                      // GridView.builder(
                                      //     itemCount: 3,
                                      //     physics:
                                      //         const NeverScrollableScrollPhysics(),
                                      //     padding: const EdgeInsets.only(
                                      //       left: 5,
                                      //       right: 1,
                                      //     ),
                                      //     gridDelegate:
                                      //         const SliverGridDelegateWithFixedCrossAxisCount(
                                      //       crossAxisCount: 4,
                                      //       childAspectRatio: 0.8,
                                      //     ),
                                      //     itemBuilder: (context, index) {
                                      //       return Align(
                                      //         alignment: Alignment.center,
                                      //         child: Column(
                                      //           mainAxisAlignment:
                                      //               MainAxisAlignment.center,
                                      //           children: [
                                      //             CircularProgressor(
                                      //               radius: 30,
                                      //               currentProgress: data[index]
                                      //                   ['curent'],
                                      //               result: data[index]
                                      //                   ['result'],
                                      //             ),
                                      //             SizedBox(
                                      //               height: 30,
                                      //             ),
                                      //             Text(
                                      //               data[index]['titre'],
                                      //               style: ScreenTextIndication(
                                      //                   size: 15),
                                      //             )
                                      //           ],
                                      //         ),
                                      //       );
                                      //     }),

                                      Center(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Align(
                                          alignment: Alignment.center,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CircularProgressor(
                                                radius: 30,
                                                currentProgress: data[0]
                                                    ['curent'],
                                                result: data[0]['result'],
                                              ),
                                              SizedBox(
                                                height: 30,
                                              ),
                                              Text(
                                                "protein",
                                                style: ScreenTextIndication(
                                                    size: 15),
                                              )
                                            ],
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CircularProgressor(
                                                radius: 30,
                                                currentProgress: data[1]
                                                    ['curent'],
                                                result: data[1]['result'],
                                              ),
                                              SizedBox(
                                                height: 30,
                                              ),
                                              Text(
                                                "fats",
                                                style: ScreenTextIndication(
                                                    size: 15),
                                              )
                                            ],
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CircularProgressor(
                                                radius: 30,
                                                currentProgress: data[2]
                                                    ['curent'],
                                                result: data[2]['result'],
                                              ),
                                              SizedBox(
                                                height: 30,
                                              ),
                                              Text(
                                                "cabs",
                                                style: ScreenTextIndication(
                                                    size: 15),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  // newCalcul: (userProgram) => GridView.builder(
                                  //     itemCount: 3,
                                  //     physics:
                                  //         const NeverScrollableScrollPhysics(),
                                  //     padding: const EdgeInsets.only(
                                  //       left: 5,
                                  //       right: 1,
                                  //     ),
                                  //     gridDelegate:
                                  //         const SliverGridDelegateWithFixedCrossAxisCount(
                                  //       crossAxisCount: 4,
                                  //       childAspectRatio: 0.8,
                                  //     ),
                                  //     itemBuilder: (context, index) {
                                  //       return Align(
                                  //         alignment: Alignment.center,
                                  //         child: Column(
                                  //           mainAxisAlignment:
                                  //               MainAxisAlignment.center,
                                  //           children: [
                                  //             CircularProgressor(
                                  //               radius: 30,
                                  //               currentProgress: data[index]
                                  //                   ['curent'],
                                  //               result: data[index]['result'],
                                  //             ),
                                  //             SizedBox(
                                  //               height: 30,
                                  //             ),
                                  //             Text(
                                  //               data[index]['titre'],
                                  //               style: ScreenTextIndication(
                                  //                   size: 15),
                                  //             )
                                  //           ],
                                  //         ),
                                  //       );
                                  //     }),
                                ))
                          ],
                        ),
                      ]),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Expanded(
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: MealsCkeckList()),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
