import 'package:app/core/app_theme.dart';
import 'package:app/features/programs/domain/models/meal/meal.dart';
import 'package:flutter/material.dart';

class MealDetailsScreens extends StatefulWidget {
  late Meal meal;
  MealDetailsScreens({super.key, required this.meal});

  @override
  State<MealDetailsScreens> createState() => _MealDetailsScreensState();
}

class _MealDetailsScreensState extends State<MealDetailsScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: pink,
        title: const Text('Meal Details'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.meal.name + " : ",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              width: double.infinity,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildInfoCard(
                      label: 'Calories',
                      value: '${widget.meal.calories}',
                      unit: 'kcal',
                      icon: Icons.local_fire_department,
                    ),
                    _buildInfoCard(
                      label: 'Fats',
                      value: '${widget.meal.fats}',
                      unit: 'g',
                      icon: Icons.opacity,
                    ),
                    _buildInfoCard(
                      label: 'Protein',
                      value: '${widget.meal.protein}',
                      unit: 'g',
                      icon: Icons.local_dining,
                    ),
                    _buildInfoCard(
                      label: 'Carbs',
                      value: '${widget.meal.carbs}',
                      unit: 'g',
                      icon: Icons.breakfast_dining,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 24.0),
            const Text(
              'Ingredients:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            Container(
              height: MediaQuery.of(context).size.height * 0.9,
              decoration: BoxDecoration(
                  color: Color(0xffa0acd8),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: widget.meal.ingredients
                      .map((ingredient) => Padding(
                            padding: EdgeInsets.symmetric(vertical: 4.0),
                            child: Row(
                              children: [
                                Icon(Icons.circle,
                                    size: 10, color: Colors.black),
                                SizedBox(width: 8.0),
                                Text(
                                  '${ingredient.name} - ${ingredient.quantity} g',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                          ))
                      .toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildInfoCard({
  required String label,
  required String value,
  required String unit,
  required IconData icon,
}) {
  return Card(
      color: Color(0xffa0acd8),
      elevation: 2.0,
      child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(icon, size: 24),
                  SizedBox(width: 8.0),
                  Text(
                    label,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 8.0),
              Text(
                '$value $unit',
                style: TextStyle(fontSize: 16),
              ),
            ],
          )));
}
