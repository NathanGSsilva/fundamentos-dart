import 'dart:io';

void main() {
  final nome = "fulano de tal";

  var subnome = nome.substring(7);

  // print(subnome);

  subnome = nome.substring(0, 7);
  // print(subnome);

  var sexo = "MASCULINO";

  final sexoSigla = sexo.substring(0, 1);

  // if (sexoSigla == "m") {
  //   print("Sexo Masculino");
  // } else {
  //   print("Sexo Feminino");
  // }

  // if (sexo.toLowerCase().startsWith("m")) {
  //   print("Sexo Masculino");
  // } else {
  //   print("Sexo Feminino");
  // }

  // if (nome.toUpperCase().contains("TAL")) {
  //   print("tem");
  // } else {
  //   print("nao tem");
  // }

  // final primeroN = "Nathan";
  // final segundoN = "Gabriel";
  // final saudacao = "Ola " + primeroN + " " + segundoN + ", Joia?";
  // final saudacao2 = "Ola ${primeroN} ${segundoN}, Joia?";
  // final saudacao3 = "Ola $primeroN $segundoN, Joia?";

  // print(saudacao);
  // print(saudacao2);
  // print(saudacao3);

  // var paciente = "Nathan|10 anos|Brasileiro";

  // final dadosPaciente = paciente.split("|");

  // paciente = "Joao|20 anos|Americano";

  // dadosPaciente.addAll(paciente.split("|"));

  // paciente = "Maria|30 anos|Brasileiro";

  // dadosPaciente.addAll(paciente.split("|"));

  final test = [
    ["Nathan", "10 anos", "Brasileiro"],
    ["Joao", "20 anos", "Brasileiro"],
    ["Maria", "30 anos", "Brasileiro"]
  ];

  // for (var dados in test) {
  //   print("Nome: ${dados[0]} Idade: ${dados[1]} Nacionalidade: ${dados[2]}");
  // }

  final test2 = [
    "Nathan|10 anos|Brasileiro",
    "Maria|10 anos|Brasileiro",
    "Joao|10 anos|Brasileiro",
  ];

  for (var dados in test2) {
    final dadosTratados = dados.split("|");

    print("Nome: ${dadosTratados[0]} Idade: ${dadosTratados[1]} Nacionalidade: ${dadosTratados[2]}");

  }
    print("Nome: ${test[0][0]} "+ "Idade: ${test[0][1]}" + " Nacionalidade: ${test[0][2]}");
}
