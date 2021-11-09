import 'package:flutter/material.dart';
import 'package:uni_clima/model/clima_model.dart';

class ClimaWidget extends StatelessWidget {
  final ClimaModel climaModel;

  const ClimaWidget({Key? key, required this.climaModel}) : super(key: key);

  String primeiraMaiuscula(String s) => s[0].toUpperCase() + s.substring(1);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          "http://openweathermap.org/img/wn/${climaModel.icon}@2x.png",
          fit: BoxFit.fill,
          width: 100,
        ),
        Text(
          "${climaModel.temperatura.toStringAsFixed(0)} ºC",
          style: const TextStyle(fontSize: 50),
        ),
        Text(
          primeiraMaiuscula(climaModel.descClima),
          style: const TextStyle(fontSize: 30),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 10),
        Text(
          "Mín. do dia: ${climaModel.tempMin.toStringAsFixed(0)} ºC",
          style: Theme.of(context).textTheme.headline2,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 5),
        Text(
          "Max. do dia: ${climaModel.tempMax.toStringAsFixed(0)} ºC",
          style: Theme.of(context).textTheme.headline2,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 5),
        Text(
          "Sensação Térmica: ${climaModel.sensacaoTermica.toStringAsFixed(0)} ºC",
          style: Theme.of(context).textTheme.headline2,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 5),
        Text(
          "Umidade relativa do ar: ${climaModel.umidade}%",
          style: Theme.of(context).textTheme.headline2,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 5),
        Text(
          "Visibilidade: ${climaModel.visibilidade} Km",
          style: Theme.of(context).textTheme.headline2,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 5),
        Text(
          "Pressão: ${climaModel.pressaoAtm} hPa",
          style: Theme.of(context).textTheme.headline2,
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
