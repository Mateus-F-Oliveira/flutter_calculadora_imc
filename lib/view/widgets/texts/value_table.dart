import 'package:calculadora_imc/view/global/global.dart';
import 'package:flutter/material.dart';
import 'dart:core';

Widget valueTable(
{
  required String text, 
  required bool selected
}) => Container(
  color: selected ? const Color.fromARGB(255, 1, 255, 1) : Colors.transparent,
  child: Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
      fontSize: 15,
      color: global.getSecondary(),
    ),
  ),
);