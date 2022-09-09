import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:via_cep/src/cep/presentation/controllers/cep_controller.dart';

class CepPage extends StatefulWidget {
  const CepPage({Key? key}) : super(key: key);

  @override
  State<CepPage> createState() => _CepPageState();
}

class _CepPageState extends State<CepPage> {
  final _cepController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  var controller = Modular.get<CepController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: TextFormField(
                controller: _cepController,
                decoration: InputDecoration(
                  labelStyle: const TextStyle(
                    color: Colors.green,
                  ),
                  labelText: 'Digite seu Cep animal',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0)),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.green, width: 2.0),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                validator: (text) {
                  if (text!.isEmpty) {
                    return 'Digite um cep';
                  } else if (text.length < 8) {
                    return 'Animal fautou numero ai';
                  }
                  return null;
                },
              ),
            ),
            Observer(builder: (_) {
              return Text(
                  'Cidade: ' + controller.cepEntity!.localidade.toString());
            })
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => searchCep(),
      ),
    );
  }

  void searchCep() {
    controller.showCep(_cepController.text);

    final _form = _formKey.currentState;
    if (_form!.validate()) {}
  }
}
