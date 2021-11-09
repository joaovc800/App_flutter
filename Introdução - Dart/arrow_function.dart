void main() {
  int num = 7;
  print(ePar(num) ? "$num é par" : "$num é ímpar");
}

//true o número é par. False o número é impar
// bool ePar(int numero) {
//   return (numero % 2 == 0);
// }


//A MESMA função reescrita com Arrow Function:
bool ePar(int numero) => numero % 2 == 0;
