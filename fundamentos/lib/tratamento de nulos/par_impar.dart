import 'dart:io';

// void main () {
// print("Informe seu numero");
// final numero = stdin.readLineSync();
// final convertido = int.tryParse(numero!);
// if(convertido! % 2 == 0)
// print("é par");
// else
// print("é impar");
// }

void main() {
  print("Informe seu numero");
  final numero = stdin.readLineSync();
  if (numero != null && int.tryParse(numero) != null) {
    final convertido = int.tryParse(numero);
    print("Numero ${convertido! % 2 == 0 ? "Par" : "Impar"}");
  } else {
    print("Digite um numero invalido!");
  }
}
