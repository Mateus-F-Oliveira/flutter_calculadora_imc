import 'package:calculadora_imc/view/widgets/texts/value_table.dart';
import 'package:flutter/material.dart';
import 'dart:core';

TableRow showTableRow(
{
  required int id,
  required int option,
  required String column1Value,
  required String column2Value
}) => TableRow(
  children: [
    option == id ? valueTable(
      text: column1Value,
      selected: true
    ) : valueTable(
      text: column1Value,
      selected: false
    ),
    option == id ? valueTable(
      text: column2Value,
      selected: true
    ) : valueTable(
      text: column2Value,
      selected: false
    )
  ]
);
