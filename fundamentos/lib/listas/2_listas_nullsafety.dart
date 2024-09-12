void main () {

  // ? = nullable (aceita valor nulo).
  // sem nada (padrao) (nao aceita valores nulos).

  // Tem que inicializar a lista e os items internos não podem ser nulos.

  List<String> nome = ["1" , "2", "3"];

  // Não precisa inicializar a lista e os itens internos nao podem ser nulos.
  List<String>? nomeNulo;

  // Tem que inicializar a lista e os itens internos podem ser nulos.
  List<String?> nomeInternosAceitamNulos = [null];

  // Não precisa inicializar a lista e os itens internos podem ser nulos.
  List<String?>? nomesNulosInternosAceitamNulos;


  /* -- Declaração por inferencia -- */

  var nomeInferencia = <String>[];

  var nomeInferenciaAceitaNulo = <String?>[null];

}