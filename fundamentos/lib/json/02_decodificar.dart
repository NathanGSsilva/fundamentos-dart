import 'dart:convert';

void main(List<String> args) {
  //String JSON
  String jsonString = '{"nome":"Nathan","idade":30,"eEstudante":false}';

  //Converter a tring JSON em m mapa
  Map<String, dynamic> usuario = jsonDecode(jsonString);

  print(usuario['nome']); //Alice
  print(usuario['idade']); //30
  print('É eEstudante: ${usuario['eEstudante']?"Sim":"Não"}');

}