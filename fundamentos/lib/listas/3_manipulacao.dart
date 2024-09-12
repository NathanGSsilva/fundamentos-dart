void main(List<String> args) {
  final numeros = [1, 2, 3, 4];

  print(numeros);

  numeros.add(5);

  print(numeros);

  final nomes = ["fulana", "siclano"];

  print(nomes);

  nomes.add("juliciclano");

  print(nomes[2]);

  nomes.insert(0, "aroldo");

  print(nomes[0]);

  final NomeMasculino = ["nathan", "matheus"];
  final NomeFeminino = ["julia", "marilia"];

  final nomeTotal = <String>[];

  nomeTotal.addAll(NomeFeminino);
  nomeTotal.addAll(NomeMasculino);

  // print(nomeTotal);

  // nomeTotal.remove("nathan");
  // print(nomeTotal);

  // nomeTotal.removeAt(0);
  print(nomeTotal);

  // nomeTotal.removeWhere((test) {
  //   print("Nome procurado ${test}");
  //   if (test != "marilia" && test != "nathan") {
  //     return true;
  //   } else {
  //     return false;
  //   }
  // });

  nomeTotal.removeWhere((test) => test != "marilia" && test != "nathan");


  print(nomeTotal);
}
