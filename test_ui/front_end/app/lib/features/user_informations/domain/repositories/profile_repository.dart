import 'package:app/features/user_informations/domain/models/profile.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';

abstract class ProfileRepository {
  Future<Either<Profile, Failure>> postProfile(int age, String weight,
      // ignore: non_constant_identifier_names
      String height, String goal, String activity_level);
  Future<Either<Profile, Failure>> getProfile();
  Future<Either<Unit, Failure>> updateProfile(int age, String weight,
      // ignore: non_constant_identifier_names
      String height, String goal, String activity_level);
}
