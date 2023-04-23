import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/user.dart';
import '../repositories/auth_repository.dart';

class RegisterUsecase {
  AuthRepository authRepository;
  RegisterUsecase({
    required this.authRepository,
  });
  Future<Either<User, Failure>> call(
    String email,
    String name,
    String password,
  ) async {
    return await authRepository.register(email, name, password);
  }
}
