import 'package:app/core/error/failure.dart';
import 'package:app/features/programs/domain/models/program/program.dart';
import 'package:app/features/programs/domain/models/user_program/user_program.dart';
import 'package:dartz/dartz.dart';

import '../repositories/program_repository.dart';

class GetPerformanceUsecase {
  late ProgramRepository programRepository;
  GetPerformanceUsecase({required this.programRepository});
  Future<Either<UserPerformance, Failure>> call() async {
    return await programRepository.getPerformance();
  }
}
