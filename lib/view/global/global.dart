import 'package:flutter/material.dart';
import 'dart:core';

class Global
{
  late bool _themeDark;
  late Color _primary;
  late Color _secondary;
  void setThemeDark({required bool themeDark}) => _themeDark = themeDark;
  void setPrimary({required Color primary}) => _primary = primary;
  void setSecondary({required Color secondary}) => _secondary = secondary;
  bool getThemeDark() => _themeDark;
  Color getPrimary() => _primary;
  Color getSecondary() => _secondary;
}

Global global = Global();