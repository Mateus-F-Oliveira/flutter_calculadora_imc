import 'package:calculadora_imc/view/widgets/texts/header_table.dart';
import 'package:calculadora_imc/view/widgets/texts/value_table.dart';
import 'package:calculadora_imc/view/widgets/ui_components/table_border_decoration.dart';
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
        TableRow(
          children: [
            option == 1 ? valueTable(
              text: "Menor do que 18,5",
              selected: true
            ) : valueTable(
              text: "Menor do que 18,5",
              selected: false
            ),
            option == 1 ? valueTable(
              text: "Abaixo do peso",
              selected: true
            ) : valueTable(
              text: "Abaixo do peso",
              selected: false
            )
          ]
        ),
        TableRow(
          children: [
            option == 2 ? valueTable(
              text: "Entre 18,5 e 24,9",
              selected: true
            ) : valueTable(
              text: "Entre 18,5 e 24,9",
              selected: false
            ) ,
            option == 2 ? valueTable(
              text: "Peso normal",
              selected: true
            ) : valueTable(
              text: "Peso normal",
              selected: false
            )
          ]
        ),
        TableRow(
          children: [
            option == 3 ? valueTable(
              text: "Entre 25 e 29,9",
              selected: true
            ) : valueTable(
              text: "Entre 25 e 29,9",
              selected: false
            ),
            option == 3 ? valueTable(
              text: "Acima do peso (sobrepeso)",
              selected: true
            ) : valueTable(
              text: "Acima do peso (sobrepeso)",
              selected: false
            )
          ]
        ),
        TableRow(
          children: [
            option == 4 ? valueTable(
              text: "Entre 30 e 34,9",
              selected: true
            ) : valueTable(
              text: "Entre 30 e 34,9",
              selected: false
            ),
            option == 4 ? valueTable(
              text: "Obesidade I",
              selected: true
            ) : valueTable(
              text: "Obesidade I",
              selected: false
            )
          ]
        ),
        TableRow(
          children: [
            option == 5 ? valueTable(
              text: "Entre 35 e 39,9",
              selected: true
            ) : valueTable(
              text: "Entre 35 e 39,9",
              selected: false
            ),
            option == 5 ? valueTable(
              text: "Obesidade II",
              selected: true
            ) : valueTable(
              text: "Obesidade II",
              selected: false
            )
          ]
        ),
        TableRow(
          children: [
            option == 6 ? valueTable(
              text: "Maior do que 40",
              selected: true
            ) : valueTable(
              text: "Maior do que 40",
              selected: false
            ),
            option == 6 ? valueTable(
              text: "Obesidade III",
              selected: true
            ) : valueTable(
              text: "Obesidade III",
              selected: false
            )
          ]
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