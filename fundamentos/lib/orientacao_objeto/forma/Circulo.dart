import 'dart:math';
import 'Forma.dart';
import 'enum.dart';

class Circulo extends Forma {
  double raio = 0;

  Circulo( this.raio) : super(tpForma.Circulo);

  @override
  double calculaArea(){
    return raio * pi;
  }
}
