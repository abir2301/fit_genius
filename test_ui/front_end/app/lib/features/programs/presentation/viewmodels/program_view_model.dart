import 'package:app/features/programs/domain/models/meal/meal.dart';
import 'package:app/features/programs/domain/models/program/program.dart';
import 'package:app/features/programs/domain/models/user_program/user_program.dart';
import 'package:app/features/programs/domain/usecases/get_performance_usecase.dart';
import 'package:app/features/programs/domain/usecases/get_program_usecase.dart';
import 'package:app/features/programs/presentation/states/program_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/error/enums.dart';
import '../../../../core/error/failure.dart';
import '../../domain/usecases/get_program_usecase.dart';

class ProgramViewModel extends StateNotifier<ProgramState> {
  late GetProgramUsecase getProgramUsecase;
  late GetPerformanceUsecase getPerformanceUsecase;
  Program? program;
  Program? todayProgram;
  UserPerformance? userPerformance;
  late UserProgram weekUserProgram;
  late List<Meal> todayMeals = [];
  int consumedProtein = 0;
  int consumedCarbs = 0;
  int consumedFats = 0;
  int consumedFibers = 0;
  int consumedCalories = 0;
  int protein = 0;
  int fats = 0;
  int carbs = 0;
  int calories = 0;
  int fibers = 0;

  ProgramViewModel(
      {required this.getProgramUsecase, required this.getPerformanceUsecase})
      : super(const ProgramState.initial()) {
    getProgram();
    // getPeformance();
  }

  void getProgram() async {
    state = ProgramState.gettingProgram();
    final either = await getProgramUsecase();
    either.fold((program) {
      program = program;
      // if (todayProgram?.copyWith()== null) {
      //   todayProgram =todayProgram!.copyWith(program);
      // }
      

      print("today meals ");
      print(todayMeals);
      state = ProgramState.loadedProgram(program: todayProgram!);
      print("view model");
      print(program);
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
  }

  void getPeformance() async {
    state = ProgramState.gettingPerformance();
    final either = await getPerformanceUsecase();
    either.fold((performance) {
      userPerformance = performance;
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
}
