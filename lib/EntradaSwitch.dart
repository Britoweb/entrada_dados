import 'package:flutter/material.dart';


class EntradaSwitch extends StatefulWidget {
  const EntradaSwitch({Key? key}) : super(key: key);

  @override
  _EntradaSwitchState createState() => _EntradaSwitchState();
}

class _EntradaSwitchState extends State<EntradaSwitch> {

  bool _escolhaUsuario = false;
  bool _escolhaConfiguracao = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de Dados - Entrada Switch"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
           SwitchListTile(
             activeColor: Colors.lightGreen,
             subtitle: Text( "Somos muito legais!"),
             title: Text(
               "Receber notificações? "
             ),
                  value: _escolhaUsuario,
                  onChanged: (bool? valor) {
                    setState(() {
                      _escolhaUsuario = valor!;
                    });
                  }
              ),
              SwitchListTile(
                  activeColor: Colors.amberAccent,
                  subtitle: Text( "Pode consumir muita banda móvel!"),
                  title: Text(
                      "Carregar imagens automaticamente? "
                  ),
                  value: _escolhaConfiguracao,
                  onChanged: (bool? valor) {
                    setState(() {
                      _escolhaConfiguracao = valor!;
                    });
                  }
              ),

              ElevatedButton(
                  onPressed: (){

                    if( _escolhaUsuario) {
                      print(
                          "Escolha Usuário: ativar notificação!"
                      );
                    }else{
                      print(
                          "Escolha Usuário: Não ativar notificação!"
                      );
                    }

                    if( _escolhaConfiguracao) {
                      print(
                          "Escolha Usuário: ativar configuração!"
                      );
                    }else{
                      print(
                          "Escolha Usuário: Não ativar configuração!"
                      );
                    }

                  },
                  child: Text(
                    "Salvar",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )
              ),

              /*Switch(
                  value: _escolhaUsuario,
                  onChanged: (bool? valor) {
                    setState(() {
                      _escolhaUsuario = valor!;
                      print(_escolhaUsuario);
                    });
                  }
              ),*/

            ],
          ),
        ),
      ),
    );
  }
}
