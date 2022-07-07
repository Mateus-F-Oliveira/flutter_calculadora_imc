import 'package:calculadora_imc/view/widgets/ui_components/footer.dart';
import 'package:calculadora_imc/view/widgets/ui_components/input_border.dart';
import 'package:calculadora_imc/view/widgets/table/show_table_imc.dart';
import 'package:calculadora_imc/view/widgets/ui_components/header.dart';
import 'package:calculadora_imc/view/widgets/texts/show_result.dart';
import 'package:flutter/material.dart';
import 'dart:core';

class Home extends StatefulWidget
{
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home>
{
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  late int _option;
  late double _result;
  @override
  void initState()
  {
    _option = 0;
    _result = 0;
    super.initState();
  }
  @override
  Widget build(BuildContext context)
  {
    double size = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: header(title: "Calculadora de IMC"),
      bottomNavigationBar: footer(size: size, context: context),
      backgroundColor: const Color(0xFFFFFAFA),
      body: Stack(
        children: [
          input(
            size: size, 
            controller: weightController,
            padding: 0.2
          ),
          input(
            size: size,
            controller: heightController,
            padding: 0.3
          ),
          calculateButton(size: size),
          showTableIMC(size: size, option: _option),
          showResult(size: size, result: _result)
        ],
      ),
    );  
  }

  Widget input(
  {
    required double size,
    required TextEditingController controller,
    required double padding
  }) => Align(
    alignment: Alignment.topCenter,
    child: Padding(
      padding: EdgeInsets.only(top: size*padding),
      child: SizedBox(
        height: size*0.1,
        width: size*0.4,
        child: Center(
          child: TextField(
            controller: controller,
            enabled: true,
            style: const TextStyle(
              color: Color(0xFF08446c),
              fontSize: 16
            ),
            decoration: InputDecoration(
              labelText: "Peso",
              labelStyle: const TextStyle(
                fontSize: 12,
                color: Color(0xFF08446c),
              ),
              border: inputBorder(),
              enabledBorder: inputBorder(),
              focusedBorder: inputBorder(),
            ),
          ),
        ),
      ),
    ),
  );

  Widget calculateButton({required double size}) => Align(
    alignment: Alignment.topCenter,
    child: Padding(
      padding: EdgeInsets.only(top: size*0.415),
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0xFF08446c),
          borderRadius: BorderRadius.all(Radius.circular(4))
        ),
        height: size*0.06,
        width: size*0.18,
        child: TextButton(
          onPressed: ()
          {
            FocusManager.instance.primaryFocus?.unfocus();
            double weight = double.parse(weightController.text.toString());
            double height = double.parse(heightController.text.toString()) / 100;
            double result = weight / (height * height);
            setState(()
            {
              weightController.clear();
              heightController.clear();
              _result = result;
            });
            if(result < 18.5) {setState(() => _option = 1);}
            else if(result >= 18.5 && result < 25) {setState(() => _option = 2);}
            else if(result >= 25 && result < 30) {setState(() => _option = 3);}
            else if(result >= 30 && result < 35) {setState(() => _option = 4);}
            else if(result >= 35 && result < 40) {setState(() => _option = 5);}
            else {setState(() => _option = 6);}
          },
          child: const Text(
            "Calcular",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFFFFFAFA),
              fontSize: 18
            ),
          ),
        ),
      ),
    ),
  );
}