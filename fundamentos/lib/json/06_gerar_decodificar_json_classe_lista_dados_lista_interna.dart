// ignore: unused_import
import 'dart:convert';

class Usuario {
  String nome;
  int idade;
  bool eEstudante;
  List<String> telefones;
  List<String> emails;

  Usuario({
    required this.nome, 
    required this.idade, 
    required this.eEstudante, 
    required this.telefones, 
    required this.emails 
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
      eEstudante: json['eEstudante'],
      telefones: List<String>.from(json['telefones']),
      emails: List<String>.from(json['emails'])
    );
  }
}

void main(List<String> args) {
  //String JSON com um único usuário
  String jsonStrig = '''[
                          {
                          "nome":"Nathan",
                          "idade":20,
                          "eEstudante":true,
                          "telefones":["1499999999","14888888888"],
                          "emails":["email@teste.com","email2@teste.com"]
                          },
                          {"nome":"Cleusa",
                          "idade":66,
                          "eEstudante":false,
                          "telefones":["1499999999"],
                          "emails":["cleusa@gmail.com"]
                          },
                          {"nome":"Julia",
                          "idade":24,
                          "eEstudante":true,
                          "telefones":["30345670","14997887785"],
                          "emails":["julia@teste.com","juliafake@teste.com"]
                          }
                        ]''';

  //Converter a string JSON em um lista mapas
  List<dynamic> usuariosJson = jsonDecode(jsonStrig);

  //Criar uma lista de objetos Usuario a partir da lista de mapas
  List<Usuario> usuarios = usuariosJson.map( (usuarioJson) => Usuario.deJson(usuarioJson)).toList(); 

  for (var usuario in usuarios) {
  print('''\n
        Nome: ${usuario.nome},
        Idade: ${usuario.idade},
        Estudante:${usuario.eEstudante},
        Telefones: ${usuario.telefones.join(',')},
        Emails: ${usuario.emails.join(',')}
      ''');   
  }

  //Converter o objeto Usuario de volta para JSON
  String jsonSaida = jsonEncode(usuarios.map( (usuario) => usuario.paraJson()).toList());
  print(jsonSaida);
}