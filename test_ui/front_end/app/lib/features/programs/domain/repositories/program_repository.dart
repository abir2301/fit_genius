import 'package:app/features/programs/domain/models/program/program.dart';
import 'package:app/features/programs/domain/models/user_program/user_program.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';

abstract class ProgramRepository {
  Future<Either<Program, Failure>> getProgram();
  Future<Either<UserPerformance, Failure>> getPerformance();
}
