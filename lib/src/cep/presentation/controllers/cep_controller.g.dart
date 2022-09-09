// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cep_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CepController on CepBase, Store {
  late final _$cepEntityAtom =
      Atom(name: 'CepBase.cepEntity', context: context);

  @override
  CepEntity? get cepEntity {
    _$cepEntityAtom.reportRead();
    return super.cepEntity;
  }

  @override
  set cepEntity(CepEntity? value) {
    _$cepEntityAtom.reportWrite(value, super.cepEntity, () {
      super.cepEntity = value;
    });
  }

  late final _$showCepAsyncAction =
      AsyncAction('CepBase.showCep', context: context);

  @override
  Future<dynamic> showCep(String cep) {
    return _$showCepAsyncAction.run(() => super.showCep(cep));
  }

  @override
  String toString() {
    return '''
cepEntity: ${cepEntity}
    ''';
  }
}
