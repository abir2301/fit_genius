import 'package:app/core/app_theme.dart';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../core/data.dart';
import '../pages/program_screens/excercice_details_screen.dart';

class WorkoutPlan extends StatefulWidget {
  const WorkoutPlan({super.key});

  @override
  State<WorkoutPlan> createState() => _WorkoutPlanState();
}

class _WorkoutPlanState extends State<WorkoutPlan> {
  List workout = Data.WorkoutPlan['exercices'] as List;
  @override
  Widget build(BuildContext context) {
    print(workout);
    return Container(
      height: 500,
      width: MediaQuery.of(context).size.width * 0.9,
      child: ListView.builder(
        itemCount: workout.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                var excercice = Excercice(
                    id: workout[index]["exercice_id"],
                    name: workout[index]["name"],
                    image: workout[index]["image"],
                    desc: workout[index]["desc"],
                    isDone: workout[index]["isDone"],
                    duree: workout[index]["duree"]);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          ExcerciceDetails(excercice: excercice)),
                );
              },
              child: Container(
                width: 200,
                //MediaQuery.of(context).size.width * 0.7,
                constraints: BoxConstraints(
                  maxHeight: double.infinity, // set maximum height to infinity
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
                          height: MediaQuery.of(context).size.width * 0.3,
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Image.asset(
                            height: 50,
                            width: 50,
                            "assets/workout/${workout[index]["image"]}",
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.25,
                            child: Text(
                              "${workout[index]["name"].toUpperCase()}",
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
                              Text("${workout[index]["duree"]} min ",
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
    );
  }
}
