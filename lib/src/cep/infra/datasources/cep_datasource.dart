import 'package:via_cep/src/cep/infra/models/cep_model.dart';

abstract class CepDatasource {
  
  Future<CepModel> getCep(String cep);

}