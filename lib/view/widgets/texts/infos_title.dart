import 'package:calculadora_imc/view/global/global.dart';
import 'package:flutter/material.dart';
import 'dart:core';

Widget infosTitle({required String title, }) => Container(
  color: Colors.green,
  child: Text(
    title,
    textAlign: TextAlign.center,
    style: TextStyle(
      color: global.getSecondary(),
      fontSize: 18,
      fontWeight: FontWeight.bold
    ),
  ),
);