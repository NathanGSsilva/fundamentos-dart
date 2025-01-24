import 'dart:math';
import 'Forma.dart';
import 'enum.dart';

class Circulo extends Forma {
  double raio = 0;

  Circulo( this.raio) : super(tpForma.Circulo){
     Forma.idFormaClasse = 4;
    super.idFormaInstancia = 4;
  }

  @override
  double calculaArea(){
    return raio * pi;
  }
}
