import 'endereco_controller.dart';
import 'endereco.dart';
import 'dart:io';

Future<void> main(List<String> args) async {
  final controller = EnderecoController();

  print('Informe um CEP: ');
  String? cepe = stdin.readLineSync();

  try {
    if (cepe != null) {
      // Remove qualquer coisa que não seja um dígito de 0 a 9
      cepe = cepe.replaceAll(RegExp(r'[^0-9]'), '');

      // Verifica se o CEP limpo tem exatamente 8 dígitos
      if (cepe.length != 8) {
        print('Erro! CEP inválido!');
      } else {
        Endereco endereco = await controller.buscarCep(cepe);

        print('cep: ${endereco.cep}'); 
        print('logradouro: ${endereco.logradouro}'); 
        print('complemento: ${endereco.complemento}'); 
        print('unidade: ${endereco.unidade}'); 
        print('bairro: ${endereco.bairro}'); 
        print('cidade: ${endereco.cidade}'); 
        print('uf: ${endereco.uf}'); 
        print('estado: ${endereco.estado}'); 
        print('regiao: ${endereco.regiao}'); 
        print('ibge: ${endereco.ibge}'); 
        print('gia: ${endereco.gia}'); 
        print('ddd: ${endereco.ddd}'); 
        print('siafi: ${endereco.siafi}'); 
      }
    } else {
      print('Erro! CEP inválido!');
    }
  } catch (e) {
    print(e);
  }
}
