import 'package:calculadora_imc/view/global/global.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'dart:core';

Widget openLinkInNewWindow(
{
  required String link,
  required double size
})
{
  return Padding(
    padding: const EdgeInsets.only(top: 10),
    child: Center(
      child: Container(
        decoration: BoxDecoration(
          color: global.getSecondary(),
          borderRadius: const BorderRadius.all(Radius.circular(6))
        ),
        height: size*0.06,
        width: size*0.16,
        child: TextButton(
          //onPressed: () async => html.window.open(link, 'new tab'),
          onPressed: () => launchURLBrowser(link: link),
          child: Text(
            "Ver Fonte",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: global.getPrimary(),
              fontSize: 15
            ),
          )
        ),    
      ),
    ),
  );
}

launchURLBrowser({required String link}) async
{
  final Uri url = Uri.parse(link);
  if(await canLaunchUrl(url))
  {
    await launchUrl(url);
  }
  else
  {
    throw 'Não foi possível abrir $url';
  }
}