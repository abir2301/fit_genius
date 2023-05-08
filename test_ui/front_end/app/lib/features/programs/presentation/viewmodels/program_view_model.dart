import 'package:app/core/cache/cache_healper.dart';
import 'package:app/features/programs/domain/models/meal/meal.dart';
import 'package:app/features/programs/domain/models/program/program.dart';
import 'package:app/features/programs/domain/models/user_program/user_program.dart';
import 'package:app/features/programs/domain/usecases/get_performance_usecase.dart';
import 'package:app/features/programs/domain/usecases/get_program_usecase.dart';
import 'package:app/features/programs/presentation/states/program_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../../../core/error/enums.dart';
import '../../../../core/error/failure.dart';
import '../../domain/usecases/get_program_usecase.dart';

import 'package:flutter/foundation.dart';

class ProgramViewModel extends StateNotifier<ProgramState> {
  late GetProgramUsecase getProgramUsecase;

  Program? program;

  late List<Meal> todayMeals = [];
  int consumedProtein = 0;
  int consumedCarbs = 0;
  int consumedFats = 0;
  int consumedFibers = 0;
  int consumedCalories = 0;
  int expendedCalories = 0;
  int protein = 0;

  int fats = 0;
  int carbs = 0;
  int calories = 0;
  int fibers = 0;
  // List data = [
  //   {"titre": "protein", "result": 100.0, "curent": 10.0},
  //   {"titre": "fats", "result": 100.0, "curent": 10.0},
  //   {"titre": "carbs", "result": 100.0, "curent": 10.0},
  //   {"titre": "fibers", "result": 100.0, "curent": 10.0}
  // ];
  ProgramViewModel({
    required this.getProgramUsecase,
  }) : super(const ProgramState.initial());

  Future<void> init() async {
    int today = int.parse(DateFormat('yyyyMMdd').format(DateTime.now()));

    if (CacheHelper.containsKey("date")) {
      print("cache date " + CacheHelper.getInt("date").toString());
      if (CacheHelper.getInt("date") == today) {
        print("today program ");
        await getProgram();
        state = ProgramState.todayProgram(userProgram: program!);
        calculnutrition();
      } else if (CacheHelper.getInt("week") - today < -7) {
        await getProgram();
        iniDate();
        initWeek();
        initBools();
        calculnutrition();
        print("new week");
        state = ProgramState.todayProgram(userProgram: program!);
      } else {
        await getProgram();
        initBools();
        iniDate();
        calculnutrition();
        print("new day program ");
        state = ProgramState.todayProgram(userProgram: program!);
      }
    } else {
      state = const ProgramState.gettingProgram();
      await getProgram();
      iniDate();
      initBools();
      initWeek();
      calculnutrition();
      state = ProgramState.todayProgram(userProgram: program!);
    }
  }

// get data of now
  String getDate() {
    return DateFormat.yMd().format(DateTime.now());
  }

// initialise cache
  void initBools() {
    for (var element in program!.meals) {
      CacheHelper.setBool(element.name, false);
    }
    for (var element in program!.workouts) {
      for (var el in element.excercices) {
        CacheHelper.setBool(el.name, false);
      }
    }
  }

  void iniDate() {
    CacheHelper.setInt(
        "date", int.parse(DateFormat('yyyyMMdd').format(DateTime.now())));
  }

  void initWeek() {
    CacheHelper.setInt(
        "week", int.parse(DateFormat('yyyyMMdd').format(DateTime.now())));
  }

// usecase
  Future<void> getProgram() async {
    state = ProgramState.gettingProgram();

    final either = await getProgramUsecase();
    either.fold((data) {
      program = data;
      state = ProgramState.loadedProgram(program: data);
    }, (failure) {
      if (failure is OfflineFailure) {
        state = const ProgramState.error(error: 'no_internet');
      } else if (failure is ServerFailure) {
        state = const ProgramState.error(error: ' server went wrong ');
      } else if (failure is UnauthenticatedFailure) {
        state = const ProgramState.error(error: 'went_wrong_register_again');
      } else if (failure is ProgramFailure) {
        state = ProgramState.programError(
            error: getUserMessageFromUserProgramError(
                failure.error as UserProgramError));
      }
    });
    return null;
  }

  //get food credentials :
  int getConsumedCalories() {
    print("consumed = ");
    print(consumedCalories);

    return consumedCalories;
  }

  int getExpendedCalories() {
    print(expendedCalories);

    return expendedCalories;
  }

  /// addd food

  void selectMeal(String name) {
    state = ProgramState.todayProgram(userProgram: program!);
    CacheHelper.setBool(name, true);
    increment(name);

    print("fn increment  ");
    print(state);
    print(
        "${consumedCalories} cal ${consumedCarbs} carbs + ${consumedFats} fats + ${consumedProtein}");
  }

  void unselectMeal(String name) {
    state = ProgramState.todayProgram(userProgram: program!);

    CacheHelper.setBool(name, false);
    decrement(name);

    print("print state ");
    print(state);
    print("fn decrement  ");
    print(
        "${consumedCalories} cal ${consumedCarbs} carbs + ${consumedFats} fats + ${consumedProtein}");
  }

  void decrement(meal) {
    for (var i in program!.meals) {
      if (i.name == meal) {
        consumedFats -= i.fats;
        consumedCalories -= i.calories;
        consumedProtein -= i.protein;
        consumedCarbs -= i.carbs;
      }
    }
  }

  void increment(meal) {
    for (var i in program!.meals) {
      if (i.name == meal) {
        consumedFats += i.fats;
        consumedProtein += i.protein;
        consumedCalories += i.calories;
        consumedCarbs += i.carbs;
      }
    }
  }

  void calculnutrition() {
    fats = 0;
    carbs = 0;
    protein = 0;
    calories = 0;
    for (int i = 0; i < program!.meals.length; i++) {
      fats += program!.meals[i].fats;
      carbs += program!.meals[i].carbs;
      calories += program!.meals[i].calories;
      protein += program!.meals[i].protein;
    }
    print("calcul ");
  }

  void updateProgressData() {
    state = ProgramState.newCalcul(userProgram: program!);
  }
}
