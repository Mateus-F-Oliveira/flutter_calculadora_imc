import 'package:calculadora_imc/view/global/global.dart';
import 'package:flutter/material.dart';
import 'dart:core';

Widget itemListInfos({required String text}) => Padding(
  padding: const EdgeInsets.only(top: 5),
  child: Text(
    text,
    textAlign: TextAlign.left,
    style: TextStyle(
      color: global.getSecondary(),
      fontSize: 16,
      fontWeight: FontWeight.bold
    ),
  ),
);