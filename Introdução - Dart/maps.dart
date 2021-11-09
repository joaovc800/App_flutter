class Veiculo {
  String fabricante;
  String modelo;
  int ano;

  Veiculo(this.fabricante, this.modelo, this.ano);
}

void main() {

  Map<String, Veiculo> veiculos = Map();

  veiculos["ABC-123"] = Veiculo("VW", "Passat", 2020);
  veiculos["ABC-321"] = Veiculo("Audi", "A8", 2021);
  veiculos["BBB-1234"] = Veiculo("Ferrari", "F-250", 2018);


  //print(veiculos["ABC-321"].modelo);

  veiculos.forEach((k, v) => print("Placa: ${k}, ${v.fabricante} - ${v.modelo}"));

}
