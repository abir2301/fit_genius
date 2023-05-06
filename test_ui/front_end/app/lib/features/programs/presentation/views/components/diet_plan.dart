import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../core/data.dart';

class DietPaln extends StatefulWidget {
  const DietPaln({super.key});

  @override
  State<DietPaln> createState() => _DietPalnState();
}

class _DietPalnState extends State<DietPaln> {
  List meals = Data.mealsPlan['meals'] as List;
  List mealsImageList = [
    "coffee-cup.png",
    "tomate.png",
    "assiette.png",
    "tomate.png",
    "salade.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: MediaQuery.of(context).size.width * 0.9,
      child: ListView.builder(
        itemCount: meals.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {},
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
                              "meal : " +
                                  meals[index]['meal_id']
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
                              Text("${meals[index]['calories'].toString()}Kcal",
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
