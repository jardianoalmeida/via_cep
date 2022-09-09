import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:via_cep/src/cep/cep_module.dart';
import 'package:via_cep/src/cep/domain/usecases/get_cep_usecase.dart';
import 'package:via_cep/src/cep/external/datasources/cep_datasource_impl.dart';
import 'package:via_cep/src/cep/infra/repositories/cep_repository_impl.dart';
import 'package:via_cep/src/cep/presentation/controllers/cep_controller.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => Dio()),
        Bind((i) => CepDatasourceImpl(i())),
        Bind((i) => CepRepositoryImpl(i())),
        Bind((i) => GetCepUsecaseImpl(i())),
        Bind((i) => CepController(i())),
      ];

  @override
  List<ModularRoute> get routes =>
      [ModuleRoute(Modular.initialRoute, module: CepModule())];
}
