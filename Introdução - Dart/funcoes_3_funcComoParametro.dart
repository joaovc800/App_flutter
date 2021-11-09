void main() {
  criarBotao(texto: "Vai", altura: 100, cor: "Preto", click: funcaoClick);
}

void funcaoClick() {
  print("Clicando!");
}

void criarBotao(
    {String? texto,
    String? cor,
    double? largura,
    double? altura,
    Function? click}) {
  print("Criei um botão assim: ");
  print("Texto: $texto");
  print("Cor: ${cor ?? "Cinza"}");
  print("Tamanho: ${largura ?? 20} por ${altura ?? 5}");
  if (click != null) click();
}
