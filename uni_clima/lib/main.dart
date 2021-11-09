import 'package:flutter/material.dart';
import 'package:uni_clima/screens/home.dart';
import 'package:uni_clima/theme/theme.dart';

void main() {
  runApp(const UniClima());
}

class UniClima extends StatelessWidget {
  const UniClima({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Home(),
      title: "Previsão do Tempo",
      debugShowCheckedModeBanner: false,
      theme: lightTheme(),
      darkTheme: darkTheme(),
      themeMode: ThemeMode.system,
    );
  }
}


