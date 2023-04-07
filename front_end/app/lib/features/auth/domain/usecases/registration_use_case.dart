import 'package:app/core/error/failure.dart';
import 'package:app/features/auth/domain/entities/login_request.dart';
import 'package:app/features/auth/domain/entities/registration_request.dart';
import 'package:app/features/auth/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

class RegistrationUseCase {
  late final AuthRepository authRepository;
  RegistrationUseCase(this.authRepository);
  Future<Either<Failure, bool>> call(RegistrationRequest request) async {
    return await authRepository.registration(request);
  }
}
