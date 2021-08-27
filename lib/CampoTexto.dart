import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CampoTexto extends StatefulWidget {

  @override
  _CampoTextoState createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {

  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(32),
            child: TextField(
              //text, number, emailAddress, datetime
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Digite um valor"
              ),
              //enabled: false,
              //maxLength: 2,
              //maxLengthEnforcement: MaxLengthEnforcement.none,
              /*style: TextStyle(
                fontSize: 25,
                color: Colors.orange
              ),*/
              //obscureText: false,
              /*onChanged: (String texto){
                print("valor digitado: " + texto);
              },*/
              onSubmitted: (String texto){
                print("digitado: " + texto);
              },
              controller: _textEditingController,
            ),
          ),
          ElevatedButton(
            onPressed: (){
              print("valor digitado: " + _textEditingController.text);
            },
            child: Text("Salvar"),
            style: ElevatedButton.styleFrom(
              primary: Colors.lightBlueAccent,
            ),
          )
        ],
      ),
    );
  }
}
