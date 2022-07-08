import 'package:calculadora_imc/view/pages/settings.dart';
import 'package:calculadora_imc/view/global/global.dart';
import 'package:calculadora_imc/view/pages/infos.dart';
import 'package:calculadora_imc/view/pages/home.dart';
import 'package:flutter/material.dart';
import 'dart:core';

Widget footer(
{
  required double size, 
  required dynamic context
}) => BottomAppBar(
  color: global.getSecondary(),
  child: SizedBox(
    height: size*0.07,
    child: Row(
      children: [
        Expanded(
          flex: 1,
          child: SizedBox(
            child: IconButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Settings()
                )
              ),
              icon: Icon(
                Icons.settings,
                size: 32,
                color: global.getPrimary(),
              ),
            ),
          ),
        ),
        VerticalDivider(
          color: global.getPrimary(),
          width: 10,
        ),
        Expanded(
          flex: 1,
          child: SizedBox(
            child: IconButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Home()
                )
              ),
              icon: Icon(
                Icons.home,
                size: 32,
                color: global.getPrimary(),
              ),
            ),
          ),
        ),
        VerticalDivider(
          color: global.getPrimary(),
          width: 10,
        ),
        Expanded(
          flex: 1,
          child: SizedBox(
            child: IconButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Infos()
                )
              ),
              icon: Icon(
                Icons.info,
                size: 32,
                color: global.getPrimary(),
              ),
            ),
          ),
        )
      ],
    ),
  ),
);