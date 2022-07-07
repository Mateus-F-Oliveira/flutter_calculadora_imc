import 'package:flutter/material.dart';
import 'dart:core';


AppBar header({required String title})
{
  return AppBar(
    title: Text(
      title,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 20,
        color: Color(0xFFFFFAFA),
        fontWeight: FontWeight.bold,
      ),
    ),
    centerTitle: true,
    backgroundColor: const Color(0xFF08446c),
    automaticallyImplyLeading: false,
  );
}