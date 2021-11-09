void main() {
  //variáveis
  bool aprovado;
  double nota_av1 = 10.0;
  double nota_av2 = 9.5;

  //cálculo da média
  double media = (nota_av1 + nota_av2) / 2;

  //se média é menor que 6:
  if (media < 6) {
    print("Infelizmente não passou! :(");
    aprovado = false;
  } else if (media != 10) {
    //se a média é diferente de dez
    print("Passou! :)");
    aprovado = true;
  } else {
    //se a média é igual a dez
    print("Top! :D");
    aprovado = true;
  }

  //if ternário em DART.
  //repare que a variável "info" recece o retorno da condição
  //Sintaxe do if ternário:
  // <condição> ? [VALOR SE VERDADEIROS] : [VALOR SE FALSO]
  String info = aprovado ? "Aprovado!" : "Reprovado";

  //imprime a variável "info":
  print(info);
}
