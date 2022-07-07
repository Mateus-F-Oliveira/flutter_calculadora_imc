import 'package:calculadora_imc/view/widgets/ui_components/footer.dart';
import 'package:calculadora_imc/view/widgets/ui_components/header.dart';
import 'package:flutter/material.dart';
import 'dart:core';

class Settings extends StatefulWidget
{
  const Settings({Key? key}) : super(key: key);
  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings>
{
  @override
  Widget build(BuildContext context)
  {
    double size = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: header(title: "Configurações"),
      bottomNavigationBar: footer(size: size, context: context),
      backgroundColor: const Color(0xFFFFFAFA),
    );  
  }
}