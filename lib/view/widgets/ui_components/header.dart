import 'package:calculadora_imc/view/global/global.dart';
import 'package:flutter/material.dart';
import 'dart:core';


AppBar header({required String title}) => AppBar(
  title: Text(
    title,
    textAlign: TextAlign.center,
    style: TextStyle(
      fontSize: 20,
      color: global.getPrimary(),
      fontWeight: FontWeight.bold,
    ),
  ),
  centerTitle: true,
  backgroundColor: global.getSecondary(),
  automaticallyImplyLeading: false,
);