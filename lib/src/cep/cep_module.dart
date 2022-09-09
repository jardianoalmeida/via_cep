import 'package:flutter_modular/flutter_modular.dart';
import 'package:via_cep/src/cep/presentation/pages/cep_page.dart';

class CepModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const CepPage()),
      ];
}
