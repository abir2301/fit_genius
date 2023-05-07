import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/error/failure.dart';
import '../../domain/models/user_program/user_program.dart';
import '../../domain/usecases/get_performance_usecase.dart';
import '../states/program_state.dart';

class PerformanceViewModel extends StateNotifier<ProgramState> {
  late GetPerformanceUsecase getPerformanceUsecase;

  UserPerformance? userPerformance;

  int nbWeek = 0;

  PerformanceViewModel({required this.getPerformanceUsecase})
      : super(const ProgramState.initial()) {}

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
}
