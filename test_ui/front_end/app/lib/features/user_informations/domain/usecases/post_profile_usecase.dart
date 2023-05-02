import 'package:app/core/error/failure.dart';
import 'package:app/features/user_informations/domain/repositories/profile_repository.dart';
import 'package:dartz/dartz.dart';

import '../models/profile.dart';

class PostProfileUsecase {
  late ProfileRepository profileRepository;
  PostProfileUsecase({required this.profileRepository});
  Future<Either<Profile, Failure>> call(int age, String weight, String height,
      String goal, String activity_level) async {
    return await profileRepository.postProfile(
        age, weight, height, goal, activity_level);
  }
}
