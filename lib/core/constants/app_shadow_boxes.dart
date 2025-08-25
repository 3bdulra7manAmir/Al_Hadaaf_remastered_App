import 'package:flutter/material.dart';

abstract class AppShadowBoxes
{
  AppShadowBoxes._();

  static BoxShadow get searchBar => const BoxShadow(
    color: Color(0x0A000000),
    offset: Offset(0, 2),
    blurRadius: 9,
    );
  
}