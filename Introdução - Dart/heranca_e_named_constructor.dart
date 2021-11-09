//é
class Aluno extends Pessoa {
  int? ra;

  Aluno(this.ra, String nome, String email) : super(nome, email);

//named constructor:
  Aluno.matricular(String nome, String email) : super(nome, email) {
    print("Seja bem-vindo(a) ${nome}");
    this.ra = -9999;
  }
}

class Pessoa {
  String nome;
  String email;

  Pessoa(this.nome, this.email);
}

void main() {
  Aluno a = Aluno(999, "Luiz", "lulu@uni9.edu.br");

  print(a.nome);

  Aluno a2 = Aluno.matricular("Leonardo", "leoleo@uni.com");
}
