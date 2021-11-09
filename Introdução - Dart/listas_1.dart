void main() {


  //Vetor é uma lista de itens do mesmo tipo cujos índices (posições)
  //são numeradas de 0 até o "tamanhho menos 1", ou seja
  //um vetor de tamanho 5, pode ser acessado da posição 0 a 4

  List<String> compras = ["Banana", "Leite", "Ovos", "Nutella"];

  //adiciona, ao final da lista, um novo item
  compras.add("Abobrinha");

  //imprime no console uma posição na lista
  print(compras[4]);

  //procura un item na lista (é case sensitive):
  print(compras.contains("banana"));

  //remove da lista um item:
  compras.remove("Leite");

  //imprime a lista inteira:
  print(compras);
}
