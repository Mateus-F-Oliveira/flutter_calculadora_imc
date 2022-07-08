import 'package:calculadora_imc/view/widgets/ui_components/mode_select_option.dart';
import 'package:calculadora_imc/view/widgets/texts/options_settings_title.dart';
import 'package:flutter/material.dart';
import 'dart:core';

Widget optionsSettings({required double size})
{
  return Center(
    child: SizedBox(
      height: size*0.2,
      width: size*0.4,
      child: Stack(
        children: [
          optionsSettingsTitle(size: size),
          modeSelectOption(size: size, padding: size*0.08),
          modeSelectOption(size: size, padding: size*0.14)
        ],
      ),
    ),
  );
}