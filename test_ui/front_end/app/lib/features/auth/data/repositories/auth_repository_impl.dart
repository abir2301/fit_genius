import 'package:app/core/network/network_info.dart';
import 'package:app/features/auth/domain/entities/user.dart';
import 'package:app/core/error/failure.dart';
import 'package:app/features/auth/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:app/features/auth/data/datasources/auth_remote_datasource.dart';

class AuthRepositoryImpl implements AuthRepository {
  late NetworkInfo networkInfo;
  AuthRemoteDatasource authRemoteDatasource;

  AuthRepositoryImpl({
    required this.networkInfo,
    required this.authRemoteDatasource,
  });
  @override
  Future<Either<User, Failure>> checkToken() {
    // TODO: implement checkToken
    throw UnimplementedError();
  }

  @override
  Future<Either<User, Failure>> login(String email, String password) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<Either<Unit, Failure>> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<Either<User, Failure>> register(
    String email,
    String name,
    String password,
  ) {
    // TODO: implement register
    throw UnimplementedError();
  }
}
