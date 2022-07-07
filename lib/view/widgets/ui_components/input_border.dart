import 'package:flutter/material.dart';
import 'dart:core';

OutlineInputBorder inputBorder()
{
  return const OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(8)
    ),
    borderSide: BorderSide(
      color: Color(0xFF08446c)
    )
  );
}