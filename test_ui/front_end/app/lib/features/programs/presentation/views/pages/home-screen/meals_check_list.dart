import 'package:app/core/cache/cache_healper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../../core/app_theme.dart';
import '../../../../../../core/data.dart';
import '../../../../../user_informations/presentation/providers.dart';
import '../../../../domain/models/program/program.dart';

class MealsCkeckList extends ConsumerStatefulWidget {
  const MealsCkeckList({super.key});

  @override
  ConsumerState<MealsCkeckList> createState() => _MealsCkeckListState();
}

class _MealsCkeckListState extends ConsumerState<MealsCkeckList> {
  List meals = Data.mealsPlan['meals'] as List;

  @override
  Widget build(BuildContext context) {
    bool _isRadioSelected = false;
    final state = ref.watch(programProvider);
    return state.maybeWhen(
        orElse: () => const Center(child: Text("something went wrong ")),
        initial: () => Center(
              child: Container(
                height: 100,
                width: 100,
                child: const CircularProgressIndicator(
                  color: pink,
                  strokeWidth: 10,
                ),
              ),
            ),
        newCalcul: (program) => Container(
              height: 200,
              child: ListView.builder(
                  itemCount: program.meals.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Color(0xffb2bee8),
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 8),
                          child: MealCheck(
                              label: program.meals[index].name +
                                  "  :   ${program.meals[index].calories.toString()} KCL",
                              value: CacheHelper.getBool(
                                  program.meals[index].name),
                              onChanged: (bool result) {
                                setState(() {
                                  if (result)
                                    ref
                                        .read(programProvider.notifier)
                                        .selectMeal(program.meals[index].name);
                                  else {
                                    ref
                                        .read(programProvider.notifier)
                                        .unselectMeal(
                                            program.meals[index].name);
                                  }
                                });
                              }),
                        ),
                      ),
                    );
                  }),
            ),
        todayProgram: (program) => Container(
              height: 200,
              child: ListView.builder(
                  itemCount: program.meals.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Color(0xffb2bee8),
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 8),
                          child: MealCheck(
                              label: program.meals[index].name +
                                  "  :   ${program.meals[index].calories.toString()} KCL",
                              value: CacheHelper.getBool(
                                  program.meals[index].name),
                              onChanged: (bool result) {
                                setState(() {
                                  if (result)
                                    ref
                                        .read(programProvider.notifier)
                                        .selectMeal(program.meals[index].name);
                                  else {
                                    ref
                                        .read(programProvider.notifier)
                                        .unselectMeal(
                                            program.meals[index].name);
                                  }
                                });
                              }),
                        ),
                      ),
                    );
                  }),
            ));
  }
}

class MealCheck extends StatelessWidget {
  const MealCheck({
    super.key,
    required this.label,
    required this.value,
    required this.onChanged,
  });

  final String label;

  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged(!value);
      },
      child: Row(
        verticalDirection: VerticalDirection.up,
        children: <Widget>[
          Expanded(
              child: Text(
            label,
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
              color: blackColor,
              fontWeight: FontWeight.w500,
              fontSize: 15,
            )),
          )),
          Checkbox(
            activeColor: pink,
            value: value,
            onChanged: (bool? newValue) {
              onChanged(newValue!);
            },
          ),
        ],
      ),
    );
  }
}
