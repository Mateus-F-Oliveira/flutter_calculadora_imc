import 'package:calculadora_imc/view/global/global.dart';
import 'package:flutter/material.dart';
import 'dart:core';

Widget optionsSettingsTitle({required double size}) => Align(
  alignment: Alignment.topCenter,
  child: SizedBox(
    height: size*0.06,
    width: size*0.3,
    child: Center(
      child: Text(
        "Configurar Modo de Tela",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 18,
          color: global.getSecondary(),
          fontWeight: FontWeight.bold
        ),
      ),
    ),
  ),
);