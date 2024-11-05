import 'endereco.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class EnderecoController {

  Future<Endereco> buscarCep(String cep) async {

    final url = Uri.parse('http://viacep.com.br/ws/$cep/json/');

    final resposta = await http.get(url);

    if(resposta.statusCode == 200){
      Map<String, dynamic> endereco1 = jsonDecode(resposta.body);
      return Endereco.deJson(endereco1);
    }else{
      throw Exception ("Erro na busca do endereço: ${resposta.statusCode}");
    }
  }
}
