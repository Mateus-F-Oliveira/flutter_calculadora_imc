import 'package:calculadora_imc/view/widgets/texts/options_settings_title.dart';
import 'package:calculadora_imc/view/widgets/ui_components/footer.dart';
import 'package:calculadora_imc/view/widgets/ui_components/header.dart';
import 'package:calculadora_imc/view/global/global.dart';
import 'package:flutter/material.dart';
import 'dart:core';
class Settings extends StatefulWidget
{
  const Settings({Key? key}) : super(key: key);
  @override
  State<Settings> createState() => _SettingsState();
}

enum ScreenModeOption { lightTheme, darkTheme }
class _SettingsState extends State<Settings>
{
  ScreenModeOption? _option;
  initializeScreenModeOption() async
  {
    if(global.getThemeDark() == true)
    {
      _option = ScreenModeOption.darkTheme;
    }
    else
    {
      _option = ScreenModeOption.lightTheme;
    }
  }
  @override
  Widget build(BuildContext context)
  {
    double size = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: header(title: "Configurações"),
      bottomNavigationBar: footer(size: size, context: context),
      backgroundColor: global.getPrimary(),
      body: Center(
        child: SizedBox(
          height: size*0.2,
          width: size*0.4,
          child: Stack(
            children: [
              optionsSettingsTitle(size: size),
              FutureBuilder(
                builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot)
                {
                  return Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: size*0.05),
                        child: ListTile(
                          title: Text("Modo Claro", style: TextStyle(color: global.getSecondary())),
                          leading: Radio<ScreenModeOption>(
                            value: ScreenModeOption.lightTheme,
                            groupValue: _option,
                            onChanged: (ScreenModeOption? value) async
                            {
                              setState(() => _option = value);
                              global.setPrimary(primary: const Color(0xFFFFFAFA));
                              global.setSecondary(secondary: const Color(0xFF08446c));
                              global.setThemeDark(themeDark: false);
                            },
                            fillColor: MaterialStateProperty.all(global.getSecondary()),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: size*0.1),
                        child: ListTile(
                          title: Text("Modo Escuro", style: TextStyle(color: global.getSecondary())),
                          leading: Radio<ScreenModeOption>(
                            value: ScreenModeOption.darkTheme,
                            groupValue: _option,
                            onChanged: (ScreenModeOption? value) async
                            {
                              setState(() => _option = value);
                              global.setPrimary(primary: const Color(0xFF08446c));
                              global.setSecondary(secondary: const Color(0xFFFFFAFA));
                              global.setThemeDark(themeDark: true);
                            },
                            fillColor: MaterialStateProperty.all(global.getSecondary()),
                          ),
                        ),
                      )
                    ],
                  );
                },
                future: initializeScreenModeOption(),
              )
            ],
          ),
        ),
      ),
    );  
  }
}