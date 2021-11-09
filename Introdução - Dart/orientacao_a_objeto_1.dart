class Pessoa {
  //atributos:
  String? nome;
  String? email;
  int? idade;
  bool? fumante;

  void fazerAniversario() {
    idade ?? idade! + 1; //++ é a mesma coisa que idade = idade + 1
    print("ôba, festinha com todos mascarados");
  }

  String falarEmail() {
    return "Meu e-mail é ${email}";
  }

  void comer(String comida) {
    print("Hmmm, adoro comer ${comida}");
  }
}

void main() {
  Pessoa p = Pessoa();

  p.nome = "Thiago Traue";
  p.idade = 34;
  p.email = "thiago.traue@uni9.pro.br";
  p.fumante = true;

  print("Olá ${p.nome}, tudo bem?");
  print("Ah! Vi que você tem ${p.idade} anos. Da hora!");

  p.fazerAniversario();

  //print(p.idade);

  print(p.falarEmail());

  print(p);

  p.comer("nutella");
}
