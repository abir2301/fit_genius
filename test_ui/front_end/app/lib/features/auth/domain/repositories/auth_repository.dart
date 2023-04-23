import 'package:app/core/error/failure.dart';
import 'package:app/features/auth/domain/entities/user.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Either<User, Failure>> login(String email, String password);
  Future<Either<User, Failure>> register(
      String email, String name, String password);
  Future<Either<Unit, Failure>> logout();
  Future<Either<User, Failure>> checkToken();
}
