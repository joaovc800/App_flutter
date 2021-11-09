void main() {

  //String -> tipo texto
  String nomeCurso = "Desenvolvimento Móvel";

  //int -> tipo números reais, inteiros
  int qtdAlunos = 100;

  //double -> tipo numero decimal, de ponto flutuante
  double mediaGeral = 9.5;

  //bool -> Tipo binário, verdadeiro ou falso
  bool temVaga = true;

  print(nomeCurso); //imprime o nome do nome do curso

  //impressão de um texto concatenado com uma variável:
  print("A Uninove oferece à você o curso de " + nomeCurso);

  //interpolação de uma variável com o texto (muito usado):
  print("O curso $nomeCurso tem $qtdAlunos alunos! :D");
  print("Os discentes tiram a nota $mediaGeral em média!");

  //impressão de variáveis booleanas:
  print("Este curso tem vagas? $temVaga");

  //o tipo dynamic permite qualquer valor.
  //ele assume o valor do último tipo:
  dynamic variavelDinamica = 1;
  print(variavelDinamica);
  variavelDinamica = "teste";
  print(variavelDinamica);
}
