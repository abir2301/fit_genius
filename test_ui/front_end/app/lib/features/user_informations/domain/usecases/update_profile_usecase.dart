import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../models/profile.dart';
import '../repositories/profile_repository.dart';

class UpdateProfileUsecase {
  late ProfileRepository profileRepository;
  UpdateProfileUsecase({required this.profileRepository});
  Future<Either<Unit, Failure>> call(int age, String weight, String height,
      String goal, String activity_level) async {
    return await profileRepository.updateProfile(
        age, weight, height, goal, activity_level);
  }
}
