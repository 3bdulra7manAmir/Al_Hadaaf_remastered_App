import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


abstract class AppRadiuses
{
  AppRadiuses._();

  static final only = BorderOnly._();
  static final circular = BorderCircular._();
}

class BorderOnly
{
  BorderOnly._();

}


class BorderCircular
{
  BorderCircular._();

  /// [circular: 2.r]
  BorderRadius get card => BorderRadius.circular(2.r);

}


abstract class AppBorderWidth
{
  AppBorderWidth._();

  /// [small: 2px]
  static double get xSmall => 2.0.w;
}