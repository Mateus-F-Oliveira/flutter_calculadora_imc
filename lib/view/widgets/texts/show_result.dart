import 'package:calculadora_imc/view/global/global.dart';
import 'package:flutter/material.dart';
import 'dart:core';

Widget showResult(
{
  required double size,
  required double result
}) => Align(
  alignment: Alignment.topCenter,
  child: Padding(
    padding: EdgeInsets.only(top: size*0.16),
    child: RichText(
      text: TextSpan(
        style: TextStyle(
          fontSize: 24,
          color: global.getSecondary(),
        ),
        children: [
          const TextSpan(
            text: "Resultado: ",
            style: TextStyle(
              fontWeight: FontWeight.bold
            ) 
          ),
          TextSpan(
            text: result.toStringAsFixed(2)
          )
        ]
      )
    )
  )
);