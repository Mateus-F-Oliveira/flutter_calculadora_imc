import 'package:flutter/material.dart';
import 'dart:core';

Widget darkModeOption({required double size})
{
  return Align(
    alignment: Alignment.topLeft,
    child: Padding(
      padding: EdgeInsets.only(top: size*0.14, left: size*0.03),
      child: Container(
        color: Colors.red,
        height: size*0.05,
        width: size*0.24,
      ),
    ),
  );
}