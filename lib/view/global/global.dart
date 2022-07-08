import 'dart:core';

class Global
{
  late bool themeDark;
  void setThemeDark({required bool themeDark}) => themeDark = themeDark;
  bool getThemeDark() => themeDark;
}

Global global = Global();