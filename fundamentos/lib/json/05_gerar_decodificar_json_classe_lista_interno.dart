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
  String jsonStrig = '''{"nome":"Nathan",
                         "idade":20,
                         "eEstudante":true,
                         "telefones":["1499999999","14999999999"],
                         "emails":["email@teste.com","email2@teste.com"]}
                         ''';

  //Converter a string JSON em um mapa
  Map<String, dynamic> usuarioJson = jsonDecode(jsonStrig);

  //Criar um objeto Usuario a partir do mapa
  Usuario usuario = Usuario.deJson(usuarioJson);

  //Exibir os detalhes do usuarioo
  // print('''
  //       Nome: ${usuario.nome},
  //       Idade: ${usuario.idade},
  //       Estudante:${usuario.eEstudante},
  //       Telefones: ${usuario.telefones},
  //       Emails: ${usuario.emails}''');

  print('''
        Nome: ${usuario.nome},
        Idade: ${usuario.idade},
        Estudante:${usuario.eEstudante}''');
  print('''Telefones: ${usuario.telefones.join(',')}''');
  print('''Emails: ${usuario.emails.join(',')}''');
  
  //Converter o objeto Usuario de volta para JSON
  String jsonSaida = jsonEncode(usuario.paraJson());
  print(jsonSaida);
}