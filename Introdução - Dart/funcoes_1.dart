void main() {
  calculaSoma(60, 60);
  print(calculaMultiplicacao(2, 6));
  print(falarNome("Nathalia Giovanna"));
}

void calculaSoma(double a, double b) {
  double soma = a + b;
  print(soma);
}

double calculaMultiplicacao(double a, double b) {
  double mult = a * b;
  return mult;
}

String falarNome(String nome) {
  return "Olá $nome";
}
