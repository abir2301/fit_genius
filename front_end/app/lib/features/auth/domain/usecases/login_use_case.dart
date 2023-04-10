import 'package:app/core/error/failure.dart';
import 'package:app/features/auth/data/model/login_request.dart';
import 'package:app/features/auth/domain/entities/login_request.dart';
import 'package:app/features/auth/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

class LoginUseCase {
  final AuthRepository authRepository;
  LoginUseCase(this.authRepository);
  Future<Either<Failure, bool>> call(LoginRequestModel request) async {
    print("loginrepo");
    return await authRepository.login(request);
  }
}
