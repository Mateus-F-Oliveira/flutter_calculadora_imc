import 'package:calculadora_imc/view/widgets/ui_components/table_border_decoration.dart';
import 'package:calculadora_imc/view/widgets/table/show_table_row.dart';
import 'package:calculadora_imc/view/widgets/texts/header_table.dart';
import 'package:flutter/material.dart';
import 'dart:core';

Widget showTableIMC({required double size, required int option}) => Align(
  alignment: Alignment.topCenter,
  child: Padding(
    padding: EdgeInsets.only(
      top: size*0.5,
      left: size*0.02,
      right: size*0.02
    ),
    child: Table(
      children: [
        TableRow(
          children: [
            headerTable(text: "IMC"),
            headerTable(text: "Classificação")
          ]
        ),
        showTableRow(
          id: 1,
          option: option, 
          column1Value: "Menor do que 18,5", 
          column2Value: "Abaixo do peso"
        ),
        showTableRow(
          id: 2,
          option: option, 
          column1Value: "Entre 18,5 e 24,9", 
          column2Value: "Peso normal"
        ),
        showTableRow(
          id: 3,
          option: option, 
          column1Value: "Entre 25 e 29,9", 
          column2Value: "Acima do peso (sobrepeso)"
        ),
        showTableRow(
          id: 4,
          option: option, 
          column1Value: "Entre 30 e 34,9", 
          column2Value: "Obesidade I"
        ),
        showTableRow(
          id: 5,
          option: option, 
          column1Value: "Entre 35 e 39,9", 
          column2Value: "Obesidade II"
        ),
        showTableRow(
          id: 6,
          option: option, 
          column1Value: "Maior do que 40", 
          column2Value: "Obesidade III"
        ),
      ],
      border: tableBorderDecoration(),
      columnWidths: const {
        0: FlexColumnWidth(2),
        1: FlexColumnWidth(3)
      },
    ),
  ),
);