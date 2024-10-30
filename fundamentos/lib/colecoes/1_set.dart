void main(List<String> args) {
  print("\n// List [] permite valores duplicados ");
  
  var numeroList = [];

  numeroList.add(1);
  numeroList.add(1);
  numeroList.add(2);
  numeroList.add(2);
  numeroList.add(3);
  numeroList.add(4);
  numeroList.add(null);
  numeroList.add(5);
  print(numeroList);
 
  print("\n// Set {} NÃO permite valores duplicados ");
  
  // var numeroSet = <int?> {};

  //inferencia
  Set<int?> numeroSet = {};

  numeroSet.add(1);
  numeroSet.add(1);
  numeroSet.add(2);
  numeroSet.add(2);
  numeroSet.add(3);
  numeroSet.add(4);
  numeroSet.add(null);
  numeroSet.add(5);
  print(numeroSet);

print('\n // método List.toSet() para transformar uma lista em um set ');
var numerosSetDeList = numeroList.toSet();

print('\n // Set também possui os métodos interable ');
numerosSetDeList.forEach(print);

print('\n // método diferente de Set compara dois Sets e apresenta apenas os itens que exclusivos do primeiro conjunto'' ');
var conjuntoNumeros1 = {1,2,3,4,5,6};
var conjuntoNumeros2 = {1,2,3,7};

print(conjuntoNumeros1);
print(conjuntoNumeros2);

print('\n// método difference de Set compara dois Sets e apresenta apenas os itens que são exclusivos do conjunto.');

print('\n//conjunto 1 em relação ao 2');
print(conjuntoNumeros1.difference(conjuntoNumeros2));

print('\n//conjunto 2 em relação ao 1');
print(conjuntoNumeros2.difference(conjuntoNumeros1));

print('\n//método union junta dois sets');
print(conjuntoNumeros1.union(conjuntoNumeros2));

print('\n//método intersection - retorna aepenas os itens existens nos dois conjuntos');
print(conjuntoNumeros1.intersection(conjuntoNumeros2));

var conjuntoNomes1 = {'Fulado','Beltrano','Siclano'};
var conjuntoNomes2 = {'Fulado','Beltrano'};

print('\n// método lookup - pesquisa um item dentro do conjunto, se não encontrar retorna null');
print(conjuntoNomes2.lookup('Beltrano'));
print(conjuntoNomes2.lookup('Siclano'));

print('\n//para retornar um item do conjunto atraves do indice, deve-se utlizar o metodo elementAt(index)');
print('Segundo nome do conunto: ${conjuntoNomes1.elementAt(1)}');

}