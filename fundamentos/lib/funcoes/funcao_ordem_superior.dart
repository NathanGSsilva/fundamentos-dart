void executarOperacao( int a, int b, Function operacao){
  print(operacao(a,b));

}

void main(List<String> args) {
  executarOperacao(4, 5, (a,b) => a + b);
  executarOperacao(4, 5, (a,b) => a - b);
  executarOperacao(4, 5, (a,b) => a * b);
  executarOperacao(4, 5, (a,b) => a / b);
}