import 'Forma.dart';
import 'enum.dart';

class Trinagulo extends Forma{
  double base = 0;
  double altura = 0;

  Trinagulo( this.base, this.altura) : super(tpForma.Triangulo){
     Forma.idFormaClasse = 3;
    super.idFormaInstancia = 3;
  }

  @override
  double calculaArea(){
    return (base * altura) / 2;
  }
}