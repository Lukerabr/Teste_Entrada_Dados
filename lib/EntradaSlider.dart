import 'package:flutter/material.dart';

class EntradaSlider extends StatefulWidget {
  const EntradaSlider({Key? key}) : super(key: key);

  @override
  _EntradaSliderState createState() => _EntradaSliderState();
}

class _EntradaSliderState extends State<EntradaSlider> {


  double _valor = 0;
  String _label = "0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Container(
        padding: EdgeInsets.all(60),
        child: Column(
          children: <Widget>[


            Slider(
                value: _valor,
                min: 0,
                max: 10,
                label: _label,
                divisions: 10,
                activeColor: Colors.redAccent,
                inactiveColor: Colors.grey,
                onChanged: (novoValor){
                  setState(() {
                    _valor = novoValor;
                    _label = novoValor.toString();
                  });

                },
            ),



            ElevatedButton(
              onPressed: (){
                print("Valor selecionado: " + _valor.toString());
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

