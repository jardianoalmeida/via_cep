import 'dart:developer';

import 'package:mobx/mobx.dart';
import 'package:via_cep/src/cep/domain/usecases/get_cep_usecase.dart';

import '../../domain/entities/cep_entity.dart';

part 'cep_controller.g.dart';

class CepController = CepBase with _$CepController;

abstract class CepBase with Store {
  final GetCepUsecase _usecase;

  CepBase(this._usecase);

  @observable
  CepEntity? cepEntity;


  @action
  Future showCep(String cep) async {

    var result = await _usecase(cep);

    result.fold((l) => null, (r) => cepEntity = r);
  }
}
