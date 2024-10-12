import 'dart:io';

void exibirMensagem({String nome = "Visitante", String mensagem = "Bem-vindo!"}){
  print("$mensagem, $nome.");
}

void exibirMensagemPosicional([String? nome = 'P visitante', String mensagem = 'P Bem-vindo']){
  ;

  print("$mensagem, ${nome ??= 'P visitante.'}");
}

void main(List<String> args) {
  print("Digite o nome do Visitante");
  var visitante = stdin.readLineSync();
  
  print("Digite a mensagem");
  var mensagem = stdin.readLineSync();

  if(visitante != "" && mensagem != ""){
    exibirMensagem(nome: visitante!, mensagem: mensagem!);
    exibirMensagemPosicional(visitante, mensagem);
  }else if(visitante != "" ){
    exibirMensagem(nome: visitante!);
    exibirMensagemPosicional(visitante);

  }else if(mensagem != "" ){
    exibirMensagem(mensagem: mensagem!);
    exibirMensagemPosicional(null, mensagem);

  }else{
    exibirMensagem();
    exibirMensagemPosicional();
  }
}