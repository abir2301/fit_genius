import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../models/hp.dart';

abstract class HpRepository {
  Future<Either<Hps, Failure>> getHps(String name );
  Future<Either<Unit, Failure>> postHp(Hps hps);
  // Future<Either<Hps, Failure>> deleteHp(String name);
  // Future<Either<Hps, Failure>> getUserHp();
}
