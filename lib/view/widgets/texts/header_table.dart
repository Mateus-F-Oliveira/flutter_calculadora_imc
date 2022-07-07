import 'package:flutter/material.dart';
import 'dart:core';

Widget headerTable({required String text})
{
  return Text(
    text,
    textAlign: TextAlign.center,
    style: const TextStyle(
      fontSize: 18,
      color: Color(0xFF08446c),
      fontWeight: FontWeight.bold
    ),
  );
}