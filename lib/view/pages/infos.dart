import 'package:calculadora_imc/view/widgets/ui_components/footer.dart';
import 'package:calculadora_imc/view/widgets/ui_components/header.dart';
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
      backgroundColor: const Color(0xFFFFFAFA),
    );  
  }
}

//Color(0xFFFFFAFA),
//Color(0xFF08446c),
