import 'dart:async';
import 'package:intl/intl.dart'; // Import the intl package

import 'package:app/core/app_theme.dart';
import 'package:flutter/material.dart';

import '../../../../core/data.dart';
import '../../../auth/presentation/components/label_checkedbox.dart';
import '../components/cirrcul_progressor.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isRadioSelected = false;
  int selected_index = 0;
  List data = [
    {"titre": "protein", "result": 100.0, "curent": 10.0},
    {"titre": "fats", "result": 100.0, "curent": 10.0},
    {"titre": "carbs", "result": 100.0, "curent": 10.0},
    {"titre": "fibers", "result": 100.0, "curent": 10.0}
  ];
  String _todayDate = '';
  List meals = Data.mealsPlan['meals'] as List;

  @override
  void initState() {
    super.initState();
    _updateTodayDate();
  }

  void _updateTodayDate() {
    setState(() {
      _todayDate = DateFormat.yMd().format(DateTime.now());
    });

    Timer(Duration(seconds: 1), _updateTodayDate);
  }

  @override
  Widget build(BuildContext context) {
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
                      height: 150,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  top:
                                      MediaQuery.of(context).size.height * 0.1),
                              child: Column(
                                children: [
                                  Text(
                                    "120",
                                    style: ScreenTextIndication(),
                                  ),
                                  Text(
                                    "Consumed ",
                                    style: ScreenTextIndication(),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                                child: CircularProgressor(
                              radius: 40,
                              currentProgress: 10,
                              result: 100,
                            )),
                            Padding(
                              padding: EdgeInsets.only(
                                  top:
                                      MediaQuery.of(context).size.height * 0.1),
                              child: Column(
                                children: [
                                  Text(
                                    "10",
                                    style: ScreenTextIndication(),
                                  ),
                                  Text(
                                    "Expended ",
                                    style: ScreenTextIndication(),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
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
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.width * 0.5,
                              child: GridView.builder(
                                  itemCount: data.length,
                                  physics: const NeverScrollableScrollPhysics(),
                                  padding: const EdgeInsets.only(
                                    left: 5,
                                    right: 1,
                                  ),
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 4,
                                    childAspectRatio: 0.8,
                                  ),
                                  itemBuilder: (context, index) {
                                    return Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CircularProgressor(
                                          radius: 25,
                                          currentProgress: data[index]
                                              ['curent'],
                                          result: data[index]['result'],
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          data[index]['titre'],
                                          style: ScreenTextIndication(size: 15),
                                        )
                                      ],
                                    );
                                  }),
                            )
                          ],
                        ),
                      ]),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 70),
                    child: Container(
                      height: 40,
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
                            _todayDate,
                            style: TextStyle(
                                color: Color(0xffFFFFFF), fontSize: 15),
                          ),
                        ],
                      )),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 200,
                        child: ListView.builder(
                            itemCount: meals.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 50,
                                  width: 200,
                                  decoration: BoxDecoration(
                                      color: Color(0xffFFFFFF),
                                      borderRadius: BorderRadius.circular(15)),
                                  child: LabeledCheckbox(
                                      label: "meal : " +
                                          meals[index]['meal_id'].toString() +
                                          "  0/ ${meals[index]['calories'].toString()}",
                                      value: false,
                                      onChanged: (bool result) {
                                        if (_isRadioSelected) {
                                          setState(() {
                                            // userAllergies[allergies[index]] = result;
                                            // Data.userAllergies = userAllergies;
                                          });
                                        }
                                      }),
                                ),
                              );
                            }),
                      ),
                    ),
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
