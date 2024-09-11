import 'dart:io';

void main() {
  const LimiteIdade = 16;
  print("Digite uma idade: ");
  final idade = stdin.readLineSync();

  if (idade != null) {
    final idadeConvertida = int.tryParse(idade);
    // if (idadeConvertida != null && idadeConvertida < LimiteIdade) {
    //   print("Não pode voltar");
    // } else if (idadeConvertida == LimiteIdade) {
    //   print("Escolha com sabedoria filho!");
    // } else {
    //   print("Pode votar");
    // }

    final podeVotar = (idadeConvertida != null)?idadeConvertida >= LimiteIdade : false;

    if(podeVotar){
      print("Pode votar");
    }else{
      print("Não pode votar!");
    }
  }
}

  //   if (idadeConvertida != null ) {
  //     if (idadeConvertida >= LimiteIdade) {
  //       print("Pode votar");
  //     } else {
  //       print("Não pode voltar");
  //     }
  //   }
  // }
