void main() {
  
/* Null Safety é uma caracteristica introduzida no DART apartir da versão
2.12 que visa evitar erros em tempo de execução. 
O Null Safety torna o sistema de Tipagem Forte mais rigoroso */

// variaveis non-nullable

String nomeCompletoComAtribuicao = null;
nomeCompletoComAtribuicao = "Fundamentos do Dart";

String nomeCompletoSemAtribuicao;
nomeCompletoSemAtribuicao = "Fundamentos do Dart";

/* variavl nullable */
String? nomeCompletoComAtribuicaoNullable = null;
}