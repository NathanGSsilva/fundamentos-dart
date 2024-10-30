void main(List<String> args) {
  print('O literal de um map é igual ao set, utlizando as chaves {}');
  print('para diiferenciar utilizamos os genericos na declaração');
  print('- Um para definar a chave');
  print('- Outro para definir o valor');

  final mapaDePacientes = <String, String>{
    'nome': 'Fulano de Tal',
    'Funcao':'Desenvolvedor'
  };

  Map<String, String> mapaDePacientesNaoPermiteNulos = {};
  Map<String, String>? mapaDePacientesPermiteNulos = null;
  Map<String?, String> mapaDePacientesPermiteChavesNulos = {
    null: 'Fulano de Tal',
    null: 'Desenvolvedor'
  };

  Map<String, String?> mapaDePacientesPermiteValoresNulos = {
    'nome': null,
    'funcao': null
  };

  print('\n// Declaração por inferencia');
  var mapaDePacientesNaoPermiteNulosInferencia = <String, String?>{}; 
  var mapaDePacientesPermiteCahvesNulosInferencia = <String?, String>{
    null: 'Fulado de Tal',
    null: 'Desenvolvedor'
  };

  var mapaDePacientesPermiteValoresNulosInferencia = <String, String?>{
    'nome': null,
    'funcao': null
  };

  print('// Declaração de um mapa com uma lista dentro dele, igual a uma estrutura de JSON');
  
  var mapaAninhado = <String, Object>{
    'nome': 'Escola de DART',
    'curso': [
      {
        'nome': 'DART',
        'descricao': 'Fundamentos da linguagem DART'
      },
      {
        'nome':'Flutter',
        'descricao': 'Fundamento da linguem Flutter'
      }
    ]
  };

  print(mapaAninhado);

  print('Escola: ${mapaAninhado['nome']}');
  print('Cursos:');
 
  for (var curso in mapaAninhado['curso'] as List){
    print('- ${curso['nome']}: ${curso['descricao']}');
  }

}