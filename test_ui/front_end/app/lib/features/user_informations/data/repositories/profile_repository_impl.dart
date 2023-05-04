import 'package:app/core/error/enums.dart';
import 'package:app/core/error/exceptions.dart';
import 'package:app/features/user_informations/data/datasources/remote_data_source.dart';
import 'package:app/features/user_informations/domain/models/hp.dart';
import 'package:app/features/user_informations/domain/models/profile.dart';
import 'package:app/core/error/failure.dart';
import 'package:app/features/user_informations/domain/repositories/profile_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

import '../../../../core/network/network_info.dart';

class ProfileReposotoryImpl extends ProfileRepository {
  late NetworkInfo networkInfo;
  late UserInfoRemoteDataSource userInfoRemoteDataSource;
  ProfileReposotoryImpl({
    required this.networkInfo,
    required this.userInfoRemoteDataSource,
  });
  @override
  Future<Either<Profile, Failure>> getProfile() async {
    if (await networkInfo.isConnected) {
      try {
        final mapProfile = await userInfoRemoteDataSource.getProfile();

        return Left(Profile.fromJson(mapProfile));
      } on ServerException {
        return Right(ServerFailure());
      }
    } else {
      return Right(OfflineFailure());
    }
  }

  @override
  Future<Either<Profile, Failure>> postProfile(int age, String weight,
      String height, String goal, String activity_level, String gender) async {
    if (await networkInfo.isConnected) {
      try {
        final mapProfile = await userInfoRemoteDataSource.postProfile(
            age, weight, height, goal, activity_level, gender);

        return Left(Profile.fromJson(mapProfile));
      } on UserInfoException catch (e) {
        return right(UserInfoFailure(
            errors: e.messages != null
                ? mapProfileErrorsFromMessages(e.messages!)
                : null));
      } on UnauthenticatedException {
        return Right(UnauthenticatedFailure());
      } on ServerException {
        return Right(ServerFailure());
      }
    } else {
      return Right(OfflineFailure());
    }
  }

  @override
  Future<Either<Unit, Failure>> updateProfile(int age, String weight,
      String height, String goal, String activity_level, String gender) async {
    if (await networkInfo.isConnected) {
      try {
        final result = await userInfoRemoteDataSource.putProfile(
            age, weight, height, goal, activity_level, gender);

        return Left(result as Unit);
      } on UserInfoException catch (e) {
        return right(UserInfoFailure(
            errors: e.messages != null
                ? mapProfileErrorsFromMessages(e.messages!)
                : null));
      } on ServerException {
        return Right(ServerFailure());
      }
    } else {
      return Right(OfflineFailure());
    }
  }

  @override
  Future<Either<Hps, Failure>> getHps(String type) {
    
    throw UnimplementedError();
  }

  @override
  Future<Either<Hps, Failure>> postHp(String name) {
   
    throw UnimplementedError();
  }

  @override
  Future<Either<Hps, Failure>> removeHp(String name) {
   
    throw UnimplementedError();
  }
}
