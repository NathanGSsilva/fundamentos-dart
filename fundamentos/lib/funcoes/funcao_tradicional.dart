import 'dart:io';

int somar (int a, int b){
  return a + b;
}

void main(List<String> args) {
  print("Informe o primeiro numero!");
  var numero1 = int.tryParse(stdin.readLineSync()!);
  
  print("Informe o segundo numero!");
  var numero2 = int.tryParse(stdin.readLineSync()!);

  try{
    print("A soma dos numeros: $numero1 + $numero2 = ${somar(numero1!, numero2!)}");

  }catch(e){
    print("Numero 1 ou 2 invalidos!");
  }
}