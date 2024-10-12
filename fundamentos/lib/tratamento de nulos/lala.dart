void main () {

String nomeNonNullSafety;
// Variavel non-nullable tem que inicializar antes de utilizar.

nomeNonNullSafety = "";

print("nomeNonNullSafety Está vazia ${nomeNonNullSafety.isEmpty}");

String? nomeNullSafety;

if (nomeNullSafety != null) {
print("nomeNullSafety Está vazia ${nomeNullSafety.isEmpty}");
  
}

String? nomeNullSafety1;

/* ! iginora as validações de null safety e voce fica responsavel em garantir que a variavel nao está nula */
nomeNullSafety1 = "";
print("nomeNullSafety1 Está vazia ${nomeNullSafety1!.isEmpty}");

String? nomeNullSafety2;

// ?? é um operador ternaio. Se a variavel estiver vazia, ela ira executar a expressao a direita do operador ??.

print("nomeNullSafety2 Está vazia ${nomeNullSafety2?.isEmpty ?? "Não preenchido" } " );
print("nomeNullSafety2 Está vazia ${nomeNullSafety2?.isEmpty ?? true } " );
  
String? nomeNullSafety3;


print("nomeNullSafety3 Está vazia ${nomeNullSafety3?.isEmpty ?? "Não preenchido" } " );
print("nomeNullSafety3 Está vazia ${nomeNullSafety3 ?? "Não preenchido2" } " );


}