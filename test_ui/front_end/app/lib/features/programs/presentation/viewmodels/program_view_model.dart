import 'package:app/core/cache/cache_healper.dart';
import 'package:app/features/programs/domain/models/meal/meal.dart';
import 'package:app/features/programs/domain/models/program/program.dart';
import 'package:app/features/programs/domain/models/user_program/user_program.dart';
import 'package:app/features/programs/domain/usecases/get_performance_usecase.dart';
import 'package:app/features/programs/domain/usecases/get_program_usecase.dart';
import 'package:app/features/programs/presentation/states/program_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../../core/error/enums.dart';
import '../../../../core/error/failure.dart';
import '../../domain/usecases/get_program_usecase.dart';

class ProgramViewModel extends StateNotifier<ProgramState> {
  late GetProgramUsecase getProgramUsecase;
  late GetPerformanceUsecase getPerformanceUsecase;
  Program? program;

  UserPerformance? userPerformance;

  late List<Meal> todayMeals = [];
  int consumedProtein = 0;
  int consumedCarbs = 0;
  int consumedFats = 0;
  int consumedFibers = 0;
  int consumedCalories = 0;
  int expendedCalories = 0;
  int protein = 0;
  int nbWeek = 0;
  int fats = 0;
  int carbs = 0;
  int calories = 0;
  int fibers = 0;
  List data = [
    {"titre": "protein", "result": 100.0, "curent": 10.0},
    {"titre": "fats", "result": 100.0, "curent": 10.0},
    {"titre": "carbs", "result": 100.0, "curent": 10.0},
    {"titre": "fibers", "result": 100.0, "curent": 10.0}
  ];
  ProgramViewModel(
      {required this.getProgramUsecase, required this.getPerformanceUsecase})
      : super(const ProgramState.initial()) {
    // init();

    // calculFoodCalories();
    // calculFoodCarbs();
    // calculFoodProtein();
    // calculFoodFats();

    // getPeformance();
  }

  Future<void> init() async {
    int today = int.parse(DateFormat('yyyyMMdd').format(DateTime.now()));
    state = const ProgramState.initial();
    if (CacheHelper.containsKey("date")) {
      if (CacheHelper.getInt("date") == today) {
        print("today ");
        await getProgram();
        print(program);
        print("object");
        state = ProgramState.todayProgram(userProgram: program!);
      } else if (CacheHelper.getInt("date") - today < -7) {
        await getProgram();
        iniDate();
        initBools();
        print("new week");
        // state = ProgramState.newWeekProgram(userProgram: program!);
        state = ProgramState.todayProgram(userProgram: program!);
      } else {
        await getProgram();
        initBools();
        print("new day");
        //  state = ProgramState.newDayProgram(userProgram: program!);
        state = ProgramState.todayProgram(userProgram: program!);
      }
    } else {
      state = const ProgramState.gettingProgram();

      await getProgram();
      iniDate();
      initBools();
      state = ProgramState.todayProgram(userProgram: program!);
    }

    calculFoodCalories();
    calculFoodCarbs();
    calculFoodProtein();
    calculFoodFats();

    // await getPeformance();
    // nbWeek = userPerformance!.data.length;
    // print(nbWeek);
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
        state = const ProgramState.error(error: 'went wrong ');
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

  Future<void> getPeformance() async {
    state = ProgramState.gettingPerformance();
    final either = await getPerformanceUsecase();
    either.fold((performance) {
      userPerformance = performance;
      // nbWeek = performance.data.length;
      state = ProgramState.loadedPerformance(userPErformance: performance);
      print("view model performace ");
      print(performance);
    }, (failure) {
      if (failure is OfflineFailure) {
        state = const ProgramState.error(error: 'no_internet');
      } else if (failure is ServerFailure) {
        state = const ProgramState.error(error: 'went wrong ');
      } else if (failure is UnauthenticatedFailure) {
        state = const ProgramState.error(error: 'went_wrong_register_again');
      }
      // else  {
      //   state = ProgramState.performanceError(
      //       error: getUSerMessageFr(
      //           failure.error as UserProgramError));
      // }
    });
  }

// calcul  total food credential
  void calculFoodCarbs() {
    for (int i = 0; i < program!.meals.length; i++) {
      carbs += carbs + program!.meals[i].carbs;
    }
    print("carbs" + carbs.toString());
  }

  void calculFoodCalories() {
    for (int i = 0; i < program!.meals.length; i++) {
      calories += calories + program!.meals[i].calories;
    }
    print("calories  " + calories.toString());
  }

  void calculFoodProtein() {
    for (int i = 0; i < program!.meals.length; i++) {
      protein += protein + program!.meals[i].protein;
    }
  }

  void calculFoodFats() {
    for (int i = 0; i < program!.meals.length; i++) {
      fats += fats + program!.meals[i].fats;
    }
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
  void addProtein(String meal) {
    for (var i in program!.meals) {
      if (i.name == meal) {
        consumedProtein += i.protein;
      }
    }
  }

  void addCarbs(String meal) {
    for (var i in program!.meals) {
      if (i.name == meal) {
        consumedCarbs += i.carbs;
      }
    }
  }

  void addCalories(String meal) {
    for (var i in program!.meals) {
      if (i.name == meal) {
        consumedCalories += i.calories;
      }
    }
  }

  void addFats(String meal) {
    for (var i in program!.meals) {
      if (i.name == meal) {
        consumedFats += i.fats;
      }
    }
  }

  void selectMeal(String name) {
    CacheHelper.setBool(name, true);
    addCalories(name);
    addCarbs(name);
    addFats(name);
    addFats(name);
    print("fn consumed calories ");
    print(consumedCalories);
    state = ProgramState.newCalcul(userProgram: program!);
  }

  /// sustration  food
  void removeProtein(String meal) {
    for (var i in program!.meals) {
      if (i.name == meal) {
        consumedProtein -= i.protein;
      }
    }
  }

  void removeCarbs(String meal) {
    for (var i in program!.meals) {
      if (i.name == meal) {
        consumedCarbs -= i.carbs;
      }
    }
  }

  void removeCalories(String meal) {
    for (var i in program!.meals) {
      if (i.name == meal) {
        consumedCalories -= i.calories;
      }
    }
  }

  void removeFats(String meal) {
    for (var i in program!.meals) {
      if (i.name == meal) {
        consumedFats -= i.fats;
      }
    }
  }
}
