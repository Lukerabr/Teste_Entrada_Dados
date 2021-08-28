import 'package:entrada_dados/CampoTexto.dart';
import 'package:flutter/material.dart';
import 'package:entrada_dados/EntradaCheckbox.dart';
import 'EntradaRadioButton.dart';
import 'EntradaSlider.dart';
import 'EntradaSwitch.dart';

void main(){
  runApp(
      MaterialApp(
        //home: CampoTexto(),
        //home: EntradaCheckbox(),
        //home: EntradaRadioButton(),
        //home: EntradaSwitch(),
        home: EntradaSlider(),
      )
  );
}