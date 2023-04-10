import 'package:app/core/error/failure.dart';
import 'package:app/features/auth/domain/entities/login_request.dart';
import 'package:app/features/auth/domain/entities/login_response.dart';
import 'package:app/features/auth/domain/entities/registration_response.dart';
import 'package:app/features/auth/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

class GetRegistrationDetailsUseCase {
  late final AuthRepository authRepository;
  GetRegistrationDetailsUseCase(this.authRepository);
  Future<Either<Failure, RegistrationResponse?>> call() async {
    return await authRepository.getRegistrationDetails();
  }
}
