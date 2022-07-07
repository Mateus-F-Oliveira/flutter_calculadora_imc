import 'package:calculadora_imc/view/pages/settings.dart';
import 'package:calculadora_imc/view/pages/infos.dart';
import 'package:calculadora_imc/view/pages/home.dart';
import 'package:flutter/material.dart';
import 'dart:core';

Widget footer({required double size, required dynamic context})
{
  return BottomAppBar(
    color: const Color(0xFF08446c),
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
                icon: const Icon(
                  Icons.settings,
                  size: 32,
                  color: Color(0xFFFFFAFA),
                ),
              ),
            ),
          ),
          const VerticalDivider(
            color: Color(0xFFFFFAFA),
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
                icon: const Icon(
                  Icons.home,
                  size: 32,
                  color: Color(0xFFFFFAFA),
                ),
              ),
            ),
          ),
          const VerticalDivider(
            color: Color(0xFFFFFAFA),
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
                icon: const Icon(
                  Icons.info,
                  size: 32,
                  color: Color(0xFFFFFAFA),
                ),
              ),
            ),
          )
        ],
      ),
    ),
  );
}