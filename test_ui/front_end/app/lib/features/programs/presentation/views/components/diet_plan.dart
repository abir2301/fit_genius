import 'package:app/features/programs/presentation/views/pages/program_screens/meals_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../core/data.dart';
import '../../../../user_informations/presentation/providers.dart';

class DietPaln extends ConsumerStatefulWidget {
  const DietPaln({super.key});

  @override
  ConsumerState<DietPaln> createState() => _DietPalnState();
}

class _DietPalnState extends ConsumerState<DietPaln> {
  // List meals = Data.mealsPlan['meals'] as List;
  List mealsImageList = [
    "coffee-cup.png",
    "tomate.png",
    "assiette.png",
    "tomate.png",
    "salade.png"
  ];
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(programProvider);
    return Container(
        height: 500,
        width: MediaQuery.of(context).size.width * 0.9,
        child: state.maybeWhen(
          orElse: () => Text("????"),
          loading: () => Text("loading"),
          todayProgram: (userProgram) => ListView.builder(
            itemCount: userProgram.meals.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MealDetailsScreens(
                              meal: userProgram.meals[index])),
                    );
                  },
                  child: Container(
                    width: 200,
                    //MediaQuery.of(context).size.width * 0.7,
                    constraints: BoxConstraints(
                      maxHeight:
                          double.infinity, // set maximum height to infinity
                    ),
                    decoration: BoxDecoration(
                        color: Color(0xffa0acd8),
                        borderRadius: BorderRadius.circular(15)),
                    // height: 100,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: SizedBox(
                              height: MediaQuery.of(context).size.width * 0.2,
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: Image.asset(
                                height: 30,
                                width: 30,
                                "assets/meals/${mealsImageList[index]}",
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.25,
                                child: Text(
                                  userProgram.meals[index].name
                                      .toString()
                                      .toUpperCase(),
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: const TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                      "${userProgram.meals[index].calories.toString()}Kcal",
                                      style: const TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                ],
                              ),
                              Positioned(
                                  top: 100,
                                  child: Icon(
                                    Iconsax.heart,
                                    color: Colors.white,
                                    size: 30,
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ));
  }
}
