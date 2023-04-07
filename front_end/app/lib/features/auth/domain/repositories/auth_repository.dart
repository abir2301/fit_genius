import 'package:app/features/auth/domain/entities/login_request.dart';
import 'package:app/features/auth/domain/entities/login_response.dart';
import 'package:app/features/auth/domain/entities/registration_response.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/registration_request.dart';

abstract class AuthRepository {
  Future<Either<Failure, bool>> login(LoginRequest request);
  Future<Either<Failure, bool>> registration(RegistrationRequest request);
  Future<Either<Failure, LoginResponse>> getLoginDetails();
  Future<Either<Failure, RegistrationResponse>> getRegistrationDetails();
}
