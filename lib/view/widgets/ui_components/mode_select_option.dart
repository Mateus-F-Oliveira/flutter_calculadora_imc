import 'package:flutter/material.dart';
import 'dart:core';

Widget modeSelectOption(
{
  required double size,
  required double padding
})
{
  return Align(
    alignment: Alignment.topLeft,
    child: Padding(
      padding: EdgeInsets.only(top: padding, left: size*0.03),
      child: Container(
        color: Colors.green,
        height: size*0.05,
        width: size*0.34,
      ),
    ),
  );
}