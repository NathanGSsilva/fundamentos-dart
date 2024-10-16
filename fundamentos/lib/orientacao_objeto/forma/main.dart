import 'Circulo.dart';
import 'Quadrado.dart';
import 'Forma.dart';
import 'Rertangulo.dart';
import 'Triangulo.dart';
void main(List<String> args) {

  List<Forma> formas = [];

  formas.add( Quadrado(10));
  formas.add( Retangulo(10,5));
  formas.add( Trinagulo(10,5));
  formas.add( Circulo(10));
  
  formas.forEach((forma) => forma.imprimeForma());
}
