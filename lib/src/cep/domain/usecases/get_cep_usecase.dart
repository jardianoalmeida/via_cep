import 'package:dartz/dartz.dart';
import 'package:via_cep/src/cep/domain/entities/cep_entity.dart';
import 'package:via_cep/src/cep/domain/errors/errors.dart';
import 'package:via_cep/src/cep/domain/repositories/cep_repository.dart';

abstract class GetCepUsecase {
  Future<Either<Failure, CepEntity>> call(String cep);
}

class GetCepUsecaseImpl implements GetCepUsecase {
  final CepRepository _repository;

  GetCepUsecaseImpl(this._repository);
  @override
  Future<Either<Failure, CepEntity>> call(String cep) =>
      _repository.search(cep);
}
