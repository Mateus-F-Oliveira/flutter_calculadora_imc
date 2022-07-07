import 'package:flutter/material.dart';
import 'dart:core';

Widget valueTable({required String text, required bool selected})
{
  return Container(
    color: selected ? const Color.fromARGB(255, 1, 255, 1) : Colors.transparent,
    child: Text(
      text,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 15,
        color: Color(0xFF08446c),
      ),
    ),
  );
}