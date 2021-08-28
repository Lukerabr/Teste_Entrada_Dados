import 'package:flutter/material.dart';

class EntradaSwitch extends StatefulWidget {
  const EntradaSwitch({Key? key}) : super(key: key);

  @override
  _EntradaSwitchState createState() => _EntradaSwitchState();
}

class _EntradaSwitchState extends State<EntradaSwitch> {

  bool _escolhaUsuario = false;
  bool _escolhaConfiguracao = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[

            SwitchListTile(
              title: Text("Receber notificações?"),
                value: _escolhaUsuario,
                onChanged: (valor){
                  setState(() {
                    _escolhaUsuario = valor;
                  });
                }
            ),

            SwitchListTile(
                title: Text("Carregar imagens automaticamente?"),
                value: _escolhaConfiguracao,
                onChanged: (valor){
                  setState(() {
                    _escolhaConfiguracao = valor;
                  });
                }
            ),

            ElevatedButton(
              onPressed: (){
                print("Escolha notificações: " + _escolhaUsuario.toString() + "\n" +
                    "Escolha carregar imagens: " + _escolhaConfiguracao.toString());
                    },
              child: Text(
                  "Salvar",
                  style: TextStyle(
                      fontSize: 15
                  )),
            )


            /*
            Switch(
                value: _escolhaUsuario,
                onChanged: (valor){
                  setState(() {
                    _escolhaUsuario = valor;
                  });
                }
            ),*/

          ],
        ),
      ),
    );
  }
}
