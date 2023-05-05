import 'package:app/features/user_informations/domain/repositories/hp_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../models/hp.dart';

class PostHpUsecase {
  late HpRepository hpRepository;
  PostHpUsecase({required this.hpRepository});
  Future<Either<Unit, Failure>> call(Hps hps) async {
    return await hpRepository.postHp(hps);
  }
}
