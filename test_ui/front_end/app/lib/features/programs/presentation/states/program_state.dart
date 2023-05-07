import 'package:app/features/programs/domain/models/program/program.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/models/user_program/user_program.dart';
part 'program_state.freezed.dart';

extension DetectLoadingState on ProgramState {
  bool get isLoading =>
      this is _ProgramStateLoading ||
      this is _ProgramStateGettingProgram ||
      this is _ProgramStateGettingPerformance;
}

@freezed
class ProgramState with _$ProgramState {
  const factory ProgramState.initial() = _ProgramInitial;
  const factory ProgramState.loading() = _ProgramStateLoading;
  const factory ProgramState.gettingProgram() = _ProgramStateGettingProgram;
  const factory ProgramState.gettingPerformance() =
      _ProgramStateGettingPerformance;
  const factory ProgramState.loadedProgram({required Program program}) =
      _ProgramStateLoadedProgram;
  const factory ProgramState.loadedPerformance(
          {required UserPerformance userPErformance}) =
      _ProgramStateloadedPerformance;

  const factory ProgramState.loadedData(
      {required UserPerformance userPErformance,
      required Program userProgram}) = _ProgramStateloadedData;

  const factory ProgramState.programError(
      {List<String>? errors, String? error}) = _ProgramStateProgramError;
  const factory ProgramState.error({required String error}) =
      _ProgramStateError;
  const factory ProgramState.performanceError(
      {List<String>? errors, String? error}) = _ProgramStatePerformanceError;

  // user interations
  const factory ProgramState.todayProgram({required Program userProgram}) =
      _ProgramStateTodayProgram;

  const factory ProgramState.newDayProgram({required Program userProgram}) =
      _ProgramStateNewDayProgram;
  const factory ProgramState.newWeekProgram({required Program userProgram}) =
      _ProgramStateNewWeekProgram;
  const factory ProgramState.newCalcul({required Program userProgram}) =
      _ProgramStateNewCalcul;
}
