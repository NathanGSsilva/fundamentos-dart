import 'dart:io';

void main(List<String> args) {
  var somaAnonimo = (int a, int b){
    return a + b;
  };

  print('Chamando uma função anonima ${somaAnonimo(1,2)}');
  print('Chamando uma função anonima ${somarNomeado(1,2)}');

  List<String> pessoas = ['Fulano|Gerente','Beltrano|Vendedor'];
  pessoas.forEach(print);

  // var imprimir = ( String pessoa ) {
  //   var dados = pessoa.split("|");
  //   print('Nome: ${dados[0]} Profissão: ${dados[1]}');
  // };

  // pessoas.forEach(imprimir);

  pessoas.forEach((String pessoa){

    var dados = pessoa.split('|');
    print('${pessoas.indexOf(pessoa)+1}º Nome: ${dados[0]} Profissão: ${dados[1]}');
    
    });

  // pessoas.forEach((String pessoa){

  //   var dados = pessoa.split('|');
  //   print('Nome: ${dados[0]} Profissão: ${dados[1]}');
    
  //   });
  
}

int somarNomeado( int a, int b ){
  return a + b;
}