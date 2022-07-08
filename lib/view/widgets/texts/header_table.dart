import 'package:calculadora_imc/view/global/global.dart';
import 'package:flutter/material.dart';
import 'dart:core';

Widget headerTable({required String text}) => Text(
  text,
  textAlign: TextAlign.center,
  style: TextStyle(
    fontSize: 18,
    color: global.getSecondary(),
    fontWeight: FontWeight.bold
  ),
);