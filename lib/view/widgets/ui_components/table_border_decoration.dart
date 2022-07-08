import 'package:calculadora_imc/view/global/global.dart';
import 'package:flutter/material.dart';
import 'dart:core';

TableBorder tableBorderDecoration() => TableBorder(
  top: BorderSide(
    width: 2,
    color: global.getSecondary(),
    style: BorderStyle.solid
  ),
  bottom: BorderSide(
    width: 2,
    color: global.getSecondary(),
    style: BorderStyle.solid
  ),
  left: BorderSide(
    width: 2,
    color: global.getSecondary(),
    style: BorderStyle.solid
  ),
  right: BorderSide(
    width: 2,
    color: global.getSecondary(),
    style: BorderStyle.solid
  ),
  horizontalInside: BorderSide(
    width: 1,
    color: global.getSecondary(),
    style: BorderStyle.solid
  ),
  verticalInside: BorderSide(
    width: 1,
    color: global.getSecondary(),
    style: BorderStyle.solid
  ),
);