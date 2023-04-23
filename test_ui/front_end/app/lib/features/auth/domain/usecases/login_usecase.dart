import 'package:app/core/error/failure.dart';

import 'package:app/features/auth/domain/entities/user.dart';
import 'package:app/features/auth/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

class LoginUsecase {
  AuthRepository authRepository;
  LoginUsecase({required this.authRepository});
  Future<Either<User, Failure>> call(String email, String password) async {
    return authRepository.login(email, password);
  }
}
