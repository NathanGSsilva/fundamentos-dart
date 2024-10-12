Future<String> BuscarDados() async{
  await Future.delayed(Duration(seconds: 2));
  return "Processamento assincrono - hora : ${DateTime.now()}";
}

String processarDados (){
  return "Processando Sincrono - hora : ${DateTime.now()}";
}

void main(List<String> args) async{
  String resultado = await BuscarDados();
  print(resultado);

  print(processarDados());
}