import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:uni_clima/model/clima_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:uni_clima/widgets/clima_widget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late ClimaModel climaModel;
  bool isLoading = false;
  final List<String> _cidades = [
    "Aracaju",
    "Belém",
    "Belo Horizonte",
    "Boa Vista",
    "Brasilia",
    "Campo Grande",
    "Cuiaba",
    "Curitiba",
    "Florianopolis",
    "Fortaleza",
    "Goiânia",
    "João Pessoa",
    "Macapá",
    "Maceió",
    "Manaus",
    "Natal",
    "Palmas",
    "Porto Alegre",
    "Porto Velho",
    "Recife",
    "Rio Branco",
    "Rio de Janeiro",
    "Salvador",
    "São Luiz",
    "São Paulo",
    "Teresina",
    "Vitória"
  ];

  String _cidadeSelecionada = "São Paulo";

  @override
  void initState() {
    super.initState();
    carregaClima();
  }

  carregaClima() async {
    setState(() {
      isLoading = true;
    });

    const String _appid = "f6c0b72d4088e450b9e210292602da7b";
    const String _lang = "pt_br";
    const String _units = "metric";
    const String _apiURL = "api.openweathermap.org";
    const String _path = "/data/2.5/weather";

    final _parametros = {
      "q": _cidadeSelecionada,
      "appid": _appid,
      "lang": _lang,
      "units": _units
    };

    final climaResponse =
        await http.get(Uri.https(_apiURL, _path, _parametros));

    //Apenas para verificar se a URL foi montada adequadamente:
    //print('Url montada: ' + climaResponse.request.url.toString());

    if (climaResponse.statusCode == 200) {
      setState(() {
        climaModel = ClimaModel.fromJson(jsonDecode(climaResponse.body));
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_cidadeSelecionada),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            _buildList(_cidades),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                    padding: const EdgeInsets.all(6),
                    child: isLoading
                        ? const CircularProgressIndicator(
                            strokeWidth: 3,
                            valueColor: AlwaysStoppedAnimation(Colors.blue),
                          )
                        : climaModel != null
                            ? ClimaWidget(climaModel: climaModel)
                            : Container(
                                child: Text(
                                  "Sem dados para exibir",
                                  style: Theme.of(context).textTheme.headline3,
                                ),
                              )),
                Padding(
                    padding: const EdgeInsets.all(8),
                    child: isLoading
                        ? Container(
                            child: Text(
                              "Carregando...",
                              style: Theme.of(context).textTheme.headline5,
                            ),
                          )
                        : IconButton(
                            onPressed: carregaClima,
                            icon: const Icon(Icons.refresh),
                            color: Colors.blue,
                            iconSize: 50,
                            tooltip: "Recarrega o clima",
                          ))
              ],
            ))
          ],
        ),
      ),
    );
  }

  Widget _buildList(List<String> listData) {
    return DropdownSearch<String>(
      mode: Mode.MENU,
      showSelectedItems: true,
      maxHeight: MediaQuery.of(context).size.height - 100,
      items: listData,
      selectedItem: _cidadeSelecionada,
      showSearchBox: true,
      onChanged: (value) {
        setState(() {
          if (value == null || value == "") {
            _cidadeSelecionada = "Selecione uma cidade";
          } else {
            _cidadeSelecionada = value;
            carregaClima();
          }
        });
      },
      validator: (value) =>
          value == null || value.isEmpty ? "Selecione uma cidade" : null,
      autoValidateMode: AutovalidateMode.onUserInteraction,
      showClearButton: false,
      clearButton: const Icon(Icons.close),
    );
  }
}
