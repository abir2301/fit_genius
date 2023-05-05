import 'package:app/core/error/exceptions.dart';
import 'package:app/features/user_informations/data/datasources/hp_remote_data_source.dart';
import 'package:app/features/user_informations/domain/models/hp.dart';
import 'package:app/core/error/failure.dart';
import 'package:app/features/user_informations/domain/repositories/hp_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/network/network_info.dart';

class HpRepositoryImpl extends HpRepository {
  @override
  late NetworkInfo networkInfo;
  late HpRemoteDataSource hpRemoteDataSource;
  HpRepositoryImpl(
      {required this.networkInfo, required this.hpRemoteDataSource});

  // Future<Either<Hps, Failure>> deleteHp(Hps hps) async {
  //   if (await networkInfo.isConnected) {
  //     try {
  //       final userHp = await hpRemoteDataSource.deleteHp(hps);
  //       return Left(Hps.fromJson(userHp));
  //     } on HpException {
  //       return right(HpFailure());
  //     } on ServerException {
  //       return Right(ServerFailure());
  //     }
  //   } else {
  //     return Right(OfflineFailure());
  //   }
  // }

  @override
  Future<Either<Hps, Failure>> getHps(String name) async {
    if (await networkInfo.isConnected) {
      try {
        final userHp = await hpRemoteDataSource.getHps(name);
        return Left(Hps.fromJson(userHp!));
      } on HpsException {
        return right(HpsFailure());
      } on ServerException {
        return Right(ServerFailure());
      }
    } else {
      return Right(OfflineFailure());
    }
  }

  @override
  Future<Either<Unit, Failure>> postHp(Hps hps) async {
    if (await networkInfo.isConnected) {
      try {
        final userHp = await hpRemoteDataSource.postHp(hps);
        return Left(unit);
      } on HpException {
        return right(HpFailure());
      } on ServerException {
        return Right(ServerFailure());
      }
    } else {
      return Right(OfflineFailure());
    }
  }

  // @override
  // Future<Either<Hps, Failure>> getUserHp() async  {
  //    if (await networkInfo.isConnected) {
  //     try {
  //       final userHp = await hpRemoteDataSource.getUserHp();
  //       return Left(Hps.fromJson(userHp));
  //     } on HpsException {
  //       return right(HpsFailure());
  //     } on ServerException {
  //       return Right(ServerFailure());
  //     }
  //   } else {
  //     return Right(OfflineFailure());
  //   }
  // }
}
