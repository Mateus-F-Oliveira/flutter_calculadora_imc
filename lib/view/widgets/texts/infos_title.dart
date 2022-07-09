import 'package:calculadora_imc/view/global/global.dart';
import 'package:flutter/material.dart';
import 'dart:core';

Widget infosTitle({required String title}) => Padding(
  padding: const EdgeInsets.only(top: 10),
  child: Text(
    title,
    textAlign: TextAlign.center,
    style: TextStyle(
      color: global.getSecondary(),
      fontSize: 20,
      fontWeight: FontWeight.bold
    ),
  ),
);