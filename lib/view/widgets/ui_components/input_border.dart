import 'package:calculadora_imc/view/global/global.dart';
import 'package:flutter/material.dart';
import 'dart:core';

OutlineInputBorder inputBorder() => OutlineInputBorder(
  borderRadius: const BorderRadius.all(
    Radius.circular(8)
  ),
  borderSide: BorderSide(
    color: global.getSecondary()
  )
);