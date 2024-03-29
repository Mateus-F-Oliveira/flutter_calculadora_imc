import 'package:calculadora_imc/view/global/global.dart';
import 'package:flutter/material.dart';
import 'dart:core';

Widget infosText({required String text}) => Padding(
  padding: const EdgeInsets.only(top: 5),
  child: Text(
    text,
    textAlign: TextAlign.justify,
    style: TextStyle(
      color: global.getSecondary(),
      fontSize: 14
    ),
  ),
);