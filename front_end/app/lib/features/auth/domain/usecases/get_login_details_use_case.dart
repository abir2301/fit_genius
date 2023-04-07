import 'package:app/core/error/failure.dart';
import 'package:app/features/auth/data/model/login_response.dart';
import 'package:app/features/auth/domain/entities/login_request.dart';
import 'package:app/features/auth/domain/entities/login_response.dart';
import 'package:app/features/auth/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

class GetLoginDetailsUseCase {
  late final AuthRepository authRepository;
  GetLoginDetailsUseCase(this.authRepository);
  Future<Either<Failure, LoginResponse>> call() async {
    return await authRepository.getLoginDetails();
  }
}
