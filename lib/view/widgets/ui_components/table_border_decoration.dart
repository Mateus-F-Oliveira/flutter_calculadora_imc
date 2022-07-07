import 'package:flutter/material.dart';
import 'dart:core';

TableBorder tableBorderDecoration()
{
  return const TableBorder(
    top: BorderSide(
      width: 2,
      color: Color(0xFF08446c),
      style: BorderStyle.solid
    ),
    bottom: BorderSide(
      width: 2,
      color: Color(0xFF08446c),
      style: BorderStyle.solid
    ),
    left: BorderSide(
      width: 2,
      color: Color(0xFF08446c),
      style: BorderStyle.solid
    ),
    right: BorderSide(
      width: 2,
      color: Color(0xFF08446c),
      style: BorderStyle.solid
    ),
    horizontalInside: BorderSide(
      width: 1,
      color: Color(0xFF08446c),
      style: BorderStyle.solid
    ),
    verticalInside: BorderSide(
      width: 1,
      color: Color(0xFF08446c),
      style: BorderStyle.solid
    ),
  );
}