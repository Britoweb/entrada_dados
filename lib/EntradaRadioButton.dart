import 'package:flutter/material.dart';

class EntradaRadioButton extends StatefulWidget {
  const EntradaRadioButton({Key? key}) : super(key: key);

  @override
  _EntradaRadioButtonState createState() => _EntradaRadioButtonState();
}

class _EntradaRadioButtonState extends State<EntradaRadioButton> {

 String _escolhaUsuario = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de Dados - Radio Button"),
      ),
      body: Container(
        child: Column(
          children: [

            RadioListTile(
              title: Text("Masculino"),
                value: "masculino",
                groupValue: _escolhaUsuario,
                onChanged: (String? escolha) {
                  setState(() {
                    _escolhaUsuario = escolha!;
                  });
                }
            ),
            RadioListTile(
                title: Text("Feminino"),
                value: "feminino",
                groupValue: _escolhaUsuario,
                onChanged: (String? escolha) {
                  setState(() {
                    _escolhaUsuario = escolha!;
                  });

                }
            ),
            ElevatedButton(
                onPressed: (){
                  print(
                    "Resultado: " + _escolhaUsuario
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

            /*Radio(
                value: "masculino",
                groupValue: _escolhaUsuario,
                onChanged: (String? escolha) {
                  setState(() {
                    _escolhaUsuario = escolha!;
                  });
                  print("Escolha do usuário: " + escolha!);
                }
            ),
            Text("Masculino"),
            Radio(
                value: "feminino",
                groupValue: _escolhaUsuario,
                onChanged:  (String? escolha) {
                  setState(() {
                    _escolhaUsuario = escolha!;
                  });
                  print("Escolha do usuário: " + escolha!);
                }
            ),
            Text("Feminino"),
            */
          ],
        ),
      ),
    );
  }
}
