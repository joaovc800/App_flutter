import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
      
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController pesoController = TextEditingController();
  TextEditingController alturaController = TextEditingController();

  String _resultado = "Informe os dados solicitados";

  void calcularIMC(){
    double peso  = double.parse(pesoController.text);
    double altura  = double.parse(alturaController.text);
    double calculo = peso / (altura * altura);

    setState(() {
      if(calculo < 18.5){
        _resultado = calculo.toStringAsPrecision(4) + " Magreza";
      }else if(calculo >18.5 && calculo <24.9){
        _resultado = calculo.toStringAsPrecision(4) + " Normal";
      }else if(calculo >25.0 && calculo < 29.9){
        _resultado = calculo.toStringAsPrecision(4) + " Sobrepeso";
      }else if(calculo > 30.0 && calculo < 39.9){
        _resultado = calculo.toStringAsPrecision(4) + " Obesidade";
      }else if(calculo > 40.0){
        _resultado = calculo.toStringAsPrecision(4) + " Obesidade Grave";
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calcule seu IMC"),
        backgroundColor: Colors.cyan,
      ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
               children: [
                const Icon(
                  Icons.accessibility_outlined,
                  size: 150.0,
                  color: Colors.black,
                ),
                TextFormField(
                  controller: pesoController,
                  validator: (value) => 
                  value!.isEmpty ? "Informe seu peso" : null,
                  keyboardType: TextInputType.text,
                  style: const TextStyle(color: Colors.cyan, fontSize: 24.0),
                  decoration:const InputDecoration(
                    labelText: "Seu peso",
                    labelStyle: TextStyle(color: Colors.cyan)
                  ),

                ),
                TextFormField(
                  controller: alturaController,
                  validator: (value) => 
                  value!.isEmpty ? "Informe sua altura" : null,
                  keyboardType: TextInputType.text,
                  style: const TextStyle(color: Colors.cyan, fontSize: 24.0),
                  decoration: const InputDecoration(
                    labelText: "Sua altura",
                    labelStyle: TextStyle(color: Colors.cyan)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 26.0, bottom: 20.0),
                  child : Container(
                    height: 60.0,
                    child: ElevatedButton(
                      onPressed: (){
                        if(_formKey.currentState!.validate()){
                          calcularIMC();
                        }
                      },
                      child: const Text("Calcular"),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.cyan,
                        textStyle: const TextStyle(fontSize: 24.0)
                      ),
                    ),
                  ),
                ),
                Text(
                  _resultado,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.cyan, fontSize: 26.0),
                )
              ],
            ),
          ),
        )

    );
  }
}
