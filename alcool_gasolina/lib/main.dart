import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController alcoolController = TextEditingController();
  TextEditingController gasolinaController = TextEditingController();
  String _resultado = "Informe os valores";
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _calculaCombustivelIdeal() {
    double vAlcool = double.parse(alcoolController.text.replaceAll(',', '.'));
    double vGasolina = double.parse(gasolinaController.text.replaceAll(',', '.'));
    double proporcao = vAlcool / vGasolina;

    //se a proporção é menor do 0.7, então vale mais a pena abastecer com alcool
    //caso contrário, vale mais a pena abastecer com gasosa...

    // if(proporcao < 0.7) {
    //   _resultado = "Abasteça com Álcool";
    // } else {
    //   _resultado = "Abasteça com Gasolina";
    // }
    //é a mesma coisa que:

    setState(() {
      _resultado = (proporcao < 0.7) ? "Abasteça com Álcool" : "Abasteça com Gasolina";
    });
  }

  void _reset() {
    setState(() {
      alcoolController.text = "";
      gasolinaController.text = "";
      _resultado = "Informe os valores";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Álcool ou Gasosalina?"),
        centerTitle: true,
        backgroundColor: Colors.cyan,
        actions: [
          IconButton(
              onPressed: () {
                _reset();
              },
              icon: const Icon(Icons.refresh))
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Icon(
                Icons.local_gas_station,
                size: 140.0,
                color: Colors.cyan,
              ),
              TextFormField(
                controller: alcoolController,
                validator: (value) =>
                value!.isEmpty ? "Informe o valor do Álcool" : null,
                keyboardType: TextInputType.number,
                // textAlign: TextAlign.center,
                style: TextStyle(color: Colors.lightBlue[900], fontSize: 24.0),
                decoration: InputDecoration(
                    prefixText: "R\$ ",
                    labelText: "Valor do Álcool",
                    labelStyle: TextStyle(color: Colors.lightBlue[900])),
              ),
              TextFormField(
                controller: gasolinaController,
                validator: (value) =>
                value!.isEmpty ? "Informe o valor do Gasolina" : null,
                keyboardType: TextInputType.number,
                // textAlign: TextAlign.center,
                style: TextStyle(color: Colors.lightBlue[900], fontSize: 24.0),
                decoration: InputDecoration(
                    prefixText: "R\$ ",
                    labelText: "Valor do Gasolina",
                    labelStyle: TextStyle(color: Colors.lightBlue[900])),
              ),
              Padding(
                padding: EdgeInsets.only(top: 26.0, bottom: 20.0),
                child: Container(
                  height: 60.0,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _calculaCombustivelIdeal();
                      }
                    },
                    child: Text("Verificar"),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.cyan,
                        textStyle: const TextStyle(fontSize: 24.0)),
                  ),
                ),
              ),
              Text(
                _resultado,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.lightBlue[900], fontSize: 26.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}