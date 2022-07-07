import 'package:flutter/material.dart';
import 'dart:core';

Widget showResult({required double size, required double result})
{
  return Align(
    alignment: Alignment.topCenter,
    child: Padding(
      padding: EdgeInsets.only(top: size*0.16),
      child: RichText(
        text: TextSpan(
          style: const TextStyle(
            fontSize: 24,
            color: Color(0xFF08446c),
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
}