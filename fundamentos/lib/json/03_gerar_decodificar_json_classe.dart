// ignore: unused_import
import 'dart:convert';

class Usuario {
  String nome;
  int idade;
  bool eEstudante;

  Usuario({
    required this.nome,
    required this.idade,
    required this.eEstudante
  });

  //Método para converter um objeto Usuario em um mapa

  Map<String, dynamic> paraJson(){
    return{
      'nome': nome,
      'idade': idade,
      'eEstudante': eEstudante
    };
  }

  //Método para criar um objeto Usuario a partir de um mapa

  factory Usuario.deJson(Map<String, dynamic> json){
    return Usuario(
      nome: json['nome'],
      idade: json['idade'],
      eEstudante: json['eEstudante']
    );
  }
}

void main(List<String> args) {
  //String JSON com um único usuário
  String jsonStrig1 = '{"nome":"Nathan","idade":20,"eEstudante":true}';
  String jsonStrig2 = '{"nome":"Diogo","idade":20,"eEstudante":true}';

  //Converter a string JSON em um mapa
  Map<String, dynamic> usuarioJson1 = jsonDecode(jsonStrig1);
  Map<String, dynamic> usuarioJson2 = jsonDecode(jsonStrig2);

  //Criar um objeto Usuario a partir do mapa
  Usuario usuario1 = Usuario.deJson(usuarioJson1);
  Usuario usuario2 = Usuario.deJson(usuarioJson2);

  //Exibir os detalhes do usuarioo
  print('''
        Nome: ${usuario1.nome},
        Idade: ${usuario1.idade},
        Estudante:${usuario1.eEstudante}''');
  
  print('\n');
  
  print('''
        Nome: ${usuario2.nome},
        Idade: ${usuario2.idade},
        Estudante:${usuario2.eEstudante}''');
  
  //Converter o objeto Usuario de volta para JSON
  String jsonSaida1 = jsonEncode(usuario1.paraJson());
  String jsonSaida2 = jsonEncode(usuario2.paraJson());
  print(jsonSaida1);
  print(jsonSaida2);
}