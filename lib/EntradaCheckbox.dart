import 'package:flutter/material.dart';

class EntradaCheckbox extends StatefulWidget {
  const EntradaCheckbox({Key? key}) : super(key: key);

  @override
  _EntradaCheckboxState createState() => _EntradaCheckboxState();
}

class _EntradaCheckboxState extends State<EntradaCheckbox> {
  bool _comidaBrasileira = false;
  bool _comidaMexicana = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de Dados"),
      ),
      body: Container(
        child: Column(
          children: [
            CheckboxListTile(
                title: Text("Comida Brasileira"),
                subtitle: Text("A melhor comida do mundo!!"),
                activeColor: Colors.green,
                //selected: true,
                //secondary: Icon(Icons.add_box),
                value: _comidaBrasileira,
                onChanged: (bool? valor) {
                  setState(() {
                    _comidaBrasileira = valor!;
                  });
                }),
            CheckboxListTile(
                title: Text("Comida Mexicana"),
                subtitle: Text("A comida apimentada!!"),
                activeColor: Colors.green,
                //selected: true,
                //secondary: Icon(Icons.add_box),
                value: _comidaMexicana,
                onChanged: (bool? valor) {
                  setState(() {
                    _comidaMexicana = valor!;
                  });
                }),
            ElevatedButton(
                onPressed: (){
                  print(
                      "Comida brasileira: " + _comidaBrasileira.toString() +
                      " Comida mexicana: " + _comidaMexicana.toString()
                  );
                },
                child: Text(
                  "Salvar",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}
