import 'package:app/features/programs/data/data_sources/remote_data_source.dart';
import 'package:app/features/programs/domain/models/program/program.dart';
import 'package:app/features/programs/domain/models/user_program/user_program.dart';
import 'package:app/core/error/failure.dart';
import 'package:app/features/programs/domain/repositories/program_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/network/network_info.dart';

class ProgramRepositoryImp implements ProgramRepository {
  late NetworkInfo networkInfo;
  late ProgramRemoteDataSource programRemoteDataSource;
  ProgramRepositoryImp(
      {required this.networkInfo, required this.programRemoteDataSource});

  @override
  Future<Either<UserPerformance, Failure>> getPerformance() async {
    if (await networkInfo.isConnected) {
      try {
        final performance = await programRemoteDataSource.getPerformance();
        return left(UserPerformance.fromJson(performance));
      } on UserProgramException {
        return right(USerProgramFailure());
      } on ServerException {
        return Right(ServerFailure());
      }
    } else {
      return Right(OfflineFailure());
    }
  }

  @override
  Future<Either<Program, Failure>> getProgram() async {
    if (await networkInfo.isConnected) {
      try {
        final performance = await programRemoteDataSource.getProgram();
        return left(Program.fromJson(performance));
      } on ProgramException {
        return right(ProgramFailure());
      } on ServerException {
        return Right(ServerFailure());
      }
    } else {
      return Right(OfflineFailure());
    }
  }
}
