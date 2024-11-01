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
  String jsonStrig = '''[

                  {"nome":"Nathan","idade":20,"eEstudante":true},
                  {"nome":"Diogo","idade":20,"eEstudante":true},
                  {"nome":"Leonardo","idade":22,"eEstudante":false}

                ]''';

  //Converter a string JSON em uma lista de mapas
  List<dynamic> usuariosJson = jsonDecode(jsonStrig);

  //Criar a lista de objetos Usuario a partir da lista de mapas
  List<Usuario> usuarios = usuariosJson.map( (usuarioJson) => Usuario.deJson(usuarioJson)).toList();

  //Exibir os detalhes do usuarioo
  for (var usuario in usuarios) {
    
    print('''
          Nome: ${usuario.nome},
          Idade: ${usuario.idade},
          Estudante:${usuario.eEstudante?"Sim":"Não"}''');
  }
  
  // Converter o objeto Usuario de volta para JSON
  String jsonSaida = jsonEncode(usuarios.map( (usuario) => usuario.paraJson()).toList());
  print(jsonSaida);
}