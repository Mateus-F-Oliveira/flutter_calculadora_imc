import 'package:calculadora_imc/view/global/global.dart';
import 'package:calculadora_imc/view/pages/home.dart';
import 'package:flutter/material.dart';
import 'dart:core';
void main() async
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context)
  {
    global.setPrimary(primary: const Color(0xFFFFFAFA));
    global.setSecondary(secondary: const Color(0xFF08446c));
    return const MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );  
  }
}