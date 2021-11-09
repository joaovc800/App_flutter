void main() {

  String tipoDeRoupa = "Camisetas";

  //seleção de um programa de máquina de lavar
  switch(tipoDeRoupa){
    case "Jeans":
      print("Lavagem pesada");
      break;
    case "Seda":
      print("Lavagem delicada ");
      break;
    case "Pano de chão":
      print("Lavagem pesada com alvejante");
      break;
    case "Camisetas":
      print("Lavagem diária");
      break;
    default:
      print("Verifique a etuqueta");
      break;
  }
}
