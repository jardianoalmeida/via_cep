import 'package:dartz/dartz.dart';

import '../entities/cep_entity.dart';
import '../errors/errors.dart';

abstract class CepRepository {
  Future<Either<Failure, CepEntity>> search(String cep);
}
