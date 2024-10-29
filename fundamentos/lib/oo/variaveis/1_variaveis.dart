void main (){

// sintaxe:
//<tipo> nome = atribuição;
//<tipo> nome;
//nome = atribuição;
//fortemente tipada;

// ignore: unused_local_variable

int idade;

idade = 10;

String nome = "Alunos que reclamam";

double cotacaoDolar = 5.56; 

print("Nome: " + nome );
print("Nome: ${nome} - Idade ${idade}");

/* por ser fontemente tipada, não permite atribuir um valor que não pertence ao tipo da variavel */
// idade = "numero nove";

/* por ser fontemente tipada, não permite atribuir um valor que gera perda da precisão da informação*/
// idade = 1.5;
cotacaoDolar = 5;
cotacaoDolar = 5.0;

// Nome da varíavel nao pode usar caracteres especiasis, espaços ou palavras reservadas.
// A palavra reservada VAR é utilizada em Dart para declarar uma variavel com o tipo inferido.

var tipoInferido;

tipoInferido = 10;

tipoInferido += 1.5;

print(tipoInferido);

/* o tipo dynamic aceita qualquer coisa */
dynamic tipoMae;
tipoMae = 10;
tipoMae = 10.5;
tipoMae = "10.5";

print(tipoMae);

/* Object é a classe base de todos os objetos
Isso significa que todos os tipos em Dart, incluindo os tipos primitivos, são do tipo Object
*/

Object tipoMaeDasMaes;
tipoMaeDasMaes = 10;
tipoMaeDasMaes = 10.5;
tipoMaeDasMaes = "10.5 teste";

print(tipoMaeDasMaes);
/* Evite os tipos object e dynamic, pois poderá ocorrer um erro em tempo de execução. */

}