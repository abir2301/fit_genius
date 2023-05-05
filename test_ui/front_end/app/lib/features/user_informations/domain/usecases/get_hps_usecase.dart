import 'package:app/features/user_informations/domain/repositories/hp_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../models/hp.dart';

class GetHpsUsecase {
  late HpRepository hpRepository;
  GetHpsUsecase({required this.hpRepository});
  Future<Either<Hps, Failure>> call({required String type}) async {
    return await hpRepository.getHps(type);
  }
}
