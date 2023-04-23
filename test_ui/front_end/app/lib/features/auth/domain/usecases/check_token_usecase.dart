import 'package:app/features/auth/domain/entities/user.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../repositories/auth_repository.dart';

class CheckTokenUsecase {
  AuthRepository authRepository;
  CheckTokenUsecase({
    required this.authRepository,
  });
  Future<Either<User, Failure>> call() async {
    return await authRepository.checkToken();
  }
}
