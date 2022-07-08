import 'package:flutter/material.dart';
import 'dart:core';

Widget optionsSettingsTitle({required double size})
{
  return Align(
    alignment: Alignment.topCenter,
    child: SizedBox(
      height: size*0.06,
      width: size*0.3,
      child: const Center(
        child: Text(
          "Configurar Modo de Tela",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            color: Color(0xFF08446c),
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    ),
  );
}