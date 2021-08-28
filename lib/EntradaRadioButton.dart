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
        title: Text("Entrada de dados"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[

            RadioListTile(
              title: Text("Masculino"),
                value: "Masculino",
                groupValue: _escolhaUsuario,
                onChanged: (escolha){
                  setState(() {
                    _escolhaUsuario = escolha.toString();
                  });
                  print("Resultado: " + escolha.toString());
                }
            ),

            RadioListTile(
                title: Text("Feminino"),
                value: "Feminino",
                groupValue: _escolhaUsuario,
                onChanged: (escolha){
                  setState(() {
                    _escolhaUsuario = escolha.toString();
                  });
                  print("Resultado: " + escolha.toString());
                }
            ),

            RadioListTile(
                title: Text("Neutre"),
                value: "Neutre",
                groupValue: _escolhaUsuario,
                onChanged: (escolha){

                  setState(() {
                    _escolhaUsuario = escolha.toString();
                  });
                  print("Resultado: " + escolha.toString());
                }
            ),

            ElevatedButton(
              onPressed: (){
                print("Resultado: " + _escolhaUsuario);
              },
              child: Text(
                  "Salvar",
                  style: TextStyle(
                      fontSize: 15
                  )),
            )










            /*
            Text("Masculino"),
            Radio(
                value: "masculino",
                groupValue: _escolhaUsuario,
                onChanged: (escolha){
                  setState(() {
                    _escolhaUsuario = escolha.toString();
                  });
                  print("Resultado: " + escolha.toString());
                }
            ),

            Text("Feminino"),
            Radio(
                value: "feminino",
                groupValue: _escolhaUsuario,
                onChanged: (escolha){
                  setState(() {
                    _escolhaUsuario = escolha.toString();
                  });
                  print("Resultado: " + escolha.toString());
                }
            )
            */



          ],
        ),
      ),
    );
  }
}
