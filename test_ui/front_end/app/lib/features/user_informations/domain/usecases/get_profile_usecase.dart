import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../models/profile.dart';
import '../repositories/profile_repository.dart';

class GetProfileUsecase {
  late ProfileRepository profileRepository;
  GetProfileUsecase({required this.profileRepository});
  Future<Either<Profile, Failure>> call() async {
    return await profileRepository.getProfile();
  }
}
