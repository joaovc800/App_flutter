class ClimaModel {
  final double temperatura;
  final double tempMin;
  final double tempMax;
  final double sensacaoTermica;
  final String descClima;
  final String icon;
  final int umidade;
  final int visibilidade;
  final int pressaoAtm;

  ClimaModel(
      {required this.temperatura,
      required this.tempMin,
      required this.tempMax,
      required this.sensacaoTermica,
      required this.descClima,
      required this.icon,
      required this.umidade,
      required this.visibilidade,
      required this.pressaoAtm});

  factory ClimaModel.fromJson(Map<String, dynamic> json) {
    return ClimaModel(
        temperatura: json["main"]["temp"].toDouble(),
        tempMin: json["main"]["temp_min"].toDouble(),
        tempMax: json["main"]["temp_max"].toDouble(),
        sensacaoTermica: json["main"]["feels_like"].toDouble(),
        descClima: json["weather"][0]["description"],
        icon: json["weather"][0]["icon"],
        umidade: json["main"]["humidity"].toInt(),
        visibilidade: json["visibility"].toInt(),
        pressaoAtm: json["main"]["pressure"].toInt());
  }
}