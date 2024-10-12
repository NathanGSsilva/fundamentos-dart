void main(List<String> args) {
  var numeros = [1,2,3,4,5];
  var soma = numeros.fold(0, (valorAnterior, elemento) => valorAnterior + elemento);
  print(soma);

  soma = 0;
  for ( var elemento in numeros ){
    soma += elemento;
  }

  var saudacao = ['Olá', " ", "fulano", "!"];
  var msg = "";
  for (var elemento in saudacao){
    msg += elemento;
  }
  print(msg);

  var mensagem = saudacao.fold("", (valorAnt, element) => valorAnt + element);
  print(mensagem);
}