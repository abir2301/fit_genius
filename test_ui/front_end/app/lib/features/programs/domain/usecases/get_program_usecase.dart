import 'package:app/core/error/failure.dart';
import 'package:app/features/programs/domain/models/program/program.dart';
import 'package:dartz/dartz.dart';

import '../repositories/program_repository.dart';

class GetProgramUsecase {
  late ProgramRepository programRepository;
  GetProgramUsecase({required this.programRepository});
  Future<Either<Program, Failure>> call() async {
    return await programRepository.getProgram();
  }
}
