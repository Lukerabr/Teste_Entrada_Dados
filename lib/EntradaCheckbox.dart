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
        title: Text("Entrada de dados"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[

            CheckboxListTile(
                title: Text("Comida Brasileira."),
                subtitle: Text("A melhor comida do mundo!"),
                activeColor: Colors.redAccent,
                //selected: true,
                secondary: Icon(Icons.add_shopping_cart),
                value: _comidaBrasileira,
                onChanged: (valor){
                  setState(() {
                    _comidaBrasileira = valor!;
                  });
                }
            ),
            CheckboxListTile(
                title: Text("Comida Mexicana."),
                subtitle: Text("A segunda melhor comida do mundo!"),
                activeColor: Colors.redAccent,
                //selected: true,
                secondary: Icon(Icons.add_shopping_cart),
                value: _comidaMexicana,
                onChanged: (valor){
                  setState(() {
                    _comidaMexicana = valor!;
                  });
                }
            ),
            ElevatedButton(
                onPressed: (){
                  print(
                    "Comida Brasileira: " + _comidaBrasileira.toString() + "\n" +
                    "Comida Mexicana: " + _comidaMexicana.toString()
                  );
                },
                child: Text(
                    "Salvar",
                    style: TextStyle(
                      fontSize: 15
                    )),
                )


            /*
            Text("Comida Brasileira"),
            Checkbox(
                value: _estaSelecionado,
                onChanged: (valor){
                  setState(() {
                    _estaSelecionado = valor!;
                  });
                  print("Checkbox " + _estaSelecionado.toString());
                })
             */

          ],
        ),
      ),
    );
  }
}
