void main(){

  // Declaração de variavel e atribuição.
  var nomeCurso = "Fundamentos Dart";
  print(nomeCurso);

  // Uma variavel pode ter o valor reatribuido, respeitando o tipo da sua declaração.
  nomeCurso = "Fundamentos Dart versão atual";
  print(nomeCurso);

 //Final
 //uma variavel declarada como final pode ser atribuida apenas uma vez e seu valor nao pode ser alterado depois de ser definido. 

  final nomeCursoFinal = "Fundamentos em Dart";
  print(nomeCursoFinal);

  //Não é possivel reatribuir um valor na variavel declarada como final
  nomeCursoFinal = "teste";

  //Const
  const nomeCursoConstante = "Fundamentos em Dart";
  print(nomeCursoConstante);
  
  //A Diferença entre final e constantes é que a final é atribuido em tempo de execução, enquanto const é atribuido em tempo de compilação.
  //Final pode ter um valor diferente para cada instancia de uma classe. enquanto const pode ter seu valor determinado em tempo de compilação

}