import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../repositories/auth_repository.dart';

class LogoutUsecase {
  AuthRepository authRepository;
  LogoutUsecase({
    required this.authRepository,
  });
  Future<Either<Unit, Failure>> call() async {
    return await authRepository.logout();
  }
}
