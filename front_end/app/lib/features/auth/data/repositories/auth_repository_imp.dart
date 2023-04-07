import 'package:app/core/error/exceptions.dart';
import 'package:app/features/auth/data/model/login_request.dart';
import 'package:app/features/auth/data/model/registration_request.dart';
import 'package:app/features/auth/domain/entities/registration_response.dart';
import 'package:app/features/auth/domain/entities/registration_request.dart';
import 'package:app/features/auth/domain/entities/login_response.dart';
import 'package:app/features/auth/domain/entities/login_request.dart';
import 'package:app/core/error/failure.dart';
import 'package:app/features/auth/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/network/network_info.dart';
import '../data_source/auth_local_data_source.dart';
import '../data_source/auth_remote_data_source.dart';

class AuthRepositoryImp implements AuthRepository {
  late final AuthRemoteDataSource remoteDataSource;
  late final AuthLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  AuthRepositoryImp(
      {required this.localDataSource,
      required this.remoteDataSource,
      required this.networkInfo});

  @override
  Future<Either<Failure, LoginResponse>> getLoginDetails() async {
    try {
      final localLoginDetails = await localDataSource.getCachedLoginDetails();
      return right(localLoginDetails);
    } on EmptyCacheException {
      return left(EmptyCacheFailure());
    }
  }

  @override
  Future<Either<Failure, RegistrationResponse>> getRegistrationDetails() async {
    try {
      final localRegistrationDetails =
          await localDataSource.getCachedRegistrationDetails();
      return right(localRegistrationDetails);
    } on EmptyCacheException {
      return left(EmptyCacheFailure());
    }
  }

  @override
  Future<Either<Failure, bool>> login(LoginRequest request) async {
    final LoginRequestModel loginRequestModel =
        LoginRequestModel(code: request.code);
    if (await networkInfo.isConnected) {
      try {
        await remoteDataSource.login(loginRequestModel);
        return right(true);
      } on ServerException {
        return left(ServerFailure());
      }
    } else {
      return left(OfflineFailure());
    }
  }

  @override
  Future<Either<Failure, bool>> registration(
      RegistrationRequest request) async {
    final RegistrationRequestModel registrationRequest =
        RegistrationRequestModel(
            fullName: request.fullName!,
            email: request.email!,
            password: request.password!);
    if (await networkInfo.isConnected) {
      try {
        await remoteDataSource.registration(registrationRequest);
        return right(true);
      } on ServerException {
        return left(ServerFailure());
      }
    } else {
      return left(OfflineFailure());
    }
  }
}
