// ignore_for_file: unused_import

import 'dart:convert';

void main(List<String> args) {
  //Criar um mapa (objeto)
  Map<String, dynamic> usuario = {
    'nome': 'Alice',
    'idade': 30,
    'eEstudante': false
  };

  // Converter o mapa em JSON
  String jsonString = jsonEncode(usuario);
  print(jsonString);
}