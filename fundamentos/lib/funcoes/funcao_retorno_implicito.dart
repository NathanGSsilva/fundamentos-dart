int somarRetornoExplicito(int a, int b){
  return a+ b;
}

int somarRetornoImplicito(int a, int b) => a + b;

void main(List<String> args) {
  print('Chamando a função de retorno explicito: ${somarRetornoExplicito(10, 15)}');
  print('Chamando a função de retorno implicito: ${somarRetornoImplicito(10, 5)}');
}