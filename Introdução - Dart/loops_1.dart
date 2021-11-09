class Pessoa {
  String? nome;
  int? idade;

  Pessoa({this.nome, this.idade});
}

void main() {
  List<Pessoa> pessoas = [];

  pessoas.add(Pessoa(nome: "Fulano", idade: 20));

  pessoas.add(Pessoa(nome: "Allisson", idade: 18));

  //laço for:
//   for(int i = 0; i < pessoas.length; i++) {
//     print("Nome: ${pessoas[i].nome}, ${pessoas[i].idade} anos");
//   }

//   int x = 0;
//   while(x < pessoas.length) {
//     print("Nome: ${pessoas[x].nome}, ${pessoas[x].idade} anos");
//     x++;
//   }

//   int j = 0;
//   do {
//     print("Nome: ${pessoas[j].nome}, ${pessoas[j].idade} anos");
//     j++;
//   } while(j < pessoas.length);

  //for each (para cada)
  for (Pessoa p in pessoas) {
    print("Nome: ${p.nome}, ${p.idade} anos");
  }
}
