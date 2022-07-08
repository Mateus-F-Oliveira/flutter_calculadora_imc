import 'package:calculadora_imc/view/widgets/texts/infos_text.dart';
import 'package:calculadora_imc/view/widgets/texts/infos_title.dart';
import 'package:calculadora_imc/view/widgets/ui_components/footer.dart';
import 'package:calculadora_imc/view/widgets/ui_components/header.dart';
import 'package:calculadora_imc/view/global/global.dart';
import 'package:flutter/material.dart';
import 'dart:core';

class Infos extends StatelessWidget
{
  const Infos({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context)
  {
    double size = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: header(title: "Sobre o IMC"),
      bottomNavigationBar: footer(size: size, context: context),
      backgroundColor: global.getPrimary(),
      body: Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: EdgeInsets.only(
            top: size*0.05,
            left: size*0.03,
            right: size*0.03,
            bottom: size*0.05
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              infosTitle(title: "O que é IMC"),
              infosText(text: "O IMC é um índice que mede se você está abaixo, dentro ou acima do peso, de acordo com a relação entre seu peso e altura. Descubra como calcular esse índice, quais os valores ideais, as exceções da tabela padrão, a especificidade do IMC para crianças e jovens e muito mais neste artigo completo.")
            ],
          ),
        ),
      ),
    );  
  }
}