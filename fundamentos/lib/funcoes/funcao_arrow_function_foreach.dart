void main(List<String> args) {
  // var lista = ['Banana','Manga','Melancia','Uva'];
  // print('Criando a fuunção dentro da chamada do metodo forEach');
  // lista.forEach( (item) => print('${lista.indexOf(item)} : $item'));

  var motos = ['kawasaki|700', 'honda|500', 'yamaha|300'];

  motos.forEach( (moto){
    var detalhes = moto.split('|');
    print('a moto da ${detalhes[0]} é ${detalhes[1]} cilindradas!');
    }
  );
  }
  


