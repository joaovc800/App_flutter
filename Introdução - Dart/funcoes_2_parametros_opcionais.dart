void main() {
  criarBotao(texto: "Vai", altura: 100);
}

void criarBotao({String? texto, String? cor, double? largura, double? altura}) {
  print("Criei um botão assim: ");
  print("Texto: $texto");
  print("Cor: ${cor ?? "Cinza"}");
  print("Tamanho: ${largura ?? 20} por ${altura ?? 5}");
}
